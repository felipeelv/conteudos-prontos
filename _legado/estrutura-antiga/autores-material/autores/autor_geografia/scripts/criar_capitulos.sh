#!/usr/bin/env bash
#
# criar_capitulos.sh — AUTOR especializado de Geografia (Ensino Médio).
# Gera capítulos finais a partir dos blueprints aprovados, com regras editoriais
# específicas de Geografia (dado cartográfico ancorado em lugar real,
# articulação de escalas local-regional-global, dois "Para Conversar",
# exceções de emoji em '## 🤝 Sua Parte' e '#### 📚 Curiosidade Geográfica').
#
# Uso:
#   ./scripts/criar_capitulos.sh                                              # interativo
#   ./scripts/criar_capitulos.sh -d "Geografia" -a "1serie" -u "unidade-1-introducao-a-geografia"
#   ./scripts/criar_capitulos.sh -d "Geografia" -a "2serie" -u "unidade-3-urbanizacao" --dry-run
#   ./scripts/criar_capitulos.sh -d "Geografia" -a "3serie" -u "unidade-7-ordem-mundial" --yes
#
# Disciplina coberta: Geografia.

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

# --- Constantes específicas de Geografia ---
DISCIPLINAS_VALIDAS=("Geografia")
PROMPT_DIR_NAME="Geografia"  # 1:1 com Prompts Criador de Conteudo/Geografia/

BLUEPRINT_ROOT="${BLUEPRINT_ROOT:-$PROJECT_ROOT/PRODUCAO/Blueprint/blueprints}"
[[ -d "$BLUEPRINT_ROOT" ]] || BLUEPRINT_ROOT="$PROJECT_ROOT/PRODUCAO/Blueprint"
PROMPTS_ROOT="$PROJECT_ROOT/PRODUCAO/Prompts Criador de Conteudo"
REFERENCIAS_ROOT="$PROJECT_ROOT/PLANEJAMENTO/Referencias"
CONTEUDOS_ROOT="$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS"

# --- Parse args ---
DISCIPLINA="Geografia"
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

# --- Coletar disciplina (sempre listar) ---
echo -e "${C_BOLD}Disciplinas cobertas por este AUTOR (Geografia):${C_RESET}"
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

# --- Resolver prompt-autor (Geografia = 1:1, sem branching) ---
PROMPT_DIR_FULL="$PROMPTS_ROOT/$PROMPT_DIR_NAME"
PROMPT_AUTOR="$PROMPT_DIR_FULL/prompt-autor.md"
[[ -f "$PROMPT_AUTOR" ]] || { log_error "prompt-autor.md ausente: $PROMPT_AUTOR"; exit 1; }

# --- Coletar referências do prompt (referencia-*.md) ---
declare -a REFERENCIAS_PROMPT=()
while IFS= read -r f; do REFERENCIAS_PROMPT+=("$f"); done \
  < <(find "$PROMPT_DIR_FULL" -maxdepth 1 -type f -name 'referencia-*.md' | sort)

# --- Coletar memória do autor (memoria-autor.md) ---
MEMORIA_AUTOR=""
if [[ -f "$PROMPT_DIR_FULL/memoria-autor.md" ]]; then
  MEMORIA_AUTOR="$PROMPT_DIR_FULL/memoria-autor.md"
fi

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
echo -e "${C_BOLD}Autoria de Geografia${C_RESET}"
echo "  Disciplina:       $DISCIPLINA"
echo "  Ano/Série:        $ANO"
echo "  Unidade:          $UNIT_STEM"
echo "  Blueprints:       $BLUEPRINT_DIR"
echo "  Prompt-autor:     $PROMPT_AUTOR"
if [[ -n "$MEMORIA_AUTOR" ]]; then
  echo "  Memória do autor: $(basename "$MEMORIA_AUTOR")"
fi
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
confirm_run "Esta operação chama '$EXECUTOR' e gera ${#CHAPTER_BLUEPRINTS[@]} capítulo(s) de Geografia. Tem custo de API." "$AUTO_CONFIRM" || exit 0

# --- Montar prompt para o executor ---
MEMORIA_BLOCK=""
[[ -n "$MEMORIA_AUTOR" ]] && MEMORIA_BLOCK="MEMORIA DO AUTOR (contexto historico do projeto Geografia, leia ANTES de escrever):
   $MEMORIA_AUTOR
"

