#!/usr/bin/env bash
#
# criar_capitulos.sh — AUTOR especializado de Filosofia e Sociologia.
# Gera capítulos finais a partir dos blueprints aprovados, com regras editoriais
# específicas (sem "Sua Parte", Regra 4.1 ancoragem cristã, "Para Conversar"
# dentro de "O Que a Fé Diz").
#
# Uso:
#   ./scripts/criar_capitulos.sh                                              # interativo
#   ./scripts/criar_capitulos.sh -d "Filosofia"  -a "1serie" -u "unidade-1"
#   ./scripts/criar_capitulos.sh -d "Sociologia" -a "2serie" -u "unidade-3" --dry-run
#   ./scripts/criar_capitulos.sh -d "Filosofia"  -a "3serie" -u "unidade-2" --yes
#
# Disciplina coberta: Filosofia.

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

# --- Constantes específicas de Filosofia e Sociologia ---
DISCIPLINAS_VALIDAS=("Filosofia")
PROMPT_DIR_NAME="Filosofia e Sociologia"  # 1:1 com Prompts Criador de Conteudo/Filosofia e Sociologia/

BLUEPRINT_ROOT="${BLUEPRINT_ROOT:-$PROJECT_ROOT/PRODUCAO/Blueprint/blueprints}"
[[ -d "$BLUEPRINT_ROOT" ]] || BLUEPRINT_ROOT="$PROJECT_ROOT/PRODUCAO/Blueprint"
PROMPTS_ROOT="$PROJECT_ROOT/PRODUCAO/Prompts Criador de Conteudo"
REFERENCIAS_ROOT="$PROJECT_ROOT/PLANEJAMENTO/Referencias"
CONTEUDOS_ROOT="$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS"

# --- Parse args ---
DISCIPLINA="Filosofia"
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
echo -e "${C_BOLD}Disciplinas cobertas por este AUTOR (Filosofia e Sociologia):${C_RESET}"
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

# --- Resolver prompt-autor (Filosofia e Sociologia = 1:1, sem branching) ---
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

# --- Resumo do plano ---
echo -e "${C_BOLD}Autoria de Filosofia e Sociologia${C_RESET}"
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
[[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]] && REFS_PROMPT_LIST="Referências adicionais especificas de Filosofia e Sociologia (leia antes de escrever):
$(printf '%s\n' "${REFERENCIAS_PROMPT[@]}")
"

