#!/usr/bin/env bash
#
# criar_capitulos.sh — AUTOR especializado de Matemática 1.
# Gera capítulos finais a partir dos blueprints aprovados, com regras editoriais
# específicas (LaTeX inegociável, sem bloco "Praticando", exemplos resolvidos
# integrados ao fluxo).
#
# Uso:
#   ./scripts/criar_capitulos.sh                                              # interativo
#   ./scripts/criar_capitulos.sh -d "Matematica" -a "1serie" -u "unidade-1-teoria-dos-conjuntos"
#   ./scripts/criar_capitulos.sh -d "Matematica" -a "9ano"   -u "unidade-3" --dry-run
#   ./scripts/criar_capitulos.sh -d "Matematica" -a "1serie" -u "unidade-2" --yes
#
# Disciplina coberta: Matematica.

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

# --- Constantes específicas de Matemática 1 ---
DISCIPLINAS_VALIDAS=("Matematica")
PROMPT_DIR_NAME="Matematica 1"  # 1:1 com Prompts Criador de Conteudo/Matematica 1/

BLUEPRINT_ROOT="${BLUEPRINT_ROOT:-$PROJECT_ROOT/PRODUCAO/Blueprint/blueprints}"
[[ -d "$BLUEPRINT_ROOT" ]] || BLUEPRINT_ROOT="$PROJECT_ROOT/PRODUCAO/Blueprint"
PROMPTS_ROOT="$PROJECT_ROOT/PRODUCAO/Prompts Criador de Conteudo"
REFERENCIAS_ROOT="$PROJECT_ROOT/PLANEJAMENTO/Referencias"
CONTEUDOS_ROOT="$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS"

# --- Parse args ---
DISCIPLINA="Matematica"
ANO=""
UNIDADE=""
EXECUTOR="claude"
DRY_RUN=0
FORCE=0
AUTO_CONFIRM=0

