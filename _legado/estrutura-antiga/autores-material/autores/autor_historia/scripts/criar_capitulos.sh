#!/usr/bin/env bash
#
# criar_capitulos.sh — AUTOR especializado de Estudos Sociais e História.
# Gera capítulos finais a partir dos blueprints aprovados, com regras editoriais
# específicas (personagem histórico literal do blueprint, versículo literal do
# blueprint em "E para hoje...", sem exercícios no capítulo do aluno, ponteiro
# VP/cristão sem cristianização forçada).
#
# Uso:
#   ./scripts/criar_capitulos.sh                                                                  # interativo
#   ./scripts/criar_capitulos.sh -d "Estudos Sociais" -a "1ano"  -u "unidade-1-quem-sou-eu"
#   ./scripts/criar_capitulos.sh -d "Historia"        -a "1serie" -u "unidade-4" --dry-run
#   ./scripts/criar_capitulos.sh -d "Historia"        -a "2serie" -u "unidade-3" --yes
#
# Disciplina coberta: Historia.

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

# --- Constantes específicas de Estudos Sociais e História ---
DISCIPLINAS_VALIDAS=("Historia")
PROMPT_DIR_NAME="Estudos Sociais"  # 1:1 com Prompts Criador de Conteudo/Estudos Sociais/

BLUEPRINT_ROOT="${BLUEPRINT_ROOT:-$PROJECT_ROOT/PRODUCAO/Blueprint/blueprints}"
[[ -d "$BLUEPRINT_ROOT" ]] || BLUEPRINT_ROOT="$PROJECT_ROOT/PRODUCAO/Blueprint"
PROMPTS_ROOT="$PROJECT_ROOT/PRODUCAO/Prompts Criador de Conteudo"
REFERENCIAS_ROOT="$PROJECT_ROOT/PLANEJAMENTO/Referencias"
CONTEUDOS_ROOT="$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS"

# --- Parse args ---
DISCIPLINA="Historia"
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
echo -e "${C_BOLD}Disciplinas cobertas por este AUTOR (Estudos Sociais e História):${C_RESET}"
printf '  - %s\n' "${DISCIPLINAS_VALIDAS[@]}"
echo "  (Estudos Sociais usa anos: 1ano..9ano | História usa séries: 1serie..3serie)"
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
echo -e "${C_BOLD}Anos/séries disponíveis em $DISCIPLINA:${C_RESET}"
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

# --- Resolver prompt-autor (Estudos Sociais e História = 1:1, sem branching) ---
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
echo -e "${C_BOLD}Autoria de Estudos Sociais e História${C_RESET}"
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
confirm_run "Esta operação chama '$EXECUTOR' e gera ${#CHAPTER_BLUEPRINTS[@]} capítulo(s) de $DISCIPLINA. Tem custo de API." "$AUTO_CONFIRM" || exit 0

