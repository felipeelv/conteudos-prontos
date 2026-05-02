#!/usr/bin/env bash
#
# criar_capitulos.sh — AUTOR especializado de Física.
# Gera capítulos finais a partir dos blueprints aprovados, com regras editoriais
# específicas (sem "Sua Parte", LaTeX compatível com AutoLaTeX/CodeCogs, fórmulas
# pós-conteúdo apenas do 8º ano em diante, nomenclatura brasileira).
#
# Uso:
#   ./scripts/criar_capitulos.sh                                                 # interativo
#   ./scripts/criar_capitulos.sh -d "Fisica" -a "1serie" -u "unidade-1"
#   ./scripts/criar_capitulos.sh -d "Fisica" -a "9ano"   -u "unidade-3" --dry-run
#   ./scripts/criar_capitulos.sh -d "Fisica" -a "2serie" -u "unidade-5" --yes
#
# Disciplina coberta: Fisica.

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

# --- Constantes específicas de Física ---
DISCIPLINAS_VALIDAS=("Fisica")
PROMPT_DIR_NAME="Fisica"  # 1:1 com Prompts Criador de Conteudo/Fisica/

BLUEPRINT_ROOT="${BLUEPRINT_ROOT:-$PROJECT_ROOT/PRODUCAO/Blueprint/blueprints}"
[[ -d "$BLUEPRINT_ROOT" ]] || BLUEPRINT_ROOT="$PROJECT_ROOT/PRODUCAO/Blueprint"
PROMPTS_ROOT="$PROJECT_ROOT/PRODUCAO/Prompts Criador de Conteudo"
REFERENCIAS_ROOT="$PROJECT_ROOT/PLANEJAMENTO/Referencias"
CONTEUDOS_ROOT="$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS"

# --- Parse args ---
DISCIPLINA="Fisica"
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
echo -e "${C_BOLD}Disciplinas cobertas por este AUTOR (Física):${C_RESET}"
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

# --- Resolver prompt-autor (Física = 1:1, sem branching) ---
PROMPT_DIR_FULL="$PROMPTS_ROOT/$PROMPT_DIR_NAME"
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

# --- Determinar se "Fórmulas do capítulo" é obrigatório (8º ano em diante) ---
# Heurística: se ANO está em {6ano, 7ano}, bloco é OPCIONAL/OMITIDO; senão, OBRIGATÓRIO.
FORMULAS_REQUIRED=1
case "$ANO" in
  6ano|7ano) FORMULAS_REQUIRED=0 ;;
esac

# --- Resumo do plano ---
echo -e "${C_BOLD}Autoria de Física${C_RESET}"
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
echo "  CLAUDE.md específico: $AUTOR_DIR/CLAUDE.md"
if [[ $FORMULAS_REQUIRED -eq 1 ]]; then
  echo "  '## Fórmulas do capítulo': OBRIGATÓRIO ($ANO >= 8º)"
else
  echo "  '## Fórmulas do capítulo': OMITIDO ($ANO em 6º/7º — Física qualitativa)"
fi
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
[[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]] && REFS_PROMPT_LIST="Referências adicionais especificas de Física (leia antes de escrever):
$(printf '%s\n' "${REFERENCIAS_PROMPT[@]}")
"