usage() {
  sed -n '3,16p' "$0" | sed 's/^# \{0,1\}//'
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

# --- Coletar disciplina (sempre listar, mesmo se for só uma) ---
echo -e "${C_BOLD}Disciplinas cobertas por este AUTOR (Matemática 1):${C_RESET}"
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

# --- Resolver prompt-autor (Matemática 1 = 1:1, sem branching) ---
PROMPT_DIR_FULL="$PROMPTS_ROOT/$PROMPT_DIR_NAME"
PROMPT_AUTOR="$PROMPT_DIR_FULL/prompt-autor.md"
[[ -f "$PROMPT_AUTOR" ]] || { log_error "prompt-autor.md ausente: $PROMPT_AUTOR"; exit 1; }

# --- Coletar referências do prompt (referencia-*.md + memoria-autor.md) ---
declare -a REFERENCIAS_PROMPT=()
while IFS= read -r f; do REFERENCIAS_PROMPT+=("$f"); done \
  < <(find "$PROMPT_DIR_FULL" -maxdepth 1 -type f \( -name 'referencia-*.md' -o -name 'memoria-autor.md' \) | sort)

# --- Coletar capítulos-modelo aprovados (modelo-*.md) ---
# Usar como referência de tom/ritmo/densidade. NUNCA copiar estrutura literal — vence prompt-autor.
declare -a MODELOS=()
while IFS= read -r f; do MODELOS+=("$f"); done \
  < <(find "$PROMPT_DIR_FULL" -maxdepth 1 -type f -name 'modelo-*.md' | sort)

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
echo -e "${C_BOLD}Autoria de Matemática 1${C_RESET}"
echo "  Disciplina:       $DISCIPLINA"
echo "  Ano/Série:        $ANO"
echo "  Unidade:          $UNIT_STEM"
echo "  Blueprints:       $BLUEPRINT_DIR"
echo "  Prompt-autor:     $PROMPT_AUTOR"
if [[ ${#MODELOS[@]} -gt 0 ]]; then
  echo "  Modelos aprovados: ${#MODELOS[@]} arquivo(s)"
  for m in "${MODELOS[@]}"; do echo "    - $(basename "$m")"; done
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
confirm_run "Esta operação chama '$EXECUTOR' e gera ${#CHAPTER_BLUEPRINTS[@]} capítulo(s) de Matemática 1. Tem custo de API." "$AUTO_CONFIRM" || exit 0

# --- Determinar se a série inclui o bloco "## Fórmulas do capítulo" (8º ano em diante) ---
case "$ANO" in
  8ano|9ano|1serie|2serie|3serie) FORMULAS_BLOCK_REQUIRED=1 ;;
  *)                              FORMULAS_BLOCK_REQUIRED=0 ;;
esac

# --- Montar prompt para o executor ---
MODELOS_BLOCK=""
if [[ ${#MODELOS[@]} -gt 0 ]]; then
  MODELOS_BLOCK="MODELOS APROVADOS (use como referencia de TOM, RITMO e DENSIDADE -- NAO copie estrutura literal; estrutura vence sempre o prompt-autor.md):
$(printf '   - %s\n' "${MODELOS[@]}")
"
fi

REFS_PROMPT_LIST=""
[[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]] && REFS_PROMPT_LIST="Referencias adicionais especificas de Matematica 1 (leia antes de escrever):
$(printf '   - %s\n' "${REFERENCIAS_PROMPT[@]}")
"

REFS_GLOBAIS_LIST=""
[[ ${#REFERENCIAS_GLOBAIS[@]} -gt 0 ]] && REFS_GLOBAIS_LIST="Referencias compartilhadas do pipeline:
$(printf '   - %s\n' "${REFERENCIAS_GLOBAIS[@]}")
"

FORMULAS_BLOCK_NOTE=""
if [[ $FORMULAS_BLOCK_REQUIRED -eq 1 ]]; then
  FORMULAS_BLOCK_NOTE="A serie '$ANO' EXIGE o bloco final '## Formulas do capitulo' (8o ano em diante). Inclua-o."
else
  FORMULAS_BLOCK_NOTE="A serie '$ANO' NAO TEM o bloco '## Formulas do capitulo' (apenas 8o ano em diante). NAO inclua."
fi

PROMPT="Voce vai escrever todos os capitulos finais de uma unidade didatica de MATEMATICA 1 (aritmetica, algebra, conjuntos e funcoes) a partir dos blueprints aprovados.

CONTEXTO DO PIPELINE
====================
Raiz do projeto: $PROJECT_ROOT
Disciplina:      $DISCIPLINA
Ano/Serie:       $ANO
Unidade:         $UNIT_STEM

ARQUIVOS DE LEITURA OBRIGATORIA
================================

1. Manual editorial de Matematica 1 (estrutura fixa, estilo, regras LaTeX):
   $PROMPT_AUTOR

2. CLAUDE.md especifico deste AUTOR (regras invioláveis e validacoes):
   $AUTOR_DIR/CLAUDE.md

3. Blueprint da unidade (lei geral aplicavel a todos os capitulos):
   $UNIDADE_BLUEPRINT

4. Blueprints de capitulo a processar (um arquivo de saida por blueprint, na ordem listada):
$(printf '   - %s\n' "${CHAPTER_BLUEPRINTS[@]}")

${MODELOS_BLOCK}${REFS_PROMPT_LIST}${REFS_GLOBAIS_LIST}
DIRETORIO OBRIGATORIO DE SAIDA
==============================
$OUTPUT_DIR

REGRAS INVIOLAVEIS DE LATEX (renderizacao CodeCogs/AutoLaTeX -- INEGOCIAVEL)
==============================================================================
- NUNCA usar '\\text{}' dentro de \$\$ ... \$\$. Substituir por '\\mathrm{}' para texto em modo matematico.
- NUNCA usar '\\;' (espaco medio) nem '\\,' (espaco fino) -- renderizam como ponto e virgula/virgula literal.
  Padrao: numero colado a unidade -- ex: \$\$1\\mathrm{km} = 1000\\mathrm{m}\$\$.
- NUNCA usar caracteres acentuados ou cedilha (c, a, e, i, o, u, a, e, o, a, o, etc.) DENTRO de \$\$ ... \$\$.
  Apenas ASCII (a-z, A-Z, 0-9) e comandos LaTeX. Rotulos com acento ficam FORA do bloco LaTeX.
- NUNCA usar '\\begin{array}...\\end{array}' ou qualquer estrutura LaTeX multilinha dentro de \$\$ ... \$\$.
  O renderizador captura linha a linha e quebra. Use sempre expressao em linha unica.
- NUNCA usar '\\qquad' ou comandos que coloquem duas matrizes/formulas lado a lado. Cada formula em seu proprio \$\$ \$\$.

REGRAS INVIOLAVEIS ESTRUTURAIS
==============================
- NUNCA criar bloco '## Praticando' (ou '## 🤝 Sua Parte', '## Atividades') com lista de exercicios para o aluno.
  Esta disciplina NAO TEM bloco de exercicios livres no capitulo do aluno. Os exercicios resolvidos
  integrados ao fluxo (Veja o exemplo abaixo + passo a passo) PERMANECEM -- so o bloco final 'Praticando' e proibido.
- NUNCA usar '### EXERCICIO RESOLVIDO' como rotulo. Introduzir com frase natural:
  'Veja o exemplo abaixo.', 'Olhe o exemplo abaixo.', 'Veja so:'.
- NUNCA usar '*' (asterisco) como marcador de lista. Sempre '-' (hifen).
- NUNCA abrir a introducao com 'Neste capitulo vamos...'.
- NUNCA ultrapassar 3 frases na '## INTRODUCAO'.
- NUNCA ultrapassar 2 frases em '## NA VIDA REAL' ou '## Simplificando'.
- NUNCA compactar multiplas operacoes na mesma linha em exemplo resolvido (EF II / EM): cada etapa em linha separada.
- NUNCA colocar '> 💬 **Para Conversar:**' fora de '## E A BIBLIA NISSO?'.
- NUNCA colocar mais de 2 boxes por secao principal '## N.' (e somente quando um for 🔢 Padrao e outro for ⚠️ Atencao).

NOTACAO BRASILEIRA DE INTERVALOS (colchetes invertidos, nao parenteses)
========================================================================
- Aberto:                \$\$]a, b[\$\$
- Semi-aberto a direita: \$\$[a, b[\$\$
- Semi-aberto a esquerda: \$\$]a, b]\$\$
- Fechado:               \$\$[a, b]\$\$

ESTRUTURA FIXA DO CAPITULO
==========================
# CAPITULO X -- TEMA

## INTRODUCAO
[max 3 frases, direto]

> 💭 **Pense um pouco:**
> [pergunta]

---

## 1. [TOPICO]
### [Conceito]
[explicacao -- max 2 frases antes de lista]

Veja o exemplo abaixo.

[enunciado]

**Resolucao:**

- **Passo 1:** [...]
[cada etapa em linha separada]

- **Passo 2:** [...]

**Resposta:** [...]

## 2. [TOPICO]  ## 3. ...   (sem teto rigido em Matematica)

---

## NA VIDA REAL  (max 2 frases)

---

## E A BIBLIA NISSO?
<center>

**\"versiculo.\" -- Referencia**

</center>

[1-2 frases conectando, sem analogia explicita 'assim como X, Y']

> 💬 **Para Conversar:** [pergunta]

---

## Simplificando  (max 2 frases densas)

---

## Formulas do capitulo  (APENAS 8o ano em diante)

ADAPTACAO POR SERIE
====================
- 4o-5o ano EF I: linguagem simples, frases curtas, exemplos concretos. Exemplos resolvidos em FORMATO OPCAO B
  (so expressao + resultado em LaTeX simples, sem coluna a coluna). SEM bloco 'Formulas do capitulo'.
- 6o-7o ano EF II: transicao concreto -> abstrato. Vocabulario matematico gradual. SEM bloco 'Formulas do capitulo'.
- 8o-9o ano EF II: algebra consolidada. Cada etapa em linha separada. COM bloco 'Formulas do capitulo'.
- 1a-2a serie EM: formalismo completo. Conexoes ENEM/vestibular. COM bloco 'Formulas do capitulo'.

${FORMULAS_BLOCK_NOTE}

HIERARQUIA DE AUTORIDADE
========================
Quando o blueprint pedir conteudo que nao cabe na estrutura padrao:
- Estrutura: segue o prompt-autor (fluxo conceito->exemplo + 4 blocos pos-conteudo).
- Conteudo factual (formula, propriedade, dado): EMBUTE no topico numerado correspondente ou em 'NA VIDA REAL'.
- Exercicios 'para o aluno praticar' pedidos pelo blueprint: DESCARTADOS (esta disciplina nao tem 'Praticando').
  Os exercicios RESOLVIDOS integrados ao fluxo permanecem.
- Conexao biblica explicita: SEMPRE em 'E A BIBLIA NISSO?' -- nunca em outros blocos.
- Marcador de lista: SEMPRE '-' (hifen), mesmo que blueprint use '*'.

REGRAS DE EXECUCAO
==================
1. Leia primeiro o manual editorial e o CLAUDE.md especifico. Depois o blueprint da unidade.
2. Para cada blueprint_capitulo_NN_<slug>.md, gere exatamente um arquivo capitulo_NN_<slug>.md.
3. Salve todos os capitulos exclusivamente em: $OUTPUT_DIR
4. Nao altere os blueprints nem os arquivos de prompt/referencia.
5. Conteudo final em portugues brasileiro, em Markdown valido.
6. Apos gerar cada capitulo, valide contra o checklist do CLAUDE.md especifico antes de salvar.
7. Se algum criterio falhar (especialmente as regras invioláveis de LaTeX e o bloco 'Praticando'), corrija ANTES de salvar.
"

START=$(date +%s)
echo -e "${C_DIM}log: $LOG_FILE${C_RESET}"

# Claude CLI: --print (modo nao-interativo) + --dangerously-skip-permissions
# (necessario para o agente escrever arquivos sem prompt interativo).
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

  # --- Validações pós-geração específicas de Matemática 1 ---
  echo
  log_info "Validando capítulos gerados contra regras de Matemática 1..."
  VIOLATIONS=0
  for cap in "$OUTPUT_DIR"/capitulo_*.md; do
    cap_name=$(basename "$cap")

    # ===== LaTeX inegociável =====

    # 1. Sem \text{} (usar \mathrm{})
    if grep -nE '\\text\{' "$cap" > /dev/null; then
      LINES=$(grep -nE '\\text\{' "$cap" | head -3 | cut -d: -f1 | tr '\n' ',' | sed 's/,$//')
      log_error "$cap_name: usa '\\text{}' (proibido — usar '\\mathrm{}'). Linhas: $LINES"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 2. Sem \; ou \, (espaços médio/fino)
    if grep -nE '\\[;,]' "$cap" > /dev/null; then
      LINES=$(grep -nE '\\[;,]' "$cap" | head -3 | cut -d: -f1 | tr '\n' ',' | sed 's/,$//')
      log_error "$cap_name: usa '\\;' ou '\\,' (proibido — renderizam como pontuação literal). Linhas: $LINES"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 3. Sem \qquad ou \begin{array}
    if grep -nE '\\qquad|\\begin\{array\}' "$cap" > /dev/null; then
      LINES=$(grep -nE '\\qquad|\\begin\{array\}' "$cap" | head -3 | cut -d: -f1 | tr '\n' ',' | sed 's/,$//')
      log_error "$cap_name: usa '\\qquad' ou '\\begin{array}' (proibido — quebram o renderizador). Linhas: $LINES"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 4. Sem caracteres acentuados dentro de $$ ... $$
    # Extrai conteúdo entre $$ (em mesma linha; AutoLaTeX só captura linha a linha mesmo)
    # e procura por qualquer letra acentuada portuguesa.
    BAD_LATEX=$(awk '
      {
        line = $0
        while (match(line, /\$\$[^$]*\$\$/)) {
          inner = substr(line, RSTART+2, RLENGTH-4)
          if (inner ~ /[áàâãäéèêëíìîïóòôõöúùûüçÁÀÂÃÄÉÈÊËÍÌÎÏÓÒÔÕÖÚÙÛÜÇ]/) {
            print NR ":" inner
          }
          line = substr(line, RSTART + RLENGTH)
        }
      }
    ' "$cap")
    if [[ -n "$BAD_LATEX" ]]; then
      FIRST=$(echo "$BAD_LATEX" | head -2)
      log_error "$cap_name: caracteres acentuados dentro de \$\$ ... \$\$ (proibido — apenas ASCII). Trecho(s):"
      while IFS= read -r line; do echo "    $line"; done <<< "$FIRST"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # ===== Estrutura =====

    # 5. Sem heading "### EXERCÍCIO RESOLVIDO" (ou variantes)
    if grep -niE '^###[[:space:]]+(exerc[íi]cio|exemplo)[[:space:]]+resolvido' "$cap" > /dev/null; then
      log_error "$cap_name: heading '### EXERCÍCIO RESOLVIDO' (ou similar) presente — usar frase natural ('Veja o exemplo abaixo.')"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 6. Sem bloco "## Praticando" (ou variantes proibidas)
    if grep -nE '^##[[:space:]]+(🤝[[:space:]]+)?(Praticando|Sua Parte|Atividades|Exerc[íi]cios)' "$cap" > /dev/null; then
      LINES=$(grep -nE '^##[[:space:]]+(🤝[[:space:]]+)?(Praticando|Sua Parte|Atividades|Exerc[íi]cios)' "$cap" | head -2 | cut -d: -f1 | tr '\n' ',' | sed 's/,$//')
      log_error "$cap_name: contém heading proibido ('Praticando' / 'Sua Parte' / 'Atividades'). Linhas: $LINES"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 7. Sem marcador '*' em listas (apenas '-')
    # Detecta linhas começando com '* ' (asterisco + espaço), ignorando '**' (negrito).
    if grep -nE '^[[:space:]]*\* [^*]' "$cap" > /dev/null; then
      LINES=$(grep -nE '^[[:space:]]*\* [^*]' "$cap" | head -3 | cut -d: -f1 | tr '\n' ',' | sed 's/,$//')
      log_error "$cap_name: marcador '*' em lista (proibido — usar '-'). Linhas: $LINES"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 8. Headings pós-conteúdo presentes na ordem
    declare -a REQUIRED_HEADINGS=(
      "^## NA VIDA REAL"
      "^## E A BÍBLIA NISSO\\?"
      "^## Simplificando"
    )
    for required in "${REQUIRED_HEADINGS[@]}"; do
      if ! grep -qE "$required" "$cap"; then
        log_error "$cap_name: heading obrigatório ausente: ${required#^}"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    done

    # 9. E A BÍBLIA NISSO? contém Para Conversar
    if ! awk '/^## E A BÍBLIA NISSO\?/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '^>[[:space:]]+💬[[:space:]]+\*\*Para Conversar:\*\*'; then
      log_error "$cap_name: '## E A BÍBLIA NISSO?' não contém '> 💬 **Para Conversar:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 10. E A BÍBLIA NISSO? contém versículo em <center>
    if ! awk '/^## E A BÍBLIA NISSO\?/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '<center>'; then
      log_error "$cap_name: '## E A BÍBLIA NISSO?' não contém versículo em '<center>...</center>'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 11. Box "💭 Pense um pouco:" presente após INTRODUÇÃO
    if ! grep -qE '^>[[:space:]]+💭[[:space:]]+\*\*Pense um pouco:\*\*' "$cap"; then
      log_error "$cap_name: box obrigatório '> 💭 **Pense um pouco:**' ausente (vai logo após '## INTRODUÇÃO')"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 12. ## Fórmulas do capítulo: presença depende da série
    HAS_FORMULAS=0
    grep -qE '^## Fórmulas do capítulo' "$cap" && HAS_FORMULAS=1
    if [[ $FORMULAS_BLOCK_REQUIRED -eq 1 && $HAS_FORMULAS -eq 0 ]]; then
      log_error "$cap_name: série '$ANO' exige '## Fórmulas do capítulo' (8º ano em diante) e o bloco está ausente"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
    if [[ $FORMULAS_BLOCK_REQUIRED -eq 0 && $HAS_FORMULAS -eq 1 ]]; then
      log_error "$cap_name: série '$ANO' NÃO deve ter '## Fórmulas do capítulo' (apenas 8º ano em diante)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  done

  if [[ $VIOLATIONS -gt 0 ]]; then
    log_error "$VIOLATIONS violações de regras de Matemática 1 detectadas. Revise os capítulos antes de commitar."
    exit 1
  fi

  auto_publish_output "$OUTPUT_DIR" "$DISCIPLINA" "$ANO" "$UNIT_STEM"

  log_ok "$COUNT capitulo(s) em $OUTPUT_DIR ${C_DIM}(${DURATION}s)${C_RESET} — todas as validações passaram."
else
  END=$(date +%s); DURATION=$((END - START))
  log_error "executor falhou (exit ${EXEC_EXIT:-?}, ${DURATION}s) — ver $LOG_FILE"
  exit "${EXEC_EXIT:-1}"
fi