MODELOS_BLOCK=""
if [[ ${#MODELOS[@]} -gt 0 ]]; then
  MODELOS_BLOCK="MODELOS APROVADOS (use como referencia de TOM, RITMO e DENSIDADE -- NAO copie estrutura literal; estrutura vence sempre o prompt-autor.md):
$(printf '   - %s\n' "${MODELOS[@]}")
"
fi

REFS_PROMPT_LIST=""
[[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]] && REFS_PROMPT_LIST="Referencias adicionais especificas de Geografia (leia antes de escrever):
$(printf '   - %s\n' "${REFERENCIAS_PROMPT[@]}")
"

REFS_GLOBAIS_LIST=""
[[ ${#REFERENCIAS_GLOBAIS[@]} -gt 0 ]] && REFS_GLOBAIS_LIST="Referencias compartilhadas do pipeline:
$(printf '   - %s\n' "${REFERENCIAS_GLOBAIS[@]}")
"

PROMPT="Voce vai escrever todos os capitulos finais de uma unidade didatica de GEOGRAFIA (Ensino Medio) a partir dos blueprints aprovados.

CONTEXTO DO PIPELINE
====================
Raiz do projeto: $PROJECT_ROOT
Disciplina:      $DISCIPLINA
Ano/Serie:       $ANO
Unidade:         $UNIT_STEM

ARQUIVOS DE LEITURA OBRIGATORIA
================================

1. Manual editorial de Geografia (estrutura fixa, estilo, regras):
   $PROMPT_AUTOR

2. CLAUDE.md especifico deste AUTOR de Geografia (regras invioláveis e validacoes):
   $AUTOR_DIR/CLAUDE.md

3. Blueprint da unidade (lei geral aplicavel a todos os capitulos):
   $UNIDADE_BLUEPRINT

4. Blueprints de capitulo a processar (um arquivo de saida por blueprint, na ordem listada):
$(printf '   - %s\n' "${CHAPTER_BLUEPRINTS[@]}")

${MEMORIA_BLOCK}${MODELOS_BLOCK}${REFS_PROMPT_LIST}${REFS_GLOBAIS_LIST}
DIRETORIO OBRIGATORIO DE SAIDA
==============================
$OUTPUT_DIR

REGRAS INVIOLAVEIS DE GEOGRAFIA (do CLAUDE.md)
================================================
- NUNCA criar topico numerado depois de '## 4.' (capitulo de Geografia tem EXATAMENTE 4 topicos numerados).
- NUNCA usar emoji em heading '##' ou '###'. EXCECOES PERMITIDAS:
    * '## 🤝 Sua Parte' (H2 com emoji — bloco especial nomeado).
    * '#### 📚 Curiosidade Geografica' (H4 com emoji — unico H4 do capitulo).
- NUNCA abrir o texto introdutorio com 'Neste capitulo vamos...' ou listar conceitos/toponimos/dados.
- NUNCA transformar a introducao em resumo do capitulo.
- NUNCA apresentar conceito espacial SEM ancorar em lugar real (toponimo, paisagem, escala).
  Geografia que nao localiza vira teoria abstrata.
- NUNCA usar boxes interativos sem '>' (blockquote). Todos tem '>' e quebra de linha interna
  (titulo com dois espacos no fim + nova linha com conteudo, ambos dentro do '>').
- NUNCA tratar paises como atores monoliticos — distinguir governo, povo, elites, regioes.
- NUNCA relativizar consenso cientifico em meio ambiente (IPCC, IBGE, paineis nacionais sao base).
- NUNCA usar tabelas e blocos de codigo por padrao. Excecao: tabela simples para comparar biomas,
  climas, blocos economicos ou indicadores quando for o jeito mais claro.
- NUNCA omitir o '> 💬 **Para Conversar:**' da introducao OU o do bloco '## E para hoje...'.
  Sao DOIS 'Para Conversar' diferentes — um na intro, outro no fim do bloco biblico.
- NUNCA apresentar geopolitica controversa com uma unica perspectiva — incluir mais de um angulo.

TENSAO CENTRAL DA DISCIPLINA (LEIA COM ATENCAO)
=================================================
Geografia vive da tensao entre DADO CARTOGRAFICO TECNICO (mapa, projecao, escala, coordenada,
toponimo, dado quantitativo IBGE/IPCC) e LEITURA CRITICA SOCIOESPACIAL (relacoes de poder no
territorio, desigualdades, geopolitica, justica espacial). OS DOIS LADOS SAO OBRIGATORIOS:

- Sem dado cartografico/quantitativo, vira ensaio de opiniao sem ancoragem espacial.
- Sem leitura critica socioespacial, vira atlas tecnico desconectado dos sujeitos.

A regra e INTEGRACAO: todo dado cartografico aparece a servico de uma leitura espacial; toda
leitura critica e ancorada em dado/lugar concreto. NUNCA escolha um polo — sempre os dois.

REGRAS ESTRUTURAIS
==================
- Cada topico principal '##' tem abertura sintetica de 2-3 frases + subtopicos '###' com perguntas orientadoras.
- Cada subtopico '###' tem: prosa direta (conceito → explicacao → exemplo espacial concreto)
  + frase de transicao explicita ('Os principais fatores sao:', 'Essa relacao se observa em tres escalas:')
  + lista com marcadores.
- Boxes obrigatoriamente em blockquote (>) com 1-2 frases. Tipos:
    > 💭 **Pense um pouco:**       — pergunta de reflexao curta
    > ⏸️ **Pare e Pense:**          — causa/efeito/decisao sobre o espaco
    > 💡 **Você sabia?**            — curiosidade geografica em uma frase
    > 📍 **No Mapa:**               — referencia espacial concreta (onde, escala, fronteira)
    > 🌍 **Em Escala:**             — comparacao local × regional × global
    > 📊 **Em Números:**            — dado quantitativo (area, populacao, PIB, taxa, vazao)
- Minimo 1 box por secao principal (## 1, ## 2, ## 3, ## 4).
- '## E para hoje...' tem ESTRUTURA FIXA: versiculo (italico/negrito + referencia) → comentario
  cristao → frase de transicao ('Com isso, podemos aprender que:') → lista de aprendizados →
  frase de sintese → '> 💬 **Para Conversar:**'.
- '## Esse foi o \"cara\"' traz: bullets biograficos (nome, epoca, pais, area) + ideia central +
  '🏛️ **Legado:**'. Preferir geografos: Ratzel, Vidal de la Blache, Milton Santos, Aziz Ab'Saber,
  Josue de Castro, Yi-Fu Tuan, Jean Tricart, etc.
- '## Em outros lugares do mundo...' traz comparacao espacial com outro pais/continente/bioma +
  lista nomeada 'Diferencas relevantes:'.
- '## Para nao esquecer' tem 3 a 4 bullets, formato 'Termo: explicacao breve em uma frase'.
- '## Simplificando' tem 1-2 paragrafos curtos (NAO bullets).

ESTRUTURA FIXA DOS BLOCOS POS-CONTEUDO (NESTA ORDEM EXATA)
============================================================
1. ## 🤝 Sua Parte                  (H2 com emoji — aplicacao pratica/cidadania)
2. #### 📚 Curiosidade Geografica   (H4 com emoji — unico H4 do capitulo)
3. ## Em outros lugares do mundo... (comparacao espacial + 'Diferencas relevantes:')
4. ## E para hoje...                (versiculo + comentario + transicao + aprendizados + 'Para Conversar')
5. ## Esse foi o \"cara\"             (bullets biograficos + 🏛️ Legado)
6. ## Voce ja pensou nisso?         (problematizacao de simplificacoes)
7. ## Simplificando                 (1-2 paragrafos)
8. ## Para nao esquecer             (3-4 bullets formato 'Termo: explicacao')

ADAPTACAO POR SERIE
====================
- 1a serie EM: Geografia fisica e cartografia (projecoes, escalas, geologia, geomorfologia,
  hidrosfera, climatologia, biomas). Vocabulario tecnico introduzido com cuidado. Texto
  introdutorio: 5-6 frases. Sem geopolitica complexa.
- 2a serie EM: Geografia humana e economica (populacao, urbanizacao, agricultura, industria,
  geopolitica classica, blocos economicos, globalizacao). Articulacao espaco-sociedade. Texto
  introdutorio: 5-6 frases.
- 3a serie EM: sintese — geopolitica contemporanea, conflitos atuais, sustentabilidade,
  geografia regional do Brasil. Conexoes com vestibular/ENEM. Texto introdutorio: 6-8 frases.
  Posicionamento argumentativo.

HIERARQUIA DE AUTORIDADE
========================
Quando o blueprint pedir conteudo que nao cabe na estrutura padrao:
- Estrutura: segue o prompt-autor (4 topicos numerados + 8 blocos pos-conteudo).
- Conteudo factual (geografo, dado IBGE/IPCC, evento geopolitico): EMBUTE em 'Esse foi o cara',
  'E para hoje...' (lista de aprendizados), 'Curiosidade Geografica' ou 'Em outros lugares...'.
- Exercicios pedidos pelo blueprint: DESCARTADOS desta saida (ficam em caderno de atividades separado).
- Conexao biblica explicita: SEMPRE em 'E para hoje...' — nunca em outros blocos.
- Aplicacao pratica/cidadania: SEMPRE em '🤝 Sua Parte' — nunca dispersa.

REGRAS DE EXECUCAO
==================
1. Leia primeiro o manual editorial e o CLAUDE.md especifico. Depois o blueprint da unidade.
2. Para cada blueprint_capitulo_NN_<slug>.md, gere exatamente um arquivo capitulo_NN_<slug>.md.
3. Salve todos os capitulos exclusivamente em: $OUTPUT_DIR
4. Nao altere os blueprints nem os arquivos de prompt/referencia.
5. Conteudo final em portugues brasileiro, em Markdown valido.
6. Apos gerar cada capitulo, valide contra o checklist do CLAUDE.md especifico antes de salvar.
7. Se algum criterio falhar (especialmente as regras invioláveis e a regra de ancoragem espacial),
   corrija ANTES de salvar.
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

  # --- Validações pós-geração específicas de Geografia ---
  echo
  log_info "Validando capítulos gerados contra regras de Geografia..."
  VIOLATIONS=0
  for cap in "$OUTPUT_DIR"/capitulo_*.md; do
    cap_name=$(basename "$cap")

    # 1. Sem ## 5. (ou superior) — máximo 4 tópicos numerados
    if grep -qE '^## [5-9]\.' "$cap"; then
      log_error "$cap_name: tem heading '## N.' com N>=5 (proibido — máx. 4 tópicos)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 2. Sem emoji em heading ## ou ### — exceto '## 🤝 Sua Parte' e '#### 📚 Curiosidade Geográfica'
    # Lista emojis comuns que NÃO podem aparecer em ## ou ###
    while IFS= read -r linha; do
      # Ignorar a exceção H2 explícita
      if echo "$linha" | grep -qE '^## 🤝 Sua Parte'; then continue; fi
      log_error "$cap_name: heading com emoji proibido: $linha"
      VIOLATIONS=$((VIOLATIONS + 1))
    done < <(grep -E '^##[^#].*[🤝📚⏰💭✏️🤔🌟💡⚠️📌✅⏸️🔍🏛️📍🌍📊💬]' "$cap" 2>/dev/null)

    # Mesma checagem para ### (sem exceções no ###)
    if grep -qE '^###[^#].*[🤝📚⏰💭✏️🤔🌟💡⚠️📌✅⏸️🔍🏛️📍🌍📊💬]' "$cap"; then
      log_error "$cap_name: heading ### tem emoji (proibido em Geografia)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 3. Headings pós-conteúdo presentes na ordem
    declare -a REQUIRED_HEADINGS=(
      "^## 🤝 Sua Parte"
      "^#### 📚 Curiosidade Geográfica"
      "^## Em outros lugares do mundo\\.\\.\\."
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

    # 5. 'E para hoje...' contém Para Conversar
    if ! awk '/^## E para hoje\.\.\./{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '^>[[:space:]]+💬[[:space:]]+\*\*Para Conversar:\*\*'; then
      log_error "$cap_name: '## E para hoje...' não contém '> 💬 **Para Conversar:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 6. Introdução também contém Para Conversar (antes de '## Explorando os Conceitos')
    if ! awk '/^## Explorando os Conceitos/{exit} {print}' "$cap" | grep -qE '^>[[:space:]]+💬[[:space:]]+\*\*Para Conversar:\*\*'; then
      log_error "$cap_name: introdução (antes de '## Explorando os Conceitos') não contém '> 💬 **Para Conversar:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 7. 'Esse foi o "cara"' contém 🏛️ **Legado:**
    if ! awk '/^## Esse foi o "cara"/{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE '🏛️[[:space:]]+\*\*Legado:\*\*'; then
      log_error "$cap_name: '## Esse foi o \"cara\"' não contém '🏛️ **Legado:**'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 8. 'Em outros lugares do mundo...' contém 'Diferenças relevantes:'
    if ! awk '/^## Em outros lugares do mundo\.\.\./{flag=1; next} /^## /{flag=0} flag' "$cap" | grep -qE 'Diferenças relevantes:'; then
      log_error "$cap_name: '## Em outros lugares do mundo...' não contém lista 'Diferenças relevantes:'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 9. Pelo menos um box de ancoragem espacial/cartográfica
    # (📍 No Mapa, 🌍 Em Escala ou 📊 Em Números)
    if ! grep -qE '^>[[:space:]]+(📍[[:space:]]+\*\*No Mapa:\*\*|🌍[[:space:]]+\*\*Em Escala:\*\*|📊[[:space:]]+\*\*Em Números:\*\*)' "$cap"; then
      log_error "$cap_name: nenhum box de ancoragem espacial/cartográfica (📍 No Mapa / 🌍 Em Escala / 📊 Em Números) — Geografia exige ancoragem espacial"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  done

  if [[ $VIOLATIONS -gt 0 ]]; then
    log_error "$VIOLATIONS violações de regras de Geografia detectadas. Revise os capítulos antes de commitar."
    exit 1
  fi

  auto_publish_output "$OUTPUT_DIR" "$DISCIPLINA" "$ANO" "$UNIT_STEM"

  log_ok "$COUNT capitulo(s) em $OUTPUT_DIR ${C_DIM}(${DURATION}s)${C_RESET} — todas as validações passaram."
else
  END=$(date +%s); DURATION=$((END - START))
  log_error "executor falhou (exit ${EXEC_EXIT:-?}, ${DURATION}s) — ver $LOG_FILE"
  exit "${EXEC_EXIT:-1}"
fi