REFS_GLOBAIS_LIST=""
[[ ${#REFERENCIAS_GLOBAIS[@]} -gt 0 ]] && REFS_GLOBAIS_LIST="Referencias compartilhadas do pipeline:
$(printf '%s\n' "${REFERENCIAS_GLOBAIS[@]}")
"

FORMULAS_LINE=""
if [[ $FORMULAS_REQUIRED -eq 1 ]]; then
  FORMULAS_LINE="- '## Formulas do capitulo' e OBRIGATORIO neste ano ($ANO) — listar todas as formulas apresentadas com nome e grandezas."
else
  FORMULAS_LINE="- '## Formulas do capitulo' deve ser OMITIDO neste ano ($ANO) — Fisica qualitativa, sem fechamento de formulas."
fi

PROMPT="Voce vai escrever todos os capitulos finais de uma unidade didatica de FISICA a partir dos blueprints aprovados.

CONTEXTO DO PIPELINE
====================
Raiz do projeto: $PROJECT_ROOT
Disciplina:      $DISCIPLINA
Ano/Serie:       $ANO
Unidade:         $UNIT_STEM

ARQUIVOS DE LEITURA OBRIGATORIA
================================

1. Manual editorial de Fisica (estrutura fixa, estilo, regras de LaTeX):
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

REGRAS INVIOLAVEIS DE FISICA (do CLAUDE.md)
=============================================
- NUNCA criar secao '## Sua Parte' ou similar com exercicios.
- NUNCA criar topico numerado depois de '## 4.' (capitulo de Fisica tem MAXIMO 4 topicos numerados).
- NUNCA colocar dois boxes (>) seguidos no mesmo subtopico — sempre separar com ao menos um paragrafo.
- NUNCA usar '\\text{}' dentro de '\$\$ ... \$\$' (CodeCogs/AutoLaTeX nao suporta) — usar '\\mathrm{}'.
- NUNCA usar caracteres acentuados ou cedilha (c~ a~ e' o' e^ a' a^ i' u') dentro de '\$\$ ... \$\$' — palavras com acento ficam FORA do bloco LaTeX.
- NUNCA abrir a introducao com 'Neste capitulo vamos...' ou listar termos antes de explicar.
- NUNCA apresentar mais de 1 exemplo resolvido por secao/subtopico.
- NUNCA compactar multiplas operacoes na mesma linha do exemplo resolvido — UMA operacao por linha (dados → formula → substituicao → simplificacao → resultado).
- NUNCA usar 'Lei de Charles' para a transformacao isobarica — a tradicao brasileira chama de 'Lei de Gay-Lussac (1a lei)' (isobarica) e 'Lei de Gay-Lussac (2a lei)' (isocorica).

REGRA LATEX — FORMALISMO MATEMATICO (INVIOLAVEL)
===================================================
Toda formula em '\$\$ ... \$\$', compativel com AutoLaTeX/CodeCogs no Google Docs:
- Texto em modo matematico: '\\mathrm{}' (NUNCA '\\text{}').
- Unidades do SI com '\\mathrm{}' precedido de '\\;'. Ex.: '\$\$ E = 240\\;\\mathrm{kJ} \$\$'.
- Graus Celsius: '^{\\circ}\\mathrm{C}'. Angulos: '^{\\circ}'.
- Espacos dentro da formula: '\\;' (medio) ou '\\,' (fino), nunca espaco literal.
- Quebra de linha em equacao multilinha: '\\\\' dentro de UM unico '\$\$ ... \$\$'.
- Apos cada formula nova, definir cada grandeza e sua unidade no SI no formato:
  'onde \$\$ x \$\$ e a descricao (unidade)'.
- Palavras com acento (area, posicao, distancia) ficam NO TEXTO CORRIDO, FORA do bloco LaTeX.

REGRAS ESTRUTURAIS
==================
- Introducao narrativa em 3 elementos NA ORDEM: Cena → Tensao → Ponte. Apos a introducao, box '> 💭 **Pense um pouco:**' separado.
- Extensao da introducao: 6º-7º: 4-5 frases | 8º-9º: 5-7 | EM: 6-8.
- Topico principal '##' tem abertura de 2-3 frases.
- Subtopico '###' tem prosa curta + frase de transicao + lista com marcadores. Nunca lista sem frase de transicao.
- Boxes obrigatoriamente em blockquote (>) com TITULO na 1a linha terminada em DOIS ESPACOS + conteudo na 2a linha. Maximo 1-2 frases.
- Tipos de box: '💭 Pense um pouco:', '⏸️ Pare e Pense:', '💡 Você sabia?', '📏 Medidas Impressionantes:', '⚡ Física no Dia a Dia:', '📐 Fazendo as Contas:', '🧪 Experimente:'.
- Exemplo resolvido: titulo EXATO '📝 **Exemplo:**' (sem numeracao, sem 'resolvido'). Uma operacao por linha. APENAS 1 exemplo por secao/subtopico.

ESTRUTURA FIXA DOS BLOCOS POS-CONTEUDO (NESTA ORDEM EXATA)
============================================================
1. ## NA VIDA REAL                  (situacao concreta → conceito em acao → por que importa, max 3-4 frases)
2. ## E A BÍBLIA NISSO?              (versiculo em blockquote → conexao 1-2 frases → 1 bullet de aplicacao → > 💬 **Para Conversar:**)
3. ## Simplificando                  (1-2 paragrafos curtos, NAO bullets)
4. ## Para não esquecer              (2 a 3 bullets no formato 'Termo: explicacao breve')
5. ## Fórmulas do capítulo           (lista de formulas com nome e grandezas)
${FORMULAS_LINE}

ADAPTACAO POR SERIE
====================
- 6º-7º ano EF II: conceitos qualitativos, exemplos cotidianos, vocabulario cientifico gradual. Formulas raras, sempre com exemplo numerico imediato.
- 8º-9º ano EF II: formulas simples com unidades, exemplos resolvidos passo a passo, fenomenos como gancho.
- 1a-2a serie EM: formalismo matematico completo, modelos fisicos e suas limitacoes, articulacao grandezas/graficos/equacoes.
- 3a serie EM: sintese, articulacao entre temas, problemas de vestibular/ENEM.

HIERARQUIA DE AUTORIDADE
========================
Quando o blueprint pedir conteudo que nao cabe na estrutura padrao:
- Estrutura: segue o prompt-autor (4 topicos numerados + 5 blocos pos-conteudo na ordem fixa).
- Conteudo factual (fisico-personagem, fenomeno, valor numerico): EMBUTE em '📝 Exemplo', '💡 Você sabia?', '📏 Medidas Impressionantes', '⚡ Física no Dia a Dia' ou '## NA VIDA REAL'.
- Exercicios pedidos pelo blueprint: DESCARTADOS desta saida (ficam em caderno de atividades separado).
- Conexao biblica explicita: SEMPRE em '## E A BÍBLIA NISSO?' — nunca em outros blocos.
- Nomenclatura brasileira: quando blueprint e tradicao internacional divergirem, seguir tradicao BRASILEIRA (Ramalho, Bonjorno, ENEM).

REGRAS DE EXECUCAO
==================
1. Leia primeiro o manual editorial e o CLAUDE.md especifico. Depois o blueprint da unidade.
2. Para cada blueprint_capitulo_NN_<slug>.md, gere exatamente um arquivo capitulo_NN_<slug>.md.
3. Salve todos os capitulos exclusivamente em: $OUTPUT_DIR
4. Nao altere os blueprints nem os arquivos de prompt/referencia.
5. Conteudo final em portugues brasileiro, em Markdown valido.
6. Apos gerar cada capitulo, valide contra o checklist do CLAUDE.md especifico antes de salvar.
7. Se algum criterio falhar (especialmente as regras invioláveis e a regra LaTeX), corrija ANTES de salvar.
8. Para Unidade 4, inserir imagens TikZ sempre que ajudarem a concretizar o fenômeno; usar PNG renderizado com URL raw do GitHub no Markdown final, nunca link relativo para figuras/.
"

START=$(date +%s)
echo -e "${C_DIM}log: $LOG_FILE${C_RESET}"

# Claude CLI: usar --print (modo nao-interativo) + --dangerously-skip-permissions.
# Codex: usar exec.
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

  # --- Validações pós-geração específicas de Física ---
  echo
  log_info "Validando capítulos gerados contra regras de Física..."
  VIOLATIONS=0
  for cap in "$OUTPUT_DIR"/capitulo_*.md; do
    cap_name=$(basename "$cap")

    # 1. Sem ## 5. (ou superior) — máximo 4 tópicos numerados
    if grep -qE '^## [5-9]\.' "$cap"; then
      log_error "$cap_name: tem heading '## N.' com N>=5 (proibido — máx. 4 tópicos)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 2. Sem ## Sua Parte
    if grep -qiE '^##[[:space:]]+(🤝[[:space:]]+)?Sua Parte' "$cap"; then
      log_error "$cap_name: tem heading 'Sua Parte' (proibido em Física)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 3. ## Pergunta-problema presente
    if ! grep -qE '^## Pergunta-problema' "$cap"; then
      log_error "$cap_name: heading '## Pergunta-problema' ausente"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 4. Box '> 💭 **Pense um pouco:**' presente após a introdução
    if ! grep -qE '^>[[:space:]]+💭[[:space:]]+\*\*Pense um pouco:\*\*' "$cap"; then
      log_error "$cap_name: box '> 💭 **Pense um pouco:**' ausente após a introdução"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 5. Headings pós-conteúdo presentes na ordem
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

    # 5.b ## Fórmulas do capítulo: obrigatório do 8º ano em diante
    if [[ $FORMULAS_REQUIRED -eq 1 ]]; then
      if ! grep -qE '^## Fórmulas do capítulo' "$cap"; then
        log_error "$cap_name: heading obrigatório ausente: ## Fórmulas do capítulo (obrigatório em $ANO)"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    else
      # Em 6º/7º, presença é tolerada mas avisa (não fatal)
      if grep -qE '^## Fórmulas do capítulo' "$cap"; then
        log_warn "$cap_name: '## Fórmulas do capítulo' presente em $ANO (esperado: omitido — Física qualitativa)"
      fi
    fi

    # 6. Para não esquecer = 2 a 3 bullets
    BULLETS=$(awk '/^## Para não esquecer/{flag=1; next} /^## /{flag=0} flag && /^- /' "$cap" | wc -l | tr -d ' ')
    if [[ "$BULLETS" -lt 2 || "$BULLETS" -gt 3 ]]; then
      log_error "$cap_name: '## Para não esquecer' tem $BULLETS bullets (esperado 2 a 3)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 7. E A BÍBLIA NISSO? contém '> 💬 **Para Conversar:**'
    if ! awk '/^## E A BÍBLIA NISSO\?/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '^>[[:space:]]+💬[[:space:]]+\*\*Para Conversar:\*\*'; then
      log_error "$cap_name: '## E A BÍBLIA NISSO?' não contém '> 💬 **Para Conversar:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 8. LaTeX: '\text{' proibido dentro de $$ ... $$
    # Heurística: extrair conteúdo entre $$ ... $$ por linha e checar '\text{'
    if awk '
      {
        line=$0
        while (match(line, /\$\$[^$]*\$\$/)) {
          chunk=substr(line, RSTART, RLENGTH)
          if (index(chunk, "\\text{") > 0) { print NR": "chunk; found=1 }
          line=substr(line, RSTART+RLENGTH)
        }
      }
      END { exit found?0:1 }
    ' "$cap" >/dev/null; then
      log_error "$cap_name: uso de '\\text{' dentro de '\$\$ ... \$\$' (proibido — usar '\\mathrm{')"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 9. LaTeX: caracteres acentuados/cedilha proibidos dentro de $$ ... $$
    if awk '
      {
        line=$0
        while (match(line, /\$\$[^$]*\$\$/)) {
          chunk=substr(line, RSTART, RLENGTH)
          if (chunk ~ /[çÇãÃáÁâÂàÀéÉêÊíÍóÓôÔõÕúÚüÜ]/) { print NR": "chunk; found=1 }
          line=substr(line, RSTART+RLENGTH)
        }
      }
      END { exit found?0:1 }
    ' "$cap" >/dev/null; then
      log_error "$cap_name: caractere acentuado/cedilha dentro de '\$\$ ... \$\$' (proibido — palavra com acento fica FORA do bloco LaTeX)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 10. Sem dois boxes (>) consecutivos (heurística da filosofia/sociologia)
    CONSECUTIVE_BOXES=$(awk '
      /^## / || /^### / { in_section=1; last_was_box_block=0; next }
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
      log_error "$cap_name: dois boxes (>) consecutivos detectados no(s) trecho(s) próximo(s) à(s) linha(s): $CONSECUTIVE_BOXES"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  done

  if [[ $VIOLATIONS -gt 0 ]]; then
    log_error "$VIOLATIONS violações de regras de Física detectadas. Revise os capítulos antes de commitar."
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
