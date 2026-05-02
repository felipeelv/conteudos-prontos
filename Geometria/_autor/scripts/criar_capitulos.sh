#!/usr/bin/env bash
#
# criar_capitulos.sh — AUTOR especializado de Matemática 2 (Geometria).
# Gera capítulos finais a partir dos blueprints aprovados, com regras editoriais
# específicas (LaTeX CodeCogs-safe, figuras TikZ, boxes 1-frase,
# pass de precisão matemática, "Fórmulas do capítulo" só a partir do 8º ano).
#
# Uso:
#   Geometria/_autor/scripts/criar_capitulos.sh
#   Geometria/_autor/scripts/criar_capitulos.sh -a "1serie" -u "unidade-1"
#   Geometria/_autor/scripts/criar_capitulos.sh -a "9ano"   -u "unidade-3" --dry-run
#   Geometria/_autor/scripts/criar_capitulos.sh -a "8ano"   -u "unidade-2" --yes
#
# Disciplina coberta: Geometria.

set -uo pipefail

# --- Localização e libs ---
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AUTOR_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

source "$AUTOR_DIR/_shared/lib_common.sh"

# Estrutura autocontida:
#   Geometria/
#     _autor/
#     _blueprints/
#     <ano>/<unidade>/
DISCIPLINA_ROOT="$(cd "$AUTOR_DIR/.." && pwd)"
PROJECT_ROOT="$(cd "$DISCIPLINA_ROOT/.." && pwd)"

cd "$PROJECT_ROOT"

# --- Constantes específicas de Matemática 2 (Geometria) ---
DISCIPLINAS_VALIDAS=("Geometria")

BLUEPRINT_ROOT="${BLUEPRINT_ROOT:-$DISCIPLINA_ROOT/_blueprints}"
CONTEUDOS_ROOT="${CONTEUDOS_ROOT:-$DISCIPLINA_ROOT}"

# --- Parse args ---
DISCIPLINA="Geometria"
ANO=""
UNIDADE=""
EXECUTOR="claude"
DRY_RUN=0
FORCE=0
AUTO_CONFIRM=0

usage() {
  sed -n '3,15p' "$0" | sed 's/^# \{0,1\}//'
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    -d|--disciplina) shift; DISCIPLINA="$1"; shift ;;
    -a|--ano)        shift; ANO="$1"; shift ;;
    -u|--unidade)    shift; UNIDADE="$1"; shift ;;
    --executor)      shift; EXECUTOR="$1"; shift ;;
    --dry-run)       DRY_RUN=1; shift ;;
    --force)         FORCE=1; shift ;;
    -y|--yes)        AUTO_CONFIRM=1; shift ;;
    -h|--help)       usage; exit 0 ;;
    *) log_error "Argumento desconhecido: $1"; usage; exit 1 ;;
  esac
done

# --- Coletar disciplina (sempre listar) ---
echo -e "${C_BOLD}Disciplinas cobertas por este AUTOR (Matemática 2 — Geometria):${C_RESET}"
printf '  - %s\n' "${DISCIPLINAS_VALIDAS[@]}"
echo
if [[ $AUTO_CONFIRM -eq 1 ]]; then
  prompt_required DISCIPLINA "Disciplina"
else
  prompt_with_default DISCIPLINA "Disciplina"
fi

# Validar disciplina contra lista coberta
disciplina_ok=0
for d in "${DISCIPLINAS_VALIDAS[@]}"; do
  [[ "$d" == "$DISCIPLINA" ]] && { disciplina_ok=1; break; }
done
if [[ $disciplina_ok -eq 0 ]]; then
  log_error "'$DISCIPLINA' não é coberta por este AUTOR. Use uma de: ${DISCIPLINAS_VALIDAS[*]}"
  exit 1
fi

DISCIPLINA_DIR="$BLUEPRINT_ROOT"
[[ -d "$DISCIPLINA_DIR" ]] || { log_error "Disciplina sem blueprints: $DISCIPLINA_DIR"; exit 1; }