# --- Montar prompt para o executor ---
MODELOS_BLOCK=""
if [[ ${#MODELOS[@]} -gt 0 ]]; then
  MODELOS_BLOCK="MODELOS APROVADOS (use como referencia de TOM, RITMO e DENSIDADE -- NAO copie estrutura literal; estrutura vence sempre pelo prompt-autor.md):
$(printf '   - %s\n' "${MODELOS[@]}")
"
fi

REFS_PROMPT_LIST=""
[[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]] && REFS_PROMPT_LIST="Referencias adicionais especificas de Estudos Sociais e Historia (leia antes de escrever):
$(printf '   - %s\n' "${REFERENCIAS_PROMPT[@]}")
"

REFS_GLOBAIS_LIST=""
[[ ${#REFERENCIAS_GLOBAIS[@]} -gt 0 ]] && REFS_GLOBAIS_LIST="Referencias compartilhadas do pipeline:
$(printf '   - %s\n' "${REFERENCIAS_GLOBAIS[@]}")
"

PROMPT="Voce vai escrever todos os capitulos finais de uma unidade didatica de $DISCIPLINA (AUTOR de Estudos Sociais e Historia) a partir dos blueprints aprovados.

CONTEXTO DO PIPELINE
====================
Raiz do projeto: $PROJECT_ROOT
Disciplina:      $DISCIPLINA
Ano/Serie:       $ANO
Unidade:         $UNIT_STEM

ARQUIVOS DE LEITURA OBRIGATORIA
================================

1. Manual editorial de Estudos Sociais e Historia (estrutura fixa, estilo, regras):
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

REGRAS INVIOLAVEIS DE ESTUDOS SOCIAIS E HISTORIA (do CLAUDE.md)
=================================================================
- NUNCA criar bloco de exercicios (lista de questoes numeradas para o aluno responder) no capitulo final.
- NUNCA criar topico numerado depois de '## 4.' (capitulo tem EXATAMENTE 4 topicos numerados).
- NUNCA usar o heading '## Explorando os Conceitos' (fluxo direto da introducao para '## 1.').
- NUNCA abrir a introducao com 'Neste capitulo vamos...' ou listar datas/nomes/conceitos.
- NUNCA ultrapassar a extensao da introducao por serie:
    1o-3o ano EF I:  2-3 frases
    4o-5o ano EF I:  3-4 frases
    6o-7o ano EF II: 3-4 frases
    8o-9o ano EF II: 4-5 frases
    1a-2a serie EM:  5-6 frases
    3a serie EM:     5-6 frases
- NUNCA usar rotulos genericos como '**Valores para nossa vida:**' no bloco '## E para hoje...' —
  usar transicao narrativa contextual ao tema (ex.: 'Com esse versiculo, podemos aprender que:').
- NUNCA colocar mais de 2 tabelas no capitulo. Tabelas SUBSTITUEM prosa/lista, NUNCA acrescentam novo conteudo.
- NUNCA colocar mais de 2 boxes por secao principal '##' numerada (minimo 1).
- NUNCA usar boxes ('💭 Pense um pouco', '⏸️ Pare e Pense', '💡 Voce sabia?', '💬 Para Conversar')
  sem o '>' a frente — formatacao OBRIGATORIAMENTE em blockquote com quebra de linha interna
  (titulo com 2 espacos no final + conteudo na linha seguinte, ambos dentro de '>').

REGRA DO PERSONAGEM-CHAVE + PONTEIRO VP/CRISTAO (VISAO DE MUNDO CRISTA)
=========================================================================
INVIOLAVEL em '## Esse foi o \"cara\"' e em '## E para hoje...':

- Personagem do bloco 'Esse foi o \"cara\"' = EXATAMENTE o do blueprint. NAO substituir, NAO inventar,
  NAO compor com outro. 3 bullets biograficos focados (origem/contexto, contribuicao central, marco) +
  '🏛️ **Legado:**' em uma linha curta.
- Versiculo de 'E para hoje...' = EXATAMENTE o do blueprint. NAO trocar referencia, NAO parafrasear.
  O versiculo aparece em italico/negrito com referencia completa.
- Conexao crista sem suavizacao nem moralismo barato. O bloco 'E para hoje...' faz a ponte entre o
  tema historico/social e a Visao de Mundo Crista (VMC) — ancorada na Escritura, NAO em opiniao do autor.
- NAO confundir conexao crista com cristianizacao forcada da historia. Quando o tema e nao-cristao
  (Atenas paga, Roma imperial, civilizacoes pre-colombianas, Iluminismo), preserve a integridade
  historica ANTES de apontar paralelos com a Escritura. A VMC ilumina, nao distorce.
- '## Enquanto isso...' e DISTINTO de '## E para hoje...'. 'Enquanto isso...' mostra contemporaneidade
  entre o evento estudado e a trajetoria crista (paralelo historico). 'E para hoje...' aplica a
  Escritura ao aluno hoje (comentario escrituristico).

REGRAS ESTRUTURAIS
==================
- Introducao: cena de abertura → tensao central → chamada ao aluno com 💭, seguida obrigatoriamente
  de '> 💬 **Para Conversar:**' em blockquote com quebra interna.
- Cada topico principal '##' abre com 2-3 frases sinteticas + subtopicos '###' com perguntas orientadoras.
  Nao desenvolver conteudo no '##' — explicacao vai nos '###'.
- Cada subtopico '###' tem: prosa direta (conceito → explicacao → exemplo) + frase de transicao + lista.
  Minimo 1, maximo 2 boxes por secao principal '##'.
- Boxes (todos em blockquote '>' com quebra interna):
    > 💭 **Pense um pouco:** — reflexao individual curta
    > ⏸️ **Pare e Pense:** — dilema etico/politico/decisao historica
    > 💡 **Voce sabia?** — curiosidade historica em uma frase
    > 💬 **Para Conversar:** — pergunta reflexiva (introducao + 'E para hoje...')
- '## 🤝 Sua Parte' — 1 frase aplicando o tema ao cotidiano (cidadania).
- '#### 📚 Curiosidade dos Estudos Sociais' — H4 com emoji, 1-2 frases.
- '## Enquanto isso...' — prosa de contemporaneidade historico-crista + lista 'O que estava em jogo:' com bullets.
- '## E para hoje...' — versiculo (italico/negrito + ref) → comentario curto → transicao narrativa
  contextual (NAO usar 'Valores para nossa vida') → bullets de aprendizados → frase de sintese →
  '> 💬 **Para Conversar:**'.
- '## Esse foi o \"cara\"' — 3 bullets biograficos focados + '🏛️ **Legado:**' em uma linha.
- '## Voce ja pensou nisso?' — 2-3 frases problematizando julgamentos simplistas.
- '## Simplificando' — EM: 1 paragrafo denso; EF: maximo 2 frases.
- '## Para nao esquecer' — 3 a 4 bullets estilo 'memory triggers' (palavras-chave, nao frases completas).

ESTRUTURA FIXA DOS BLOCOS POS-CONTEUDO (NESTA ORDEM EXATA)
============================================================
1. ## 🤝 Sua Parte
2. #### 📚 Curiosidade dos Estudos Sociais  (H4 com emoji)
3. ## Enquanto isso...
4. ## E para hoje...                        (com Para Conversar no fim)
5. ## Esse foi o \"cara\"                     (com 🏛️ Legado)
6. ## Voce ja pensou nisso?
7. ## Simplificando
8. ## Para nao esquecer                     (3-4 bullets)

ADAPTACAO POR SERIE (EF E EM)
==============================
- 1o-3o ano EF I: alfabetizacao em curso. Frases muito curtas, vocabulario do cotidiano, sem siglas,
  sem datas. Conteudo concreto: familia, casa, escola, vizinhanca. Historia como narrativa simples
  (antes/depois). Geografia ancorada em lugares conhecidos.
- 4o-5o ano EF I: ampliacao para municipio, estado, Brasil. Linha do tempo simples, primeiras nocoes
  de mapa. Conceitos (cultura, trabalho, paisagem) sempre com exemplo concreto. Frases curtas.
- 6o-7o ano EF II: frases curtas, exemplos concretos, cena simples na introducao. Historia
  antiga/medieval com personagens identificaveis. Geografia integrada.
- 8o-9o ano EF II: conceitos (revolucao, imperio, nacionalismo) com explicacao clara. Introducao com
  dilema/decisao historica. Geografia politica/economica integrada a narrativa.
- 1a-2a serie EM: analises profundas, processos globais, contradicoes, perspectivas multiplas.
  Introducao com cenario geopolitico ou tensao entre forcas historicas.
- 3a serie EM: sintese de processos, conexoes com vestibulares/ENEM, interpretacao historiografica
  complexa. Introducao com contrastes historiograficos ou provocacoes analiticas.

HIERARQUIA DE AUTORIDADE
========================
Quando o blueprint pedir conteudo que nao cabe na estrutura padrao:
- Estrutura: segue o prompt-autor (4 topicos numerados + 8 blocos pos-conteudo).
- Conteudo factual (data, personagem, conceito, dado): EMBUTE no bloco mais natural — 'Esse foi o
  cara' (personagem), 'Curiosidade' (fato pontual), 'Enquanto isso...' (paralelo historico-cristao)
  ou dentro dos topicos numerados.
- Exercicios pedidos pelo blueprint: DESCARTADOS desta saida (ficam em caderno de atividades separado).
- Conexao biblica explicita: SEMPRE em 'E para hoje...' — 'Enquanto isso...' e paralelo historico-cristao,
  nao comentario escrituristico.
- Personagem do blueprint: LITERAL e inegociavel em 'Esse foi o cara'.
- Versiculo do blueprint: LITERAL e inegociavel em 'E para hoje...'.

REGRAS DE EXECUCAO
==================
1. Leia primeiro o manual editorial e o CLAUDE.md especifico. Depois o blueprint da unidade.
2. Para cada blueprint_capitulo_NN_<slug>.md, gere exatamente um arquivo capitulo_NN_<slug>.md.
3. Salve todos os capitulos exclusivamente em: $OUTPUT_DIR
4. Nao altere os blueprints nem os arquivos de prompt/referencia.
5. Conteudo final em portugues brasileiro, em Markdown valido.
6. Apos gerar cada capitulo, valide contra o checklist do CLAUDE.md especifico antes de salvar.
7. Se algum criterio falhar (especialmente as regras invioláveis e a regra do personagem-chave +
   ponteiro VP/cristao), corrija ANTES de salvar.
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

  # --- Validações pós-geração específicas de Estudos Sociais e História ---
  echo
  log_info "Validando capítulos gerados contra regras de Estudos Sociais e História..."
  VIOLATIONS=0
  for cap in "$OUTPUT_DIR"/capitulo_*.md; do
    cap_name=$(basename "$cap")

    # 1. Sem ## 5. (ou superior) — máximo 4 tópicos numerados
    if grep -qE '^## [5-9]\.' "$cap"; then
      log_error "$cap_name: tem heading '## N.' com N>=5 (proibido — máx. 4 tópicos)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 2. Sem ## Explorando os Conceitos
    if grep -qE '^##[[:space:]]+Explorando os Conceitos' "$cap"; then
      log_error "$cap_name: tem heading '## Explorando os Conceitos' (proibido — fluxo direto para ## 1.)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 3. Headings pós-conteúdo presentes na ordem correta
    declare -a REQUIRED_HEADINGS=(
      "^## 🤝 Sua Parte"
      "^#### 📚 Curiosidade dos Estudos Sociais"
      "^## Enquanto isso\\.\\.\\."
      "^## E para hoje\\.\\.\\."
      "^## Esse foi o \"cara\""
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

    # 4. Para não esquecer = 3 a 4 bullets
    BULLETS=$(awk '/^## Para não esquecer/{flag=1; next} /^## /{flag=0} flag && /^- /' "$cap" | wc -l | tr -d ' ')
    if [[ "$BULLETS" -lt 3 || "$BULLETS" -gt 4 ]]; then
      log_error "$cap_name: '## Para não esquecer' tem $BULLETS bullets (esperado 3 a 4)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 5. E para hoje... contém Para Conversar (em blockquote)
    if ! awk '/^## E para hoje\.\.\./{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '^>[[:space:]]+💬[[:space:]]+\*\*Para Conversar:\*\*'; then
      log_error "$cap_name: '## E para hoje...' não contém '> 💬 **Para Conversar:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 6. E para hoje... NÃO contém o rótulo proibido
    if awk '/^## E para hoje\.\.\./{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '\*\*Valores para nossa vida'; then
      log_error "$cap_name: '## E para hoje...' contém rótulo proibido '**Valores para nossa vida:**' — usar transição narrativa contextual"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 7. Esse foi o "cara" contém Legado
    if ! awk '/^## Esse foi o "cara"/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '🏛️[[:space:]]+\*\*Legado:\*\*'; then
      log_error "$cap_name: '## Esse foi o \"cara\"' não contém '🏛️ **Legado:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 8. Introdução contém Para Conversar (heurística: linha com "> 💬 **Para Conversar:**" antes do
    #    primeiro "## 1." do capítulo)
    INTRO_PC=$(awk '/^## 1\./{exit} {print}' "$cap" | grep -cE '^>[[:space:]]+💬[[:space:]]+\*\*Para Conversar:\*\*')
    if [[ "${INTRO_PC:-0}" -eq 0 ]]; then
      log_error "$cap_name: introdução não contém '> 💬 **Para Conversar:**' antes de '## 1.'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 9. Máximo 2 tabelas no capítulo
    TABLES=$(awk '
      /^[[:space:]]*\|.*\|/ {
        if (!in_table) { count++; in_table=1 }
        next
      }
      { in_table=0 }
      END { print count+0 }
    ' "$cap")
    if [[ "$TABLES" -gt 2 ]]; then
      log_error "$cap_name: $TABLES tabelas detectadas (máximo 2)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 10. Boxes em blockquote — heurística: títulos de boxes precisam estar em linha que comece com '>'
    #     (procura por '💭 **Pense um pouco', '⏸️ **Pare e Pense', '💡 **Você sabia', '💬 **Para Conversar'
    #      em linha que NÃO começa com '>')
    if grep -nE '^[^>]*(💭 \*\*Pense um pouco|⏸️ \*\*Pare e Pense|💡 \*\*Você sabia|💬 \*\*Para Conversar)' "$cap" > /dev/null 2>&1; then
      OFFENDERS=$(grep -nE '^[^>]*(💭 \*\*Pense um pouco|⏸️ \*\*Pare e Pense|💡 \*\*Você sabia|💬 \*\*Para Conversar)' "$cap" | head -3 | cut -d: -f1 | tr '\n' ',' | sed 's/,$//')
      log_error "$cap_name: box(es) sem '>' em blockquote (linhas: $OFFENDERS)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  done

  if [[ $VIOLATIONS -gt 0 ]]; then
    log_error "$VIOLATIONS violações de regras de Estudos Sociais e História detectadas. Revise os capítulos antes de commitar."
    exit 1
  fi

  auto_publish_output "$OUTPUT_DIR" "$DISCIPLINA" "$ANO" "$UNIT_STEM"

  log_ok "$COUNT capitulo(s) em $OUTPUT_DIR ${C_DIM}(${DURATION}s)${C_RESET} — todas as validações passaram."
else
  END=$(date +%s); DURATION=$((END - START))
  log_error "executor falhou (exit ${EXEC_EXIT:-?}, ${DURATION}s) — ver $LOG_FILE"
  exit "${EXEC_EXIT:-1}"
fi
