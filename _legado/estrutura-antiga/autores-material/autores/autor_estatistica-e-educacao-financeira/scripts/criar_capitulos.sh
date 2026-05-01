#!/usr/bin/env bash
#
# criar_capitulos.sh — AUTOR especializado de Matemática 3 (Estatística e Educação Financeira).
# Gera capítulos finais a partir dos blueprints aprovados, com regras editoriais
# específicas (LaTeX/AutoLaTeX, dados reais, etapas de cálculo em linhas separadas,
# blocos pós-conteúdo enxutos, sem "Sua Parte", sem "NA PRÁTICA").
#
# Uso:
#   ./scripts/criar_capitulos.sh                                                                                                                                                                  # interativo
#   ./scripts/criar_capitulos.sh -d "Estatistica e Educacao Financeira" -a "1serie" -u "unidade-1-estatistica-descritiva-conceitos-basicos"
#   ./scripts/criar_capitulos.sh -d "Estatistica e Educacao Financeira" -a "8ano"   -u "unidade-2" --dry-run
#   ./scripts/criar_capitulos.sh -d "Estatistica e Educacao Financeira" -a "3serie" -u "unidade-1" --yes
#
# Disciplina coberta: Estatistica e Educacao Financeira.

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

# --- Constantes específicas de Matemática 3 ---
DISCIPLINAS_VALIDAS=("Estatistica e Educacao Financeira")

BLUEPRINT_ROOT="${BLUEPRINT_ROOT:-$PROJECT_ROOT/PRODUCAO/Blueprint/blueprints}"
[[ -d "$BLUEPRINT_ROOT" ]] || BLUEPRINT_ROOT="$PROJECT_ROOT/PRODUCAO/Blueprint"
REFERENCIAS_ROOT="$PROJECT_ROOT/PLANEJAMENTO/Referencias"
CONTEUDOS_ROOT="$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS"

# --- Parse args ---
DISCIPLINA="Estatistica e Educacao Financeira"
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
echo -e "${C_BOLD}Disciplinas cobertas por este AUTOR (Matemática 3 — Estatística e Educação Financeira):${C_RESET}"
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

# --- Resolver arquivos locais do autor ---
PROMPT_DIR_FULL="$AUTOR_DIR"
PROMPT_AUTOR="$PROMPT_DIR_FULL/prompt-autor.md"
[[ -f "$PROMPT_AUTOR" ]] || { log_error "prompt-autor.md ausente: $PROMPT_AUTOR"; exit 1; }

# --- Coletar referências do prompt (referencia-*.md + memoria-autor.md) ---
declare -a REFERENCIAS_PROMPT=()
while IFS= read -r f; do REFERENCIAS_PROMPT+=("$f"); done \
  < <(find "$PROMPT_DIR_FULL" -maxdepth 1 -type f \( -name 'referencia-*.md' -o -name 'memoria-autor.md' \) | sort)

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

# --- Detectar se é série com Fórmulas do capítulo (8º ano em diante) ---
HAS_FORMULAS_SECTION=0
case "$ANO" in
  6ano|7ano) HAS_FORMULAS_SECTION=0 ;;
  *)         HAS_FORMULAS_SECTION=1 ;;
esac

# --- Resumo do plano ---
echo -e "${C_BOLD}Autoria de Matemática 3 (Estatística e Educação Financeira)${C_RESET}"
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
echo "  Fórmulas do cap.: $([[ $HAS_FORMULAS_SECTION -eq 1 ]] && echo 'OBRIGATÓRIA (8º+)' || echo 'PROIBIDA (6º/7º)')"
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
confirm_run "Esta operação chama '$EXECUTOR exec' e gera ${#CHAPTER_BLUEPRINTS[@]} capítulo(s) de $DISCIPLINA. Tem custo de API." "$AUTO_CONFIRM" || exit 0

# --- Montar prompt para o executor ---
REFS_PROMPT_LIST=""
[[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]] && REFS_PROMPT_LIST="Referências adicionais especificas de Matemática 3 (leia antes de escrever):
$(printf '%s\n' "${REFERENCIAS_PROMPT[@]}")
"

