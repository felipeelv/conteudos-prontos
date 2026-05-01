#!/usr/bin/env bash
#
# criar_capitulos.sh — AUTOR especializado de Química.
# Gera capítulos finais a partir dos blueprints aprovados, com regras editoriais
# específicas de Química (LaTeX CodeCogs-compatível, triângulo de Johnstone como
# princípio editorial, sem "Sua Parte", sem rótulo numerado em exemplo resolvido).
#
# Uso:
#   ./scripts/criar_capitulos.sh                                              # interativo
#   ./scripts/criar_capitulos.sh -d "Quimica" -a "1serie" -u "unidade-1"
#   ./scripts/criar_capitulos.sh -d "Quimica" -a "2serie" -u "unidade-3" --dry-run
#   ./scripts/criar_capitulos.sh -d "Quimica" -a "3serie" -u "unidade-2" --yes
#
# Disciplina coberta: Quimica.

set -uo pipefail

# --- Localização e libs ---
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AUTOR_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

source "$AUTOR_DIR/_shared/lib_common.sh"

# Descobre a raiz do projeto subindo diretórios até encontrar PRODUCAO/Blueprint.
# Isso evita dependência de uma pasta irmã compartilhada ou de um nome fixo para o agrupador.
PROJECT_ROOT="$AUTOR_DIR"
while [[ "$PROJECT_ROOT" != "/" && ! -d "$PROJECT_ROOT/PRODUCAO/Blueprint" ]]; do
  PROJECT_ROOT="$(dirname "$PROJECT_ROOT")"
done
[[ -d "$PROJECT_ROOT/PRODUCAO/Blueprint" ]] || { log_error "Raiz do projeto não encontrada a partir de: $AUTOR_DIR"; exit 1; }

cd "$PROJECT_ROOT"

# --- Constantes específicas de Química ---
DISCIPLINAS_VALIDAS=("Quimica")
PROMPT_DIR_NAME="Quimica"  # 1:1 com Prompts Criador de Conteudo/Quimica/

BLUEPRINT_ROOT="${BLUEPRINT_ROOT:-$PROJECT_ROOT/PRODUCAO/Blueprint/blueprints}"
[[ -d "$BLUEPRINT_ROOT" ]] || BLUEPRINT_ROOT="$PROJECT_ROOT/PRODUCAO/Blueprint"
PROMPTS_ROOT="$PROJECT_ROOT/PRODUCAO/Prompts Criador de Conteudo"
REFERENCIAS_ROOT="$PROJECT_ROOT/PLANEJAMENTO/Referencias"
CONTEUDOS_ROOT="$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS"

# --- Parse args ---
DISCIPLINA="Quimica"
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
echo -e "${C_BOLD}Disciplinas cobertas por este AUTOR (Química):${C_RESET}"
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

DISCIPLINA_DIR="$BLUEPRINT_ROOT/$DISCIPLINA"
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
OUTPUT_DIR="$CONTEUDOS_ROOT/$DISCIPLINA/$ANO/$UNIT_STEM"
UNIDADE_BLUEPRINT="$BLUEPRINT_DIR/blueprint_unidade.md"

[[ -f "$UNIDADE_BLUEPRINT" ]] || { log_error "Blueprint da unidade ausente: $UNIDADE_BLUEPRINT"; exit 1; }

# --- Resolver prompt-autor (Química = 1:1, sem branching) ---
PROMPT_DIR_FULL="$PROMPTS_ROOT/$PROMPT_DIR_NAME"
PROMPT_AUTOR="$PROMPT_DIR_FULL/prompt-autor.md"
[[ -f "$PROMPT_AUTOR" ]] || { log_error "prompt-autor.md ausente: $PROMPT_AUTOR"; exit 1; }

# --- Coletar memória do autor (memoria-autor.md) ---
MEMORIA_AUTOR=""
if [[ -f "$PROMPT_DIR_FULL/memoria-autor.md" ]]; then
  MEMORIA_AUTOR="$PROMPT_DIR_FULL/memoria-autor.md"
fi

# --- Coletar referências do prompt (referencia-*.md) ---
declare -a REFERENCIAS_PROMPT=()
while IFS= read -r f; do REFERENCIAS_PROMPT+=("$f"); done \
  < <(find "$PROMPT_DIR_FULL" -maxdepth 1 -type f -name 'referencia-*.md' | sort)