REFS_GLOBAIS_LIST=""
[[ ${#REFERENCIAS_GLOBAIS[@]} -gt 0 ]] && REFS_GLOBAIS_LIST="Referencias compartilhadas do pipeline:
$(printf '%s\n' "${REFERENCIAS_GLOBAIS[@]}")
"

PROMPT="Voce vai escrever todos os capitulos finais de uma unidade didatica de $DISCIPLINA (Filosofia e Sociologia) a partir dos blueprints aprovados.

CONTEXTO DO PIPELINE
====================
Raiz do projeto: $PROJECT_ROOT
Disciplina:      $DISCIPLINA
Ano/Serie:       $ANO
Unidade:         $UNIT_STEM

ARQUIVOS DE LEITURA OBRIGATORIA
================================

1. Manual editorial de Filosofia e Sociologia (estrutura fixa, estilo, regras):
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

REGRAS INVIOLAVEIS DE FILOSOFIA E SOCIOLOGIA (do CLAUDE.md)
=============================================================
- NUNCA criar secao '## Sua Parte' ou similar com exercicios.
- NUNCA criar topico numerado depois de '## 4.' (capitulo tem EXATAMENTE 4 topicos numerados).
- NUNCA colocar dois boxes (>) seguidos no mesmo subtopico.
- NUNCA usar emoji em heading '##' ou '###'. Excecao: '#### 📚 Ampliando o Olhar' (H4).
- NUNCA abrir a introducao com 'Neste capitulo vamos...' ou listar pensadores/conceitos.
- NUNCA usar tabelas ou blocos de codigo (a menos que o blueprint peca explicitamente).
- NUNCA colocar '💬 Para Conversar' fora de '## O Que a Fe Diz'.
- NUNCA fundir '## No Fio da Historia' com listas (e prosa pura).

REGRA 4.1 — ANCORAGEM CRISTA AO COBRIR PENSADORES QUE DESAFIAM A FE
====================================================================
Inviolavel ao tratar Marx, Nietzsche, Hegel, Feuerbach, Freud, Comte e similares:

- A Escritura e o ponto de origem; o filosofo e derivativo. NUNCA apresentar o filosofo
  como correto e a Biblia 'confirmando' a tese — sempre o inverso: a Escritura estabelece
  o referencial e a tese filosofica e avaliada a partir dele.
- Distincao fe/filosofia na mesma frase: ao usar linguagem providencial, sempre incluir
  a distincao entre o que e afirmacao crista e o que e tese filosofica.
- Comparacoes morais (ex.: fascismo x comunismo): reconhecer EXPLICITAMENTE as distincoes
  morais entre os sistemas comparados ANTES de fazer observacoes filosoficas neutras. Nao
  permitir leitura de equivalencia onde ela nao existe.
- Nao suavizar nem caricaturar: apresentar a tese do pensador com fidelidade intelectual
  ANTES da avaliacao crista. Critica honesta exige compreensao fiel primeiro.

REGRAS ESTRUTURAIS
==================
- Cada topico principal '##' tem abertura sintetica de 2-3 frases + subtopicos '###' com perguntas orientadoras.
- Cada subtopico tem: prosa explicativa + frase de transicao + lista com marcadores. MAXIMO 1 box por subtopico.
- Boxes obrigatoriamente em blockquote (>) com 1-2 frases. Tipos:
    > 💭 **Pense um pouco:** — reflexao filosofica/sociologica
    > ⏸️ **Pare e Pense:** — dilema etico, moral ou social
    > 💡 **Você sabia?** — curiosidade rapida (pensador, conceito, dado)
    > 🔍 **Conexão:** — ponte com fenomeno atual ou cotidiano do aluno
- '## O Que a Fe Diz' tem ESTRUTURA OBRIGATORIA: paragrafo introdutorio (2-3 frases) +
  lista de 3-5 bullets + frase de sintese + '> 💬 **Para Conversar:** [pergunta]'.
- '## Pensador em Destaque' traz: bullets biograficos + ideia central + '🏛️ **Legado:**'.
- '## Para nao esquecer' tem 3 a 5 bullets (nao fixo). Apenas ideias verdadeiramente centrais.
- '## Simplificando' tem 1-2 paragrafos curtos (NAO bullets).
- Meta de extensao: 1.300-1.600 palavras por capitulo. Acima disso, condensar.

ESTRUTURA FIXA DOS BLOCOS POS-CONTEUDO (NESTA ORDEM EXATA)
============================================================
1. #### 📚 Ampliando o Olhar       (H4 com emoji — unica excecao a regra 'sem emoji em heading')
2. ## No Fio da Historia            (prosa, sem listas)
3. ## O Que a Fe Diz                (paragrafo + bullets + Para Conversar)
4. ## Pensador em Destaque          (bullets + Legado)
5. ## Voce ja pensou nisso?         (problematizacao)
6. ## Simplificando                 (1-2 paragrafos)
7. ## Para nao esquecer             (3-5 bullets)

ADAPTACAO POR SERIE
====================
- 1a serie EM: linguagem acessivel, exemplos cotidianos, menos pensadores. Conceitos fundantes.
- 2a serie EM: aprofundamento teorico, comparacao entre correntes, debates introduzidos.
- 3a serie EM: sintese critica, conexoes interdisciplinares, preparacao ENEM, posicionamento argumentativo.

HIERARQUIA DE AUTORIDADE
========================
Quando o blueprint pedir conteudo que nao cabe na estrutura padrao:
- Estrutura: segue o prompt-autor (4 topicos numerados + 7 blocos pos-conteudo).
- Conteudo factual (pensador, fato historico, dado): EMBUTE em 'Pensador em Destaque',
  'No Fio da Historia' ou 'Ampliando o Olhar'.
- Exercicios pedidos pelo blueprint: DESCARTADOS desta saida (ficam em caderno de atividades separado).
- Conexao biblica explicita: SEMPRE em 'O Que a Fe Diz' — nunca em outros blocos.

REGRAS DE EXECUCAO
==================
1. Leia primeiro o manual editorial e o CLAUDE.md especifico. Depois o blueprint da unidade.
2. Para cada blueprint_capitulo_NN_<slug>.md, gere exatamente um arquivo capitulo_NN_<slug>.md.
3. Salve todos os capitulos exclusivamente em: $OUTPUT_DIR
4. Nao altere os blueprints nem os arquivos de prompt/referencia.
5. Conteudo final em portugues brasileiro, em Markdown valido.
6. Apos gerar cada capitulo, valide contra o checklist do CLAUDE.md especifico antes de salvar.
7. Se algum criterio falhar (especialmente as regras invioláveis e a Regra 4.1), corrija ANTES de salvar.
"

START=$(date +%s)
echo -e "${C_DIM}log: $LOG_FILE${C_RESET}"

# Claude CLI: usar --print (modo nao-interativo). Codex: usar exec.
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

  # --- Validações pós-geração específicas de Filosofia e Sociologia ---
  echo
  log_info "Validando capítulos gerados contra regras de Filosofia e Sociologia..."
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
      log_error "$cap_name: tem heading 'Sua Parte' (proibido em Filosofia/Sociologia)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 3. Sem emoji em heading ## ou ### (exceto #### 📚 Ampliando o Olhar)
    if grep -qE '^##[^#].*[🤝📚⏰💭✏️🤔🌟💡⚠️📌✅⏸️🔍🏛️]' "$cap"; then
      log_error "$cap_name: heading ## ou ### tem emoji (proibido — só H4 'Ampliando o Olhar' permite)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 4. Headings pós-conteúdo presentes
    declare -a REQUIRED_HEADINGS=(
      "^#### 📚 Ampliando o Olhar"
      "^## No Fio da História"
      "^## O Que a Fé Diz"
      "^## Pensador em Destaque"
      "^## Você já pensou nisso\\?"
      "^## Simplificando"
      "^## Para não esquecer"
    )
    for required in "${REQUIRED_HEADINGS[@]}"; do
      if ! grep -qE "$required" "$cap"; then
        log_error "$cap_name: heading obrigatório ausente: ${required#^}"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    done

    # 5. Para não esquecer = 3 a 5 bullets
    BULLETS=$(awk '/^## Para não esquecer/{flag=1; next} /^## /{flag=0} flag && /^- /' "$cap" | wc -l | tr -d ' ')
    if [[ "$BULLETS" -lt 3 || "$BULLETS" -gt 5 ]]; then
      log_error "$cap_name: '## Para não esquecer' tem $BULLETS bullets (esperado 3 a 5)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 6. O Que a Fé Diz contém Para Conversar
    if ! awk '/^## O Que a Fé Diz/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '^>[[:space:]]+💬[[:space:]]+\*\*Para Conversar:\*\*'; then
      log_error "$cap_name: '## O Que a Fé Diz' não contém '> 💬 **Para Conversar:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 7. Pensador em Destaque contém Legado
    if ! awk '/^## Pensador em Destaque/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '🏛️[[:space:]]+\*\*Legado:\*\*'; then
      log_error "$cap_name: '## Pensador em Destaque' não contém '🏛️ **Legado:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 8. Sem dois boxes (>) consecutivos (heurística: bloco > seguido de linha em branco seguido de bloco >)
    # Detecta linhas '>' agrupadas, separadas por linha em branco, sem heading entre elas
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
    log_error "$VIOLATIONS violações de regras de Filosofia e Sociologia detectadas. Revise os capítulos antes de commitar."
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