REFS_GLOBAIS_LIST=""
[[ ${#REFERENCIAS_GLOBAIS[@]} -gt 0 ]] && REFS_GLOBAIS_LIST="Referencias compartilhadas do pipeline:
$(printf '%s\n' "${REFERENCIAS_GLOBAIS[@]}")
"

FORMULAS_NOTE=""
if [[ $HAS_FORMULAS_SECTION -eq 1 ]]; then
  FORMULAS_NOTE="ESTA SERIE ($ANO) EXIGE A SECAO '## Formulas do capitulo' AO FINAL DE CADA CAPITULO."
else
  FORMULAS_NOTE="ESTA SERIE ($ANO) NAO TEM '## Formulas do capitulo' — NAO INCLUIR esse bloco (so 8o ano em diante)."
fi

PROMPT="Voce vai escrever todos os capitulos finais de uma unidade didatica de $DISCIPLINA (Matematica 3 — Estatistica e Educacao Financeira) a partir dos blueprints aprovados.

CONTEXTO DO PIPELINE
====================
Raiz do projeto: $PROJECT_ROOT
Disciplina:      $DISCIPLINA
Ano/Serie:       $ANO
Unidade:         $UNIT_STEM

ARQUIVOS DE LEITURA OBRIGATORIA
================================

1. Manual editorial de Matematica 3 (estrutura fixa, estilo, regras LaTeX/AutoLaTeX):
   $PROMPT_AUTOR

2. CLAUDE.md especifico deste AUTOR (regras invioláveis e validacoes):
   $AUTOR_DIR/CLAUDE.md

3. Blueprint da unidade (lei geral aplicavel a todos os capitulos):
   $UNIDADE_BLUEPRINT

4. Blueprints de capitulo a processar (um arquivo de saida por blueprint, na ordem listada):
$(printf '   - %s\n' "${CHAPTER_BLUEPRINTS[@]}")

${REFS_PROMPT_LIST}${REFS_GLOBAIS_LIST}
DIRETORIO OBRIGATORIO DE SAIDA
==============================
$OUTPUT_DIR

REGRAS INVIOLAVEIS DE MATEMATICA 3 (do CLAUDE.md)
==================================================
- NUNCA criar secao '## Sua Parte' ou similar com exercicios.
- NUNCA usar '\\text{}' dentro de LaTeX — sempre '\\mathrm{}' (CodeCogs/AutoLaTeX nao suporta '\\text{}').
- NUNCA usar caracteres acentuados (c-cedilha, til, agudo, grave, circunflexo) DENTRO de blocos '\$\$ ... \$\$'.
  Mover palavras acentuadas para FORA do bloco LaTeX.
- NUNCA encadear etapas de calculo numa unica linha. Cada etapa em sua propria linha.
  Excecao: boxes 'Fazendo as Contas' permitem 2 etapas simples na mesma linha por restricao de espaco.
- NUNCA inventar dados estatisticos. Toda estatistica citada precisa ser dado real e verificavel
  (IBGE, Banco Central, OMS, ONU, pesquisas referenciadas) — sem citar fonte no corpo, mas sem fabricar.
- NUNCA abrir paragrafo com 'Neste capitulo vamos...' ou listar termos antecipadamente.
- NUNCA usar rotulos mecanicos como 'Exemplo resolvido:'. Usar frases naturais ('Veja so:', 'Veja o exemplo abaixo').
- NUNCA criar bloco 'NA PRATICA' — removido do projeto.
- NUNCA usar a frase fixa 'Lembre-se de:' como rotulo do topico biblico — o rotulo deve emergir do tema
  do capitulo (frase de acao contextualizada em negrito).
- NUNCA colocar emoji em heading '##' ou '###'.
- NUNCA colocar mais de 1 box por secao principal '## N.'.

REGRAS LaTeX (AutoLaTeX Equations / CodeCogs) — CRITICAS
=========================================================
- Delimitador: '\$\$ ... \$\$' (display math).
- Texto/unidades dentro de formula: '\\mathrm{}' precedido de '\\;' (espaco medio).
  Exemplo: '\$\$ J = 500\\;\\mathrm{reais} \$\$'
- Porcentagem: '\\%'. Exemplo: '\$\$ i = 2\\% \$\$'
- Espacos em formula: '\\;' (medio) ou '\\,' (fino) — nunca espaco literal.
- ZERO acentos em '\$\$ ... \$\$'. Se precisar de palavra acentuada, escreva fora do bloco.

REGRAS ESTRUTURAIS
==================
- Introducao com 3 elementos na ordem: Cena → Tensao → Ponte. Extensao por serie:
    6º-7º = 3-4 frases | 8º-9º = 4-5 frases | EM = 5-6 frases.
  Apos a introducao, box '> 💭 **Pense um pouco:**' separado.
- Abertura de cada '## N. Topico': 1 frase direta — sem aquecimento.
- Para 6º-7º ano: maximo 2 linhas por paragrafo no Markdown, com 1-2 frases curtas.
- Para 6º-7º ano: primeiro apresente exemplo concreto; depois nomeie o conceito.
- Para 6º-7º ano: evite tom academico, frase longa e explicacao abstrata sem cena cotidiana.
- Maximo 2 frases antes de uma lista. Toda lista exige frase de transicao.
- Etapas de calculo: cada etapa em sua linha propria, dentro de '\$\$ ... \$\$'.
- Padroes repetitivos: mostrar 2 exemplos resolvidos + tabela-resumo com 'os demais seguem o mesmo padrao'.
- Maximo 1 box por '## N.' Tipos:
    > 💭 **Pense um pouco:**       — pergunta curta de reflexao
    > ⏸️ **Pare e Pense:**         — pergunta sobre causa/efeito/decisao
    > 💡 **Você sabia?**           — fato curioso em uma frase
    > 📊 **Nos Números:**          — dado estatistico real e surpreendente em uma frase
    > 📈 **No Dia a Dia:**         — exemplo do cotidiano em uma frase
    > 📐 **Fazendo as Contas:**    — conta simples (2-3 linhas)
    > 🕵️ **Caso Real:**            — situacao real com dados/decisao financeira
- Formato de box: titulo na 1a linha (com 2 espacos ao final), conteudo na 2a linha — ambos no blockquote.

ESTRUTURA FIXA DOS BLOCOS POS-CONTEUDO (NESTA ORDEM EXATA)
============================================================
1. ## NA VIDA REAL          (max. 2 frases — aplicacao direta, sem introducao)
2. ## E A BÍBLIA NISSO?      (versiculo + 2-3 frases de transicao + 1 bullet com principio em negrito + > 💬 **Para Conversar:** — cabe em <10 linhas)
3. ## Simplificando         (max. 2 frases densas — sintese do arco)
4. ## Para não esquecer     (exatamente 3 bullets no formato '**Termo:** explicacao breve')
5. ## Fórmulas do capítulo  (apenas 8º ano em diante — lista de formulas com nome e definicao dos elementos)

$FORMULAS_NOTE

ADAPTACAO POR SERIE
====================
- 6º-7º ano EF II: conceitos qualitativos, exemplos cotidianos (mesada, escola, esportes), tabelas/graficos simples,
  probabilidade intuitiva. Linguagem curta e direta, adequada a aluno de 11-13 anos. Educacao financeira:
  escolhas, poupar vs gastar. Formulas raras com exemplo imediato.
- 8º-9º ano EF II: vocabulario tecnico gradual, medidas de tendencia central, probabilidade com calculos.
  Educacao financeira: orcamento, juros simples, consumo consciente. Passo a passo.
- 1ª-2ª serie EM: distribuicoes, desvio padrao, probabilidade condicional, juros compostos, investimentos, inflacao.
  Desenvolvimento algebrico completo.
- 3ª serie EM: inferencia, correlacao, analise critica de pesquisas reais. Educacao financeira avancada.
  Foco ENEM/vestibular, interpretacao critica de dados em contexto social/economico.

HIERARQUIA DE AUTORIDADE
========================
Quando o blueprint pedir conteudo que nao cabe na estrutura padrao:
- Estrutura: segue o prompt-autor (topicos numerados + 4 ou 5 blocos pos-conteudo na ordem fixa).
- Conteudo factual (dado real, exemplo): EMBUTE no topico mais natural ou em 'NA VIDA REAL'.
- Exercicios pedidos pelo blueprint: DESCARTADOS desta saida (ficam em caderno de atividades separado).
- Conexao biblica explicita: SEMPRE em 'E A BIBLIA NISSO?' — nunca em outros blocos.
- Dados estatisticos: priorizar rigor e fontes verificaveis (sem citar no corpo). Se o blueprint sugerir
  dado ficticio, substituir por dado real equivalente.

REGRAS DE EXECUCAO
==================
1. Leia primeiro o manual editorial e o CLAUDE.md especifico. Depois o blueprint da unidade.
2. Para cada blueprint_capitulo_NN_<slug>.md, gere exatamente um arquivo capitulo_NN_<slug>.md.
3. Salve todos os capitulos exclusivamente em: $OUTPUT_DIR
4. Nao altere os blueprints nem os arquivos de prompt/referencia.
5. Conteudo final em portugues brasileiro, em Markdown valido.
6. Apos gerar cada capitulo, valide contra o checklist do CLAUDE.md especifico antes de salvar.
7. Se algum criterio falhar (especialmente as regras invioláveis e as regras LaTeX), corrija ANTES de salvar.
"

START=$(date +%s)
echo -e "${C_DIM}log: $LOG_FILE${C_RESET}"

# Claude CLI: usar --print (modo nao-interativo) + --dangerously-skip-permissions.
# Codex: usar subcomando exec.
if [[ "$EXECUTOR" == "claude" ]]; then
  EXEC_CMD=(--print --dangerously-skip-permissions "$PROMPT")
else
  EXEC_CMD=(exec "$PROMPT")
fi

if "$EXECUTOR" "${EXEC_CMD[@]}" > "$LOG_FILE" 2>&1; then
  END=$(date +%s); DURATION=$((END - START))
  COUNT=$(find "$OUTPUT_DIR" -maxdepth 1 -name 'capitulo_*.md' | wc -l | tr -d ' ')
  if [[ "$COUNT" -eq 0 ]]; then
    log_error "executor terminou sem erro, mas gerou 0 capitulos em $OUTPUT_DIR — ver $LOG_FILE"
    exit 1
  fi

  # --- Validações pós-geração específicas de Matemática 3 ---
  echo
  log_info "Validando capítulos gerados contra regras de Matemática 3..."
  VIOLATIONS=0
  for cap in "$OUTPUT_DIR"/capitulo_*.md; do
    cap_name=$(basename "$cap")

    # 1. Sem ## Sua Parte
    if grep -qiE '^##[[:space:]]+(🤝[[:space:]]+)?Sua Parte' "$cap"; then
      log_error "$cap_name: tem heading 'Sua Parte' (proibido em Matemática 3)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 2. Sem emoji em heading ## ou ###
    if grep -qE '^##[^#].*[🤝📚⏰💭✏️🤔🌟💡⚠️📌✅⏸️🔍🏛️📊📈📐🕵️]' "$cap"; then
      log_error "$cap_name: heading ## ou ### tem emoji (proibido)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 3. Sem \text{} em LaTeX (deve ser \mathrm{})
    if grep -qE '\\text\{' "$cap"; then
      log_error "$cap_name: contém '\\text{}' em LaTeX (proibido — use '\\mathrm{}')"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 4. Sem caracteres acentuados dentro de blocos $$ ... $$
    # Estratégia: extrai conteúdo entre $$ e $$ e procura acentos comuns
    ACENTOS_LATEX=$(awk '
      BEGIN { in_math=0 }
      {
        line = $0
        while (match(line, /\$\$[^$]*\$\$/)) {
          chunk = substr(line, RSTART+2, RLENGTH-4)
          if (chunk ~ /[ãáàâäéêëíîïóôõöúûüçÃÁÀÂÄÉÊËÍÎÏÓÔÕÖÚÛÜÇ]/) {
            print NR ": " chunk
          }
          line = substr(line, RSTART + RLENGTH)
        }
      }
    ' "$cap")
    if [[ -n "$ACENTOS_LATEX" ]]; then
      log_error "$cap_name: caracteres acentuados dentro de blocos \$\$...\$\$ (proibido):"
      echo "$ACENTOS_LATEX" | sed 's/^/      /' >&2
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 5. Headings pós-conteúdo presentes
    declare -a REQUIRED_HEADINGS=(
      "^## NA VIDA REAL"
      "^## E A BÍBLIA NISSO\\?"
      "^## Simplificando"
      "^## Para não esquecer"
    )
    for required in "${REQUIRED_HEADINGS[@]}"; do
      if ! grep -qE "$required" "$cap"; then
        log_error "$cap_name: heading obrigatório ausente: ${required#^}"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    done

    # 6. Para não esquecer = exatamente 3 bullets
    BULLETS=$(awk '/^## Para não esquecer/{flag=1; next} /^## /{flag=0} /^---[[:space:]]*$/{flag=0} flag && /^- /' "$cap" | wc -l | tr -d ' ')
    if [[ "$BULLETS" -ne 3 ]]; then
      log_error "$cap_name: '## Para não esquecer' tem $BULLETS bullets (esperado exatamente 3)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 7. E A BÍBLIA NISSO? contém Para Conversar
    if ! awk '/^## E A BÍBLIA NISSO\?/{flag=1; next} /^## /{flag=0} /^---[[:space:]]*$/{flag=0} flag' "$cap" | grep -qE '^>[[:space:]]+💬[[:space:]]+\*\*Para Conversar:\*\*'; then
      log_error "$cap_name: '## E A BÍBLIA NISSO?' não contém '> 💬 **Para Conversar:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 8. Simplificando tem <= 2 frases
    SIMPL_PERIODS=$(awk '/^## Simplificando/{flag=1; next} /^## /{flag=0} /^---[[:space:]]*$/{flag=0} flag' "$cap" | tr -d '\n' | tr -cd '.!?' | wc -c | tr -d ' ')
    if [[ "$SIMPL_PERIODS" -gt 2 ]]; then
      log_error "$cap_name: '## Simplificando' tem $SIMPL_PERIODS frases (esperado no máximo 2)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 9. Sem bloco NA PRÁTICA
    if grep -qiE '^##[[:space:]]+NA PR[ÁA]TICA' "$cap"; then
      log_error "$cap_name: contém bloco 'NA PRÁTICA' (proibido — removido do projeto)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 10. Fórmulas do capítulo: obrigatória 8º+, proibida em 6º/7º
    if [[ $HAS_FORMULAS_SECTION -eq 1 ]]; then
      if ! grep -qE '^## Fórmulas do capítulo' "$cap"; then
        log_error "$cap_name: '## Fórmulas do capítulo' ausente (obrigatório a partir do 8º ano)"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    else
      if grep -qE '^## Fórmulas do capítulo' "$cap"; then
        log_error "$cap_name: '## Fórmulas do capítulo' presente (proibido em 6º/7º ano)"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    fi
  done

  if [[ $VIOLATIONS -gt 0 ]]; then
    log_error "$VIOLATIONS violações de regras de Matemática 3 detectadas. Revise os capítulos antes de commitar."
    exit 1
  fi

  auto_publish_output "$OUTPUT_DIR" "$DISCIPLINA" "$ANO" "$UNIT_STEM"

  log_ok "$COUNT capitulo(s) em $OUTPUT_DIR ${C_DIM}(${DURATION}s)${C_RESET} — todas as validações passaram."
else
  EXIT_CODE=$?
  END=$(date +%s); DURATION=$((END - START))
  log_error "executor falhou (exit $EXIT_CODE, ${DURATION}s) — ver $LOG_FILE"
  exit "$EXIT_CODE"
fi