# --- Coletar referências globais ---
declare -a REFERENCIAS_GLOBAIS=()
for ref in niveis_profundidade.md series.md niveis.md objetivos_aprendizagem.md; do
  [[ -f "$REFERENCIAS_ROOT/$ref" ]] && REFERENCIAS_GLOBAIS+=("$REFERENCIAS_ROOT/$ref")
done

# --- Coletar blueprints de capítulo ---
declare -a CHAPTER_BLUEPRINTS=()
while IFS= read -r f; do CHAPTER_BLUEPRINTS+=("$f"); done \
  < <(find "$BLUEPRINT_DIR" -maxdepth 1 -type f -name 'blueprint_capitulo_*.md' | sort)

[[ ${#CHAPTER_BLUEPRINTS[@]} -gt 0 ]] || { log_error "Nenhum blueprint de capítulo em: $BLUEPRINT_DIR"; exit 1; }

mkdir -p "$OUTPUT_DIR" "$AUTOR_DIR/logs"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOG_SAFE="$(slugify "$DISCIPLINA-$ANO-$UNIT_STEM")"
LOG_FILE="$AUTOR_DIR/logs/${TIMESTAMP}_${LOG_SAFE}.log"

# --- Resumo do plano ---
echo -e "${C_BOLD}Autoria de Química${C_RESET}"
echo "  Disciplina:       $DISCIPLINA"
echo "  Ano/Série:        $ANO"
echo "  Unidade:          $UNIT_STEM"
echo "  Blueprints:       $BLUEPRINT_DIR"
echo "  Prompt-autor:     $PROMPT_AUTOR"
if [[ -n "$MEMORIA_AUTOR" ]]; then
  echo "  Memória do autor: $(basename "$MEMORIA_AUTOR")"
fi
if [[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]]; then
  echo "  Refs do prompt:   ${#REFERENCIAS_PROMPT[@]} arquivo(s)"
  for r in "${REFERENCIAS_PROMPT[@]}"; do echo "    - $(basename "$r")"; done
fi
echo "  Refs globais:     ${#REFERENCIAS_GLOBAIS[@]} arquivo(s)"
echo "  Saída:            $OUTPUT_DIR"
echo "  Capítulos:        ${#CHAPTER_BLUEPRINTS[@]}"
echo "  Executor:         $EXECUTOR"
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

# --- Verificar se já existe output (evita reprocessar) ---
if [[ $FORCE -eq 0 ]]; then
  EXISTING=$(find "$OUTPUT_DIR" -maxdepth 1 -name 'capitulo_*.md' 2>/dev/null | wc -l | tr -d ' ')
  if [[ "$EXISTING" -gt 0 ]]; then
    log_warn "Já existem $EXISTING capítulo(s) em $OUTPUT_DIR. Use --force para reprocessar."
    exit 0
  fi
fi

# --- Confirmação interativa final ---
confirm_run "Esta operação chama '$EXECUTOR' e gera ${#CHAPTER_BLUEPRINTS[@]} capítulo(s) de Química. Tem custo de API." "$AUTO_CONFIRM" || exit 0

# --- Montar prompt para o executor ---
MEMORIA_BLOCK=""
[[ -n "$MEMORIA_AUTOR" ]] && MEMORIA_BLOCK="MEMORIA DO AUTOR (contexto historico do projeto Quimica, leia ANTES de escrever):
   $MEMORIA_AUTOR
"

REFS_PROMPT_LIST=""
[[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]] && REFS_PROMPT_LIST="Referencias adicionais especificas de Quimica (leia antes de escrever):
$(printf '   - %s\n' "${REFERENCIAS_PROMPT[@]}")
"

REFS_GLOBAIS_LIST=""
[[ ${#REFERENCIAS_GLOBAIS[@]} -gt 0 ]] && REFS_GLOBAIS_LIST="Referencias compartilhadas do pipeline:
$(printf '   - %s\n' "${REFERENCIAS_GLOBAIS[@]}")
"

PROMPT="Voce vai escrever todos os capitulos finais de uma unidade didatica de QUIMICA a partir dos blueprints aprovados.

CONTEXTO DO PIPELINE
====================
Raiz do projeto: $PROJECT_ROOT
Disciplina:      $DISCIPLINA
Ano/Serie:       $ANO
Unidade:         $UNIT_STEM

ARQUIVOS DE LEITURA OBRIGATORIA
================================

1. Manual editorial de Quimica (estrutura fixa, estilo, regras LaTeX, boxes):
   $PROMPT_AUTOR

2. CLAUDE.md especifico deste AUTOR de Quimica (regras invioláveis e validacoes):
   $AUTOR_DIR/CLAUDE.md

3. Blueprint da unidade (lei geral aplicavel a todos os capitulos):
   $UNIDADE_BLUEPRINT

4. Blueprints de capitulo a processar (um arquivo de saida por blueprint, na ordem listada):
$(printf '   - %s\n' "${CHAPTER_BLUEPRINTS[@]}")

${MEMORIA_BLOCK}${REFS_PROMPT_LIST}${REFS_GLOBAIS_LIST}
DIRETORIO OBRIGATORIO DE SAIDA
==============================
$OUTPUT_DIR

REGRAS INVIOLAVEIS DE QUIMICA (do CLAUDE.md)
==============================================
- NUNCA criar secao '## Sua Parte' ou bloco de exercicios pos-conteudo.
- NUNCA usar '\\\\text{}' dentro de '\$\$...\$\$' — sempre '\\\\mathrm{}' (incompatibilidade com CodeCogs).
- NUNCA usar caracteres acentuados dentro de '\$\$...\$\$'.
- NUNCA usar '\\\\;' ou '\\\\,' dentro de '\$\$...\$\$' — renderizam como pontuacao literal.
- NUNCA rotular exemplos resolvidos como '📝 **Exemplo resolvido N:**' (rotulo numerado abolido).
  Use o NOME da substancia/situacao em negrito como cabecalho.
- NUNCA colocar bloco 'Atencao' em negrito no corpo do texto — sempre converter para box '> ⚠️ **Atenção:**'.
- NUNCA colocar emoji em heading '##' ou '###' (apenas em boxes e em '💬 **Para Conversar:**').
- NUNCA abrir introducao com 'Neste capitulo vamos…' ou listar conteudos das secoes.
- NUNCA mais de 2 boxes por secao principal '## N.'.
- NUNCA incluir boxes de experimento, atividade pratica ou procedimento laboratorial.
- NUNCA usar frases-preparacao ('As principais caracteristicas sao:', 'A seguir veremos…').

TRIANGULO DE JOHNSTONE (PRINCIPIO EDITORIAL)
============================================
A escrita opera implicitamente nos tres niveis: macroscopico (fenomeno observavel,
exemplos cotidianos), microscopico (modelo atomico/molecular subjacente) e simbolico
(formulas em LaTeX e Unicode no texto corrido). NAO e validado mecanicamente — e
responsabilidade autoral manter os tres niveis equilibrados ao longo do capitulo.
Use boxes '> 🌍 **Fenômeno:**' para ancorar o macroscopico, formulas '\$\$...\$\$' e
Unicode (H₂O, NaCl, Cu²⁺) para o simbolico, e prosa explicativa para o microscopico.

REGRAS ESTRUTURAIS
==================
- Pergunta-problema em '***italico-negrito***' ligada ao cotidiano abre cada capitulo.
- Texto introdutorio: 2-3 frases narrativas no maximo, sem antecipar conteudo das secoes.
- Abertura de secao '## N.': 1 frase direta, sem desenvolvimento.
- Subtopico '### N.M': definicao em 1 frase curta; max. 2 frases seguidas antes de bullets/tabela.
- Boxes em blockquote (>) com QUEBRA DE LINHA INTERNA OBRIGATORIA (titulo na 1a linha com 2
  espacos ao final, conteudo na 2a linha) e 1 frase unica. Tipos:
    > 💡 **Você sabia?**       — curiosidade quimica
    > 🔎 **Curiosidade:**      — fenomeno, aplicacao industrial
    > 🌍 **Fenômeno:**         — fenomeno do cotidiano/natureza
    > 💭 **Pense um pouco:**   — pergunta curta de reflexao
    > ⏸️ **Pare e Pense:**    — pergunta sobre causa/efeito/aplicacao
    > ⚠️ **Atenção:**          — ponto contraintuitivo ou erro comum
- Tabelas: usar sempre que houver dados comparativos. Maximo 5 colunas.
- Formulas em LaTeX entre '\$\$...\$\$', sem '\\\\text{}', sem acentos, sem '\\\\;'/'\\\\,'.
  Virgula decimal '{,}'. Unidades em '\\\\mathrm{}'. Setas: '\\\\rightarrow', '\\\\rightleftharpoons'.
- Formulas quimicas em texto corrido podem usar Unicode (H₂O, NaCl, CO₂) — apenas FORA de '\$\$...\$\$'.

ESTRUTURA FIXA DOS BLOCOS POS-CONTEUDO (NESTA ORDEM EXATA)
============================================================
1. ## X. Aplicações Práticas         (lista de 5-6 itens, cada um '- **Aplicacao:** descricao')
2. ## O que a Bíblia diz sobre [assunto]
   - 1-2 frases conectando o conteudo cientifico ao tema biblico
   - Versiculo em blockquote: '> *\"texto\"*' + '> — **Referencia X:Y**'
   - 1 paragrafo conectando ciencia e Biblia
   - '- **Na prática:** [acao comportamental concreta]'
   - '💬 **Para Conversar:** [pergunta reflexiva aberta]'
3. ## Síntese do Capítulo            (tabela com colunas Conceito | Ideia Central, 4-8 linhas)

ADAPTACAO POR SERIE
====================
- 6º-7º ano EF II: linguagem simples, conceitos macroscopicos, sem abstracoes atomicas complexas.
- 8º-9º ano EF II: modelos atomicos introdutorios, reacoes, formulas e equacoes simples.
- 1ª serie EM: estrutura atomica, tabela periodica, ligacoes, funcoes inorganicas. Tom direto e denso.
- 2ª serie EM: fisico-quimica (solucoes, termoquimica, cinetica, equilibrio). Calculos estequiometricos.
- 3ª serie EM: organica, polimeros, bioquimica, ambiental. Sintese de conceitos, ENEM.

HIERARQUIA DE AUTORIDADE
========================
Quando o blueprint pedir conteudo que nao cabe na estrutura padrao:
- Estrutura: segue o prompt-autor (introducao + N secoes numeradas + Aplicacoes + Biblia + Sintese).
- Conteudo factual (descobridor, fato historico, dado experimental): EMBUTE como exemplo dentro
  do subtopico apropriado, ou como box '> 💡 **Você sabia?**'.
- Exercicios pedidos pelo blueprint: DESCARTADOS desta saida. Exercicios resolvidos vivem dentro
  de subtopicos quando o conteudo exige calculo (rotulados pela substancia/situacao em negrito).
- Conexao biblica explicita: SEMPRE em '## O que a Bíblia diz sobre [assunto]' — nunca em outros blocos.

REGRAS DE EXECUCAO
==================
1. Leia primeiro o manual editorial e o CLAUDE.md especifico. Depois a memoria-autor e o blueprint da unidade.
2. Para cada blueprint_capitulo_NN_<slug>.md, gere exatamente um arquivo capitulo_NN_<slug>.md.
3. Salve todos os capitulos exclusivamente em: $OUTPUT_DIR
4. Nao altere os blueprints nem os arquivos de prompt/referencia.
5. Conteudo final em portugues brasileiro, em Markdown valido.
6. Apos gerar cada capitulo, valide contra o checklist do CLAUDE.md especifico antes de salvar.
7. Se algum criterio falhar (especialmente as regras invioláveis de LaTeX e estrutura), corrija ANTES de salvar.
"

START=$(date +%s)
echo -e "${C_DIM}log: $LOG_FILE${C_RESET}"

# Claude CLI: --print (modo nao-interativo) + --dangerously-skip-permissions
# (necessario para o agente escrever arquivos sem prompt interativo).
# Prompt enviado via stdin (mais robusto que argumento para textos longos —
# capitulos de Quimica carregam regras LaTeX extensas + memoria-autor + refs globais).
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

  # --- Validações pós-geração específicas de Química ---
  echo
  log_info "Validando capítulos gerados contra regras de Química..."
  VIOLATIONS=0
  for cap in "$OUTPUT_DIR"/capitulo_*.md; do
    cap_name=$(basename "$cap")

    # 1. Sem \text{} dentro de $$...$$
    if grep -nE '\$\$[^$]*\\text\{' "$cap" >/dev/null; then
      log_error "$cap_name: usa '\\text{}' dentro de \$\$...\$\$ (proibido — usar \\mathrm{})"
      grep -nE '\$\$[^$]*\\text\{' "$cap" | head -3 | sed 's/^/      /'
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 2. Sem \; ou \, dentro de $$...$$
    if grep -nE '\$\$[^$]*\\[;,]' "$cap" >/dev/null; then
      log_error "$cap_name: usa '\\;' ou '\\,' dentro de \$\$...\$\$ (proibido — renderizam como pontuação literal)"
      grep -nE '\$\$[^$]*\\[;,]' "$cap" | head -3 | sed 's/^/      /'
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 3. Sem rótulo numerado em exemplo resolvido
    if grep -nE '📝[[:space:]]+\*\*Exemplo resolvido [0-9]' "$cap" >/dev/null; then
      log_error "$cap_name: usa rótulo numerado '📝 **Exemplo resolvido N:**' (proibido — usar nome da substância/situação em negrito)"
      grep -nE '📝[[:space:]]+\*\*Exemplo resolvido [0-9]' "$cap" | head -3 | sed 's/^/      /'
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 4. Sem emoji em heading ## ou ###
    if grep -nE '^##[^#].*[🤝📚⏰💭✏️🤔🌟💡⚠️📌✅⏸️🔍🏛️🌍🔎📝]' "$cap" >/dev/null; then
      log_error "$cap_name: heading ## ou ### tem emoji (proibido — emojis só em boxes e em 'Para Conversar')"
      grep -nE '^##[^#].*[🤝📚⏰💭✏️🤔🌟💡⚠️📌✅⏸️🔍🏛️🌍🔎📝]' "$cap" | head -3 | sed 's/^/      /'
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 5. Headings pós-conteúdo presentes
    declare -a REQUIRED_HEADINGS=(
      "^## .*Aplicações Práticas"
      "^## O que a Bíblia diz sobre"
      "^## Síntese do Capítulo"
    )
    for required in "${REQUIRED_HEADINGS[@]}"; do
      if ! grep -qE "$required" "$cap"; then
        log_error "$cap_name: heading obrigatório ausente: ${required#^}"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    done

    # 6. 'O que a Bíblia diz sobre' contém '**Na prática:**'
    if ! awk '/^## O que a Bíblia diz sobre/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '\*\*Na prática:\*\*'; then
      log_error "$cap_name: '## O que a Bíblia diz sobre' não contém '**Na prática:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 7. 'O que a Bíblia diz sobre' contém '💬 **Para Conversar:**'
    if ! awk '/^## O que a Bíblia diz sobre/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '💬[[:space:]]+\*\*Para Conversar:\*\*'; then
      log_error "$cap_name: '## O que a Bíblia diz sobre' não contém '💬 **Para Conversar:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 8. 'Síntese do Capítulo' contém tabela markdown (linha com |---|)
    if ! awk '/^## Síntese do Capítulo/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '\|[[:space:]]*-+[[:space:]]*\|'; then
      log_error "$cap_name: '## Síntese do Capítulo' não contém tabela markdown (esperado linha com |---|)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 9. Pergunta-problema em itálico-negrito após '## Introdução'
    if ! awk '/^## Introdução/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '\*\*\*[^*]+\*\*\*'; then
      log_error "$cap_name: '## Introdução' não contém pergunta-problema em '***itálico-negrito***'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  done

  if [[ $VIOLATIONS -gt 0 ]]; then
    log_error "$VIOLATIONS violações de regras de Química detectadas. Revise os capítulos antes de commitar."
    exit 1
  fi

  auto_publish_output "$OUTPUT_DIR" "$DISCIPLINA" "$ANO" "$UNIT_STEM"

  log_ok "$COUNT capitulo(s) em $OUTPUT_DIR ${C_DIM}(${DURATION}s)${C_RESET} — todas as validações passaram."
else
  END=$(date +%s); DURATION=$((END - START))
  log_error "executor falhou (exit ${EXEC_EXIT:-?}, ${DURATION}s) — ver $LOG_FILE"
  exit "${EXEC_EXIT:-1}"
fi