# --- Coletar ano ---
echo -e "${C_BOLD}Anos disponíveis em $DISCIPLINA:${C_RESET}"
list_dirs "$DISCIPLINA_DIR"
echo
if [[ $AUTO_CONFIRM -eq 1 ]]; then
  prompt_required ANO "Ano/Série"
else
  prompt_with_default ANO "Ano/Série"
fi

ANO_DIR="$DISCIPLINA_DIR/$ANO"
[[ -d "$ANO_DIR" ]] || { log_error "Ano não encontrado: $ANO_DIR"; exit 1; }

# --- Coletar unidade ---
echo -e "${C_BOLD}Unidades disponíveis em $DISCIPLINA/$ANO:${C_RESET}"
list_dirs "$ANO_DIR"
echo
if [[ $AUTO_CONFIRM -eq 1 ]]; then
  prompt_required UNIDADE "Unidade"
else
  prompt_with_default UNIDADE "Unidade"
fi

# --- Resolver match (suporte a prefixo) ---
declare -a MATCHES=()
if [[ -d "$ANO_DIR/$UNIDADE" ]]; then
  MATCHES=("$ANO_DIR/$UNIDADE")
else
  while IFS= read -r d; do MATCHES+=("$d"); done \
    < <(find "$ANO_DIR" -maxdepth 1 -mindepth 1 -type d -name "$UNIDADE*" | sort)
fi

if [[ ${#MATCHES[@]} -eq 0 ]]; then
  log_error "Unidade não encontrada: $DISCIPLINA/$ANO/$UNIDADE"
  exit 1
fi
if [[ ${#MATCHES[@]} -gt 1 ]]; then
  log_error "Mais de uma unidade corresponde a '$UNIDADE'. Especifique o nome completo."
  printf '  - %s\n' "${MATCHES[@]#$ANO_DIR/}"
  exit 1
fi

BLUEPRINT_DIR="${MATCHES[0]}"
UNIT_STEM="$(basename "$BLUEPRINT_DIR")"
OUTPUT_DIR="$CONTEUDOS_ROOT/$ANO/$UNIT_STEM"
UNIDADE_BLUEPRINT="$BLUEPRINT_DIR/blueprint_unidade.md"

[[ -f "$UNIDADE_BLUEPRINT" ]] || { log_error "Blueprint da unidade ausente: $UNIDADE_BLUEPRINT"; exit 1; }

# --- Determinar se este ano usa "Fórmulas do capítulo" (8º ano em diante) ---
# Anos que NÃO usam: 6ano, 7ano. Todos os outros (8ano, 9ano, 1serie, 2serie, 3serie) usam.
USA_FORMULAS_CAPITULO=1
case "$ANO" in
  6ano|7ano) USA_FORMULAS_CAPITULO=0 ;;
esac

# --- Resolver prompt-autor local ---
PROMPT_DIR_FULL="$AUTOR_DIR"
PROMPT_AUTOR="$AUTOR_DIR/prompt-autor.md"
[[ -f "$PROMPT_AUTOR" ]] || { log_error "prompt-autor.md ausente: $PROMPT_AUTOR"; exit 1; }

# --- Coletar referências do prompt (referencia-*.md + memoria-autor.md) ---
declare -a REFERENCIAS_PROMPT=()
while IFS= read -r f; do REFERENCIAS_PROMPT+=("$f"); done \
  < <(find "$PROMPT_DIR_FULL" -maxdepth 1 -type f \( -name 'referencia-*.md' -o -name 'memoria-autor.md' \) | sort)

# --- Coletar referências globais, quando existirem no repositório ---
declare -a REFERENCIAS_GLOBAIS=()
for root in "$PROJECT_ROOT/PLANEJAMENTO/Referencias" "$PROJECT_ROOT/referencias" "$PROJECT_ROOT/Referencias"; do
  [[ -d "$root" ]] || continue
  for ref in niveis_profundidade.md series.md niveis.md objetivos_aprendizagem.md; do
    [[ -f "$root/$ref" ]] && REFERENCIAS_GLOBAIS+=("$root/$ref")
  done
done

# --- Coletar blueprints de capítulo ---
declare -a CHAPTER_BLUEPRINTS=()
while IFS= read -r f; do CHAPTER_BLUEPRINTS+=("$f"); done \
  < <(find "$BLUEPRINT_DIR" -maxdepth 1 -type f -name 'blueprint_capitulo_*.md' | sort)

[[ ${#CHAPTER_BLUEPRINTS[@]} -gt 0 ]] || { log_error "Nenhum blueprint de capítulo em: $BLUEPRINT_DIR"; exit 1; }

mkdir -p "$AUTOR_DIR/logs"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOG_SAFE="$(slugify "$DISCIPLINA-$ANO-$UNIT_STEM")"
LOG_FILE="$AUTOR_DIR/logs/${TIMESTAMP}_${LOG_SAFE}.log"

# --- Resumo do plano ---
echo -e "${C_BOLD}Autoria de Matemática 2 (Geometria)${C_RESET}"
echo "  Disciplina:       $DISCIPLINA"
echo "  Ano/Série:        $ANO"
echo "  Unidade:          $UNIT_STEM"
echo "  Blueprints:       $BLUEPRINT_DIR"
echo "  Prompt-autor:     $PROMPT_AUTOR"
if [[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]]; then
  echo "  Refs do prompt:   ${#REFERENCIAS_PROMPT[@]} arquivo(s)"
  for r in "${REFERENCIAS_PROMPT[@]}"; do echo "    - $(basename "$r")"; done
fi
echo "  Refs globais:     ${#REFERENCIAS_GLOBAIS[@]} arquivo(s)"
echo "  Saída:            $OUTPUT_DIR"
echo "  Capítulos:        ${#CHAPTER_BLUEPRINTS[@]}"
echo "  Executor:         $EXECUTOR"
echo "  Fórmulas do cap.: $([ $USA_FORMULAS_CAPITULO -eq 1 ] && echo 'SIM (8º ano em diante)' || echo 'NÃO (6º/7º ano)')"
echo "  CLAUDE.md específico: $AUTOR_DIR/CLAUDE.md"
echo

# --- Dry-run sai aqui ---
if [[ $DRY_RUN -eq 1 ]]; then
  echo -e "${C_BLUE}🔎 dry-run: nada foi executado.${C_RESET}"
  echo "  Capítulos a processar:"
  printf '    - %s\n' "${CHAPTER_BLUEPRINTS[@]#$BLUEPRINT_DIR/}"
  exit 0
fi

# --- Validação executor ---
command -v "$EXECUTOR" &>/dev/null || { log_error "executor '$EXECUTOR' não encontrado no PATH."; exit 1; }

# --- Criar diretório de saída agora (após o dry-run guard) ---
mkdir -p "$OUTPUT_DIR"

# --- Verificar se já existe output (evita reprocessar) ---
if [[ $FORCE -eq 0 ]]; then
  EXISTING=$(find "$OUTPUT_DIR" -maxdepth 1 -name 'capitulo_*.md' 2>/dev/null | wc -l | tr -d ' ')
  if [[ "$EXISTING" -gt 0 ]]; then
    log_warn "Já existem $EXISTING capítulo(s) em $OUTPUT_DIR. Use --force para reprocessar."
    exit 0
  fi
fi

# --- Confirmação interativa final ---
confirm_run "Esta operação chama '$EXECUTOR' e gera ${#CHAPTER_BLUEPRINTS[@]} capítulo(s) de $DISCIPLINA. Tem custo de API." "$AUTO_CONFIRM" || exit 0

# --- Montar prompt para o executor ---
REFS_PROMPT_LIST=""
[[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]] && REFS_PROMPT_LIST="Referencias adicionais especificas de Matematica 2 (leia antes de escrever):
$(printf '   - %s\n' "${REFERENCIAS_PROMPT[@]}")
"

REFS_GLOBAIS_LIST=""
[[ ${#REFERENCIAS_GLOBAIS[@]} -gt 0 ]] && REFS_GLOBAIS_LIST="Referencias compartilhadas do pipeline:
$(printf '   - %s\n' "${REFERENCIAS_GLOBAIS[@]}")
"

# Texto condicional do bloco "Fórmulas do capítulo"
if [[ $USA_FORMULAS_CAPITULO -eq 1 ]]; then
  FORMULAS_BLOCK_TEXT="6. Formulas do capitulo (OBRIGATORIO neste ano: $ANO)
   - Lista das formulas apresentadas no capitulo, com nome e elementos."
else
  FORMULAS_BLOCK_TEXT="6. Formulas do capitulo (OMITIR neste ano: $ANO — apenas 8o ano em diante)."
fi

PROMPT="Voce vai escrever todos os capitulos finais de uma unidade didatica de $DISCIPLINA (Matematica 2) a partir dos blueprints aprovados.

CONTEXTO DO PIPELINE
====================
Raiz do projeto: $PROJECT_ROOT
Disciplina:      $DISCIPLINA
Ano/Serie:       $ANO
Unidade:         $UNIT_STEM

ARQUIVOS DE LEITURA OBRIGATORIA
================================

1. Manual editorial de Matematica 2 (estrutura fixa, estilo, regras de LaTeX e figuras):
   $PROMPT_AUTOR

2. CLAUDE.md especifico deste AUTOR (regras invioláveis e validacoes):
   $AUTOR_DIR/CLAUDE.md

3. Referencia local para figuras em TikZ:
   $AUTOR_DIR/referencias/tikz-geometria.md

4. Clone local do PGF/TikZ oficial (consultar quando precisar de sintaxe precisa):
   $AUTOR_DIR/referencias/pgf

5. Blueprint da unidade (lei geral aplicavel a todos os capitulos):
   $UNIDADE_BLUEPRINT

6. Blueprints de capitulo a processar (um arquivo de saida por blueprint, na ordem listada):
$(printf '   - %s\n' "${CHAPTER_BLUEPRINTS[@]}")

${REFS_PROMPT_LIST}${REFS_GLOBAIS_LIST}
DIRETORIO OBRIGATORIO DE SAIDA
==============================
$OUTPUT_DIR

REGRAS INVIOLAVEIS DE LATEX (CRITICO — renderizador AutoLaTeX/CodeCogs)
========================================================================
Geometria depende de formulas em LaTeX, delimitadas por \$\$ ... \$\$. Restricoes obrigatorias:
- NUNCA usar \\text{} dentro de \$\$ ... \$\$. Sempre substituir por \\mathrm{}.
- NUNCA usar caracteres acentuados (a, a, e, o, e, c, etc.) dentro de \$\$ ... \$\$. Apenas
  ASCII (a-z, A-Z, 0-9) e comandos LaTeX. Rotulos com acento ficam FORA do bloco.
- NUNCA usar \\; ou \\, dentro de \$\$ ... \$\$. Renderizam como pontuacao literal no CodeCogs.
- NUNCA usar o simbolo de grau literal (codepoint U+00B0) dentro de \$\$ ... \$\$. Usar ^{\\circ}.
- Unidades sempre coladas ao numero via \\mathrm{}. Exemplo: \$\$A = 24\\mathrm{cm}^2\$\$.
- Cada etapa do calculo em linha separada — UMA UNICA OPERACAO por linha.

REGRAS INVIOLAVEIS DE FIGURAS EM TIKZ
======================================
- Geometria depende de visualizacao precisa. Inserir marcador [TikZ N] (numeracao sequencial por
  capitulo) no ponto exato onde a figura sera renderizada.
- Descrever em prosa os elementos essenciais ANTES do marcador (lados, vertices, angulos,
  posicao relativa).
- O texto deve funcionar mesmo sem a figura — indicar onde ela complementa, nao substituir
  a explicacao pela renderizacao.
- Para cada capitulo, gerar tambem um arquivo figuras_capXX_<slug>.tex no mesmo diretorio
  do capitulo, contendo todas as figuras TikZ referenciadas por [TikZ N].
- Cada figura TikZ deve ser um documento standalone compilavel:
  \\documentclass[tikz,border=3mm]{standalone}, \\usepackage{tikz},
  \\begin{document}, \\begin{tikzpicture} ... \\end{tikzpicture}, \\end{document}.
- Usar \\coordinate para pontos, \\node para rotulos, \\draw para lados/arcos/retas e
  \\usetikzlibrary{angles,quotes,calc,intersections} quando houver angulos, ponto medio,
  projecoes, construcoes auxiliares ou intersecoes.
- Usar pic {angle = A--B--C} e pic {right angle = A--B--C} para marcacoes precisas.
- Nao usar imagens externas, SVG, capturas, links de busca ou descricoes soltas como
  substituto da figura.

REGRAS INVIOLAVEIS DE ESTRUTURA
================================
- NUNCA criar secao '## Sua Parte' ou similar com exercicios.
- NUNCA abrir a introducao com 'Neste capitulo vamos...' ou listar termos.
- NUNCA usar mais de 3 frases na introducao narrativa (Cena → Tensao → Ponte).
- NUNCA colocar dois boxes (>) seguidos no mesmo subtopico.
- NUNCA usar emoji em heading '##' ou '###' (boxes com emoji sao em blockquote >, nao headings).
- NUNCA colocar '💬 Para Conversar' fora do bloco 'E A BIBLIA NISSO?'.
- NUNCA usar rotulo introdutorio como 'Dois principios:', 'Tres principios:' no bullet de
  aplicacao direta de 'E A BIBLIA NISSO?'.

REGRAS ESTRUTURAIS
==================
- Cada topico principal '##' tem 1 frase de abertura direta (suprimivel) + subtopicos '###'
  com perguntas orientadoras.
- Cada subtopico tem: prosa curta → frase de transicao → lista com marcadores → exemplo
  pratico quando couber. Nunca iniciar lista sem frase de transicao.
- MAXIMO 1 box por subtopico ou secao. Boxes em blockquote (>) com 1 FRASE UNICA, com
  quebra de linha entre titulo (dois espacos no final) e conteudo.
- Tipos de box disponiveis: 💭 Pense um pouco, ⏸️ Pare e Pense, 💡 Voce sabia,
  🏗️ Geometria ao Redor, 📏 Medidas Impressionantes, 📐 Fazendo as Contas, 👁️ Observe.
- Definicoes em no maximo 1 frase curta (se precisar de mais, usar bullet).
- Palavras-chave e termos tecnicos em negrito quando introduzidos.
- Medidas sempre acompanhadas de unidade (cm, m, m^2, m^3).
- 'Simplificando' tem MAXIMO 2 frases densas (1 paragrafo, NAO bullets).
- 'Para nao esquecer' tem 3 a 5 bullets no formato 'Termo: explicacao breve'.
- 'E A BIBLIA NISSO?' tem ESTRUTURA OBRIGATORIA de 4 elementos:
  (1) versiculo em blockquote italico + referencia
  (2) paragrafo de conexao (2-3 frases, parte do conceito geometrico ao principio biblico)
  (3) 1 bullet com '**Titulo curto.**' + analogia + paralelo biblico (max 2 frases)
  (4) '> 💬 **Para Conversar:**' com 1 pergunta reflexiva

ESTRUTURA FIXA DOS BLOCOS POS-CONTEUDO (NESTA ORDEM EXATA)
============================================================
1. Tópicos numerados (## 1, ## 2, ## 3...) com subtopicos (### N.M)
2. NA VIDA REAL                  (3-4 frases: situacao concreta → conceito em acao → por que importa)
3. E A BIBLIA NISSO?             (versiculo + paragrafo + 1 bullet + Para Conversar)
4. Simplificando                 (1 paragrafo, max 2 frases densas)
5. Para nao esquecer             (3-5 bullets, formato 'Termo: explicacao breve')
$FORMULAS_BLOCK_TEXT

ADAPTACAO POR SERIE
====================
- 6o-7o ano EF II: conceitos visuais e concretos, formulas raras com exemplo imediato.
- 8o-9o ano EF II: propriedades com demonstracao intuitiva, congruencia, semelhanca, Pitagoras.
- 1a-2a serie EM: geometria plana e espacial com formalismo, trigonometria, geometria analitica.
- 3a serie EM: sintese, articulacao plana × espacial × analitica, vestibular/ENEM.

PASS DE PRECISAO MATEMATICA (OBRIGATORIO ANTES DE SALVAR)
==========================================================
Apos escrever, varrer cacando erros conceituais comuns em geometria:
- Centros do triangulo: incentro (bissetrizes), circuncentro (mediatrizes), baricentro
  (medianas), ortocentro (alturas). Trocar um pelo outro e o erro mais frequente.
- Casos de congruencia: LAL, ALA, LLL, LAAo. Verificar se cada exemplo aplica o caso correto.
- Casos de semelhanca: AA, LAL, LLL.
- Relacoes metricas no triangulo retangulo: altura, projecoes, hipotenusa.
- Formulas de area e volume: conferir se a formula bate com a figura/solido descrito.

HIERARQUIA DE AUTORIDADE
========================
Quando o blueprint pedir conteudo que nao cabe na estrutura padrao:
- Estrutura: segue o prompt-autor (2-4 topicos numerados + 4-5 blocos pos-conteudo).
- Conteudo factual (matematico, fato historico, dado): EMBUTE na introducao, em
  '> 💡 Voce sabia?' ou no paragrafo de conexao de 'E A BIBLIA NISSO?'.
- Exercicios pedidos pelo blueprint: DESCARTADOS desta saida (ficam em caderno de atividades).
- Conexao biblica explicita: SEMPRE em 'E A BIBLIA NISSO?' — nunca em outros blocos.

REGRAS DE EXECUCAO
==================
1. Leia primeiro o manual editorial e o CLAUDE.md especifico. Depois o blueprint da unidade.
2. Para cada blueprint_capitulo_NN_<slug>.md, gere exatamente um arquivo capitulo_NN_<slug>.md.
3. Para cada capitulo, gere tambem exatamente um arquivo figuras_capNN_<slug>.tex com as figuras TikZ.
4. Salve todos os arquivos exclusivamente em: $OUTPUT_DIR
5. Nao altere os blueprints nem os arquivos de prompt/referencia.
6. Conteudo final em portugues brasileiro, em Markdown valido.
7. Apos gerar cada capitulo, valide contra o checklist do CLAUDE.md especifico (especialmente
   as REGRAS INVIOLAVEIS DE LATEX e o PASS DE PRECISAO MATEMATICA) ANTES de salvar.
8. Se algum criterio falhar, corrija ANTES de salvar.
"

START=$(date +%s)
echo -e "${C_DIM}log: $LOG_FILE${C_RESET}"

# Claude CLI: --print (modo nao-interativo) + --dangerously-skip-permissions
# Prompt enviado via stdin (mais robusto que argumento para textos longos).
# Codex: usa subcomando exec.
EXEC_EXIT=0
if [[ "$EXECUTOR" == "claude" ]]; then
  printf '%s' "$PROMPT" | "$EXECUTOR" --print --dangerously-skip-permissions > "$LOG_FILE" 2>&1 || EXEC_EXIT=$?
else
  "$EXECUTOR" exec "$PROMPT" > "$LOG_FILE" 2>&1 || EXEC_EXIT=$?
fi

if [[ $EXEC_EXIT -eq 0 ]]; then
  END=$(date +%s); DURATION=$((END - START))
  COUNT=$(find "$OUTPUT_DIR" -maxdepth 1 -name 'capitulo_*.md' | wc -l | tr -d ' ')
  if [[ "$COUNT" -eq 0 ]]; then
    log_error "executor terminou sem erro, mas gerou 0 capitulos em $OUTPUT_DIR — ver $LOG_FILE"
    exit 1
  fi

  # --- Validações pós-geração específicas de Matemática 2 (Geometria) ---
  echo
  log_info "Validando capítulos gerados contra regras de Matemática 2 (Geometria)..."
  VIOLATIONS=0
  for cap in "$OUTPUT_DIR"/capitulo_*.md; do
    cap_name=$(basename "$cap")

    # 1. Sem ## Sua Parte
    if grep -qiE '^##[[:space:]]+(🤝[[:space:]]+)?Sua Parte' "$cap"; then
      log_error "$cap_name: tem heading 'Sua Parte' (proibido em Matemática 2)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 2. Sem emoji em heading ## ou ### (boxes com emoji são em blockquote >, não headings)
    if grep -qE '^##[^#].*[🤝📚⏰💭✏️🤔🌟💡⚠️📌✅⏸️🔍🏛️🏗️📏📐👁️]' "$cap"; then
      log_error "$cap_name: heading ## ou ### tem emoji (proibido — boxes com emoji vão em blockquote >)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 3. Headings/blocos pós-conteúdo presentes
    # Aceita tanto '## NA VIDA REAL' (forma normal, conforme §5 do prompt) quanto bare 'NA VIDA REAL'
    # (forma do exemplo §3) — o que importa é que o bloco apareça como linha própria.
    declare -a REQUIRED_HEADINGS=(
      "^(#{1,3}[[:space:]]+)?NA VIDA REAL[[:space:]]*$"
      "^(#{1,3}[[:space:]]+)?E A BÍBLIA NISSO\\?[[:space:]]*$"
      "^(#{1,3}[[:space:]]+)?Simplificando[[:space:]]*$"
      "^(#{1,3}[[:space:]]+)?Para não esquecer[[:space:]]*$"
    )
    for required in "${REQUIRED_HEADINGS[@]}"; do
      if ! grep -qE "$required" "$cap"; then
        log_error "$cap_name: heading obrigatório ausente: ${required}"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    done

    # 3b. "Fórmulas do capítulo" obrigatório a partir do 8º ano
    if [[ $USA_FORMULAS_CAPITULO -eq 1 ]]; then
      if ! grep -qE "^(#{1,3}[[:space:]]+)?Fórmulas do capítulo[[:space:]]*$" "$cap"; then
        log_error "$cap_name: ano $ANO exige bloco 'Fórmulas do capítulo' (ausente)"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    fi

    # 4. Para não esquecer = 3 a 5 bullets
    BULLETS=$(awk '
      /^(#{1,3}[[:space:]]+)?Para não esquecer[[:space:]]*$/ { flag=1; next }
      /^(#{1,3}[[:space:]]+)?Fórmulas do capítulo[[:space:]]*$/ { flag=0 }
      /^---[[:space:]]*$/ { if (flag) flag=0 }
      /^#{1,3}[[:space:]]/ { flag=0 }
      flag && /^- / { print }
    ' "$cap" | wc -l | tr -d ' ')
    if [[ "$BULLETS" -lt 3 || "$BULLETS" -gt 5 ]]; then
      log_error "$cap_name: 'Para não esquecer' tem $BULLETS bullets (esperado 3 a 5)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 5. E A BÍBLIA NISSO? contém Para Conversar
    BIBLIA_BLOCK=$(awk '
      /^(#{1,3}[[:space:]]+)?E A BÍBLIA NISSO\?[[:space:]]*$/ { flag=1; next }
      /^(#{1,3}[[:space:]]+)?Simplificando[[:space:]]*$/ { flag=0 }
      /^---[[:space:]]*$/ { if (flag) flag=0 }
      /^#{1,3}[[:space:]]/ { flag=0 }
      flag { print }
    ' "$cap")
    if ! echo "$BIBLIA_BLOCK" | grep -qE '^>[[:space:]]+💬[[:space:]]+\*\*Para Conversar:\*\*'; then
      log_error "$cap_name: 'E A BÍBLIA NISSO?' não contém '> 💬 **Para Conversar:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 6. E A BÍBLIA NISSO? contém versículo em blockquote itálico (heurística: > * ou > *")
    if ! echo "$BIBLIA_BLOCK" | grep -qE '^>[[:space:]]+\*'; then
      log_error "$cap_name: 'E A BÍBLIA NISSO?' não contém versículo em blockquote itálico (> *...)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 7. LaTeX limpo dentro de cada bloco $$ ... $$
    LATEX_VIOL=$(awk '
      BEGIN { in_block=0; block=""; block_start=0; idx=0 }
      {
        line = $0
        while (length(line) > 0) {
          if (in_block == 0) {
            i = index(line, "$$")
            if (i == 0) { line = ""; next_iter = 1; break }
            line = substr(line, i+2)
            in_block = 1
            block = ""
            block_start = NR
          } else {
            i = index(line, "$$")
            if (i == 0) {
              block = block line "\n"
              line = ""
            } else {
              block = block substr(line, 1, i-1)
              line = substr(line, i+2)
              in_block = 0
              idx++
              # Verificar regras
              if (block ~ /\\text\{/) print "L" block_start ": bloco $$#" idx " usa \\text{} (proibido — usar \\mathrm{})"
              if (block ~ /\\;/ || block ~ /\\,/) print "L" block_start ": bloco $$#" idx " usa \\; ou \\, (proibido)"
              if (block ~ /°/) print "L" block_start ": bloco $$#" idx " usa ° literal (usar ^{\\circ})"
              if (block ~ /[áàâãéêíóôõúçÁÀÂÃÉÊÍÓÔÕÚÇ]/) print "L" block_start ": bloco $$#" idx " contém caractere acentuado (proibido em CodeCogs)"
            }
          }
        }
      }
    ' "$cap")
    if [[ -n "$LATEX_VIOL" ]]; then
      while IFS= read -r line; do
        log_error "$cap_name: $line"
        VIOLATIONS=$((VIOLATIONS + 1))
      done <<< "$LATEX_VIOL"
    fi

    # 8. Marcador [TikZ N] em uso (heurística — só warn, não falha)
    if ! grep -qE '\[TikZ [0-9]+\]' "$cap"; then
      log_warn "$cap_name: nenhum marcador [TikZ N] encontrado — confira se o capítulo realmente dispensa figuras"
    else
      fig_name="$(basename "$cap" .md)"
      fig_name="${fig_name#capitulo_}"
      fig_file="$OUTPUT_DIR/figuras_cap${fig_name}.tex"
      if [[ ! -f "$fig_file" ]]; then
        log_error "$cap_name: usa marcador [TikZ N], mas não existe arquivo de figuras esperado: $(basename "$fig_file")"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    fi

    # 9. Sem dois boxes (>) consecutivos no mesmo subtópico
    CONSECUTIVE_BOXES=$(awk '
      /^## / || /^### / { in_section=1; last_was_box_block=0; in_box=0; next }
      /^>/ {
        if (!in_box) {
          if (last_was_box_block && in_section) { print NR; }
          in_box=1
        }
        next
      }
      /^[[:space:]]*$/ {
        if (in_box) { last_was_box_block=1; in_box=0 }
        next
      }
      { in_box=0; last_was_box_block=0 }
    ' "$cap")
    if [[ -n "$CONSECUTIVE_BOXES" ]]; then
      log_error "$cap_name: dois boxes (>) consecutivos detectados próximo à(s) linha(s): $CONSECUTIVE_BOXES"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  done

  if [[ $VIOLATIONS -gt 0 ]]; then
    log_error "$VIOLATIONS violações de regras de Matemática 2 detectadas. Revise os capítulos antes de commitar."
    exit 1
  fi

  auto_publish_output "$OUTPUT_DIR" "$DISCIPLINA" "$ANO" "$UNIT_STEM"

  log_ok "$COUNT capitulo(s) em $OUTPUT_DIR ${C_DIM}(${DURATION}s)${C_RESET} — todas as validações passaram."
else
  END=$(date +%s); DURATION=$((END - START))
  log_error "executor falhou (exit ${EXEC_EXIT:-?}, ${DURATION}s) — ver $LOG_FILE"
  exit "${EXEC_EXIT:-1}"
fi
