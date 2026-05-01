#!/usr/bin/env bash
#
# criar_capitulos.sh — AUTOR especializado de Biologia.
# Gera capítulos finais a partir dos blueprints aprovados, com regras editoriais
# específicas (cosmovisão da criação, classificações biológicas corretas,
# distinção fé/ciência, mordomia da criação no bloco bíblico).
#
# Uso:
#   ./scripts/criar_capitulos.sh                                              # interativo
#   ./scripts/criar_capitulos.sh -d "Biologia" -a "9ano"   -u "unidade-1"
#   ./scripts/criar_capitulos.sh -d "Biologia" -a "1serie" -u "unidade-4" --dry-run
#   ./scripts/criar_capitulos.sh -d "Biologia" -a "2serie" -u "unidade-3" --yes
#
# Disciplina coberta: Biologia.

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

# --- Constantes específicas de Biologia ---
DISCIPLINAS_VALIDAS=("Biologia")
PROMPT_DIR_NAME="Biologia"  # 1:1 com Prompts Criador de Conteudo/Biologia/

BLUEPRINT_ROOT="${BLUEPRINT_ROOT:-$PROJECT_ROOT/PRODUCAO/Blueprint/blueprints}"
[[ -d "$BLUEPRINT_ROOT" ]] || BLUEPRINT_ROOT="$PROJECT_ROOT/PRODUCAO/Blueprint"
PROMPTS_ROOT="$PROJECT_ROOT/PRODUCAO/Prompts Criador de Conteudo"
REFERENCIAS_ROOT="$PROJECT_ROOT/PLANEJAMENTO/Referencias"
CONTEUDOS_ROOT="$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS"

# --- Parse args ---
DISCIPLINA="Biologia"
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
echo -e "${C_BOLD}Disciplinas cobertas por este AUTOR (Biologia):${C_RESET}"
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

# --- Resolver prompt-autor (Biologia = 1:1, sem branching) ---
PROMPT_DIR_FULL="$PROMPTS_ROOT/$PROMPT_DIR_NAME"
PROMPT_AUTOR="$PROMPT_DIR_FULL/prompt-autor.md"
[[ -f "$PROMPT_AUTOR" ]] || { log_error "prompt-autor.md ausente: $PROMPT_AUTOR"; exit 1; }

# --- Coletar referências do prompt (referencia-*.md + memoria-autor.md) ---
declare -a REFERENCIAS_PROMPT=()
while IFS= read -r f; do REFERENCIAS_PROMPT+=("$f"); done \
  < <(find "$PROMPT_DIR_FULL" -maxdepth 1 -type f \( -name 'referencia-*.md' -o -name 'memoria-autor.md' \) | sort)

# --- Coletar capítulos-modelo aprovados (modelo-*.md) ---
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
echo -e "${C_BOLD}Autoria de Biologia${C_RESET}"
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
confirm_run "Esta operação chama '$EXECUTOR' e gera ${#CHAPTER_BLUEPRINTS[@]} capítulo(s) de Biologia. Tem custo de API." "$AUTO_CONFIRM" || exit 0

# --- Montar prompt para o executor ---
MODELOS_BLOCK=""
if [[ ${#MODELOS[@]} -gt 0 ]]; then
  MODELOS_BLOCK="MODELOS APROVADOS (use como referencia de TOM, RITMO e DENSIDADE -- NAO copie estrutura literal; estrutura vence sempre o prompt-autor.md):
$(printf '   - %s\n' "${MODELOS[@]}")
"
fi

REFS_PROMPT_LIST=""
[[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]] && REFS_PROMPT_LIST="Referencias adicionais especificas de Biologia (leia antes de escrever):
$(printf '   - %s\n' "${REFERENCIAS_PROMPT[@]}")
"

REFS_GLOBAIS_LIST=""
[[ ${#REFERENCIAS_GLOBAIS[@]} -gt 0 ]] && REFS_GLOBAIS_LIST="Referencias compartilhadas do pipeline:
$(printf '   - %s\n' "${REFERENCIAS_GLOBAIS[@]}")
"

PROMPT="Voce vai escrever todos os capitulos finais de uma unidade didatica de BIOLOGIA a partir dos blueprints aprovados.

CONTEXTO DO PIPELINE
====================
Raiz do projeto: $PROJECT_ROOT
Disciplina:      $DISCIPLINA
Ano/Serie:       $ANO
Unidade:         $UNIT_STEM

ARQUIVOS DE LEITURA OBRIGATORIA
================================

1. Manual editorial de Biologia (estrutura fixa, estilo, regras):
   $PROMPT_AUTOR

2. CLAUDE.md especifico deste AUTOR de Biologia (regras invioláveis e validacoes):
   $AUTOR_DIR/CLAUDE.md

3. Blueprint da unidade (lei geral aplicavel a todos os capitulos):
   $UNIDADE_BLUEPRINT

4. Blueprints de capitulo a processar (um arquivo de saida por blueprint, na ordem listada):
$(printf '   - %s\n' "${CHAPTER_BLUEPRINTS[@]}")

${MODELOS_BLOCK}${REFS_PROMPT_LIST}${REFS_GLOBAIS_LIST}
DIRETORIO OBRIGATORIO DE SAIDA
==============================
$OUTPUT_DIR

REGRAS INVIOLAVEIS DE BIOLOGIA (do CLAUDE.md)
==============================================
- NUNCA criar topico numerado depois de '## 4.' (capitulo de Biologia tem EXATAMENTE 4 topicos numerados).
- NUNCA abrir a introducao com 'Neste capitulo vamos...' nem listar termos/conceitos.
- NUNCA usar tabelas ou blocos de codigo (excecao: cruzamentos genéticos Punnett quando indispensaveis,
  ou tabelas de comparacao na 1a serie EM quando o blueprint pedir).
- NUNCA personificar a natureza ('a celula quer', 'o gene decide', 'o organismo busca', 'a natureza escolhe')
  — descrever MECANISMOS, nao intencoes.
- NUNCA confundir conceitos proximos: mitose x meiose, gene x alelo, genotipo x fenotipo,
  transcricao x traducao, evolucao x adaptacao individual. A diferenca precisa ficar EXPLICITA na
  primeira ocorrencia.
- NUNCA usar termo tecnico sem explicacao na primeira ocorrencia
  (ex.: 'mitose (divisao celular que gera duas celulas identicas)').
- NUNCA apresentar a Biblia como 'confirmando' descobertas cientificas — a Escritura ancora a
  MORDOMIA DA CRIACAO, dignidade da vida e sabedoria diante da complexidade biologica, nao e
  evidencia empirica.
- NUNCA desenvolver/explicar dentro de um box — boxes sao 'drops' de 1-2 frases NO MAXIMO,
  diretos ao ponto.
- NUNCA iniciar lista de subtopico sem FRASE DE TRANSICAO ('Tres coisas sao essenciais:',
  'Isso acontece porque:').

REGRA DA COSMOVISAO DA CRIACAO
================================
Inviolavel ao tratar origem da vida, evolucao, genetica, ecologia ou bioetica:

- A criacao e boa, ordenada e propositada (Genesis 1) — apresentar a complexidade biologica como
  evidencia de design, sem caricaturar a ciencia nem confundir teologia com mecanismo.
- DISTINCAO FE/CIENCIA na mesma frase: ao tratar evolucao biologica, distinguir mecanismos
  cientificos observaveis (selecao natural, deriva, mutacao) de leitura teologica de proposito.
  Nao fundir as duas linguagens.
- MORDOMIA DA CRIACAO: todo bloco 'O que a Biblia diz' deve aterrissar em ACAO CONCRETA de
  cuidado — corpo (templo do Espirito), saude, ambiente, dignidade da vida, uso responsavel de
  biotecnologia.
- DIGNIDADE DA VIDA HUMANA ao tratar genetica, reproducao, embriologia ou biotecnologia: nunca
  reduzir o ser humano a soma de processos bioquimicos.
- NAO suavizar a ciencia: apresentar a tese cientifica com fidelidade tecnica ANTES da reflexao
  crista. Compreensao fiel vem antes da avaliacao.

CLASSIFICACOES BIOLOGICAS — NOMENCLATURA E DISTINCOES
======================================================
- Nomes de cientistas grafados completos na primeira ocorrencia (Charles Darwin, Gregor Mendel,
  Emil Fischer, Daniel Koshland, Watson & Crick, Rosalind Franklin).
- Nomes cientificos de especies em italico quando aparecerem (*Homo sapiens*, *Escherichia coli*).
- Processos biologicos com nome formal (mitose, meiose, transcricao, traducao, fermentacao,
  fotossintese, respiracao celular).
- Distincoes que precisam aparecer EXPLICITAS quando os termos forem usados:
    mitose x meiose          — produtos diferentes (2 celulas identicas vs. 4 gametas haploides)
    gene x alelo             — gene = unidade de informacao; alelo = variante do gene
    genotipo x fenotipo      — combinacao de alelos vs. caracteristica observavel
    transcricao x traducao   — DNA->RNA vs. RNA->proteina
    evolucao x adaptacao     — populacao ao longo de geracoes vs. mudanca individual
- Para 3a serie: cálculos (Hardy-Weinberg, mapas geneticos, cruzamentos compostos) numericamente
  corretos.

REGRAS ESTRUTURAIS
==================
- Introducao narrativa em 3 elementos (CENA -> TENSAO -> PONTE), seguida de box
  '💭 **Pense um pouco:**' separado.
- Extensao da introducao: 9o ano = 4-5 frases | 1a-2a EM = 5-7 | 3a EM = 6-8.
- Cada topico principal '##' tem abertura sintetica de 2-3 frases + subtopicos '###' com perguntas
  orientadoras.
- Cada subtopico tem: prosa explicativa + frase de transicao + lista com marcadores
  (terminados em ponto e virgula). Exemplo pratico apos a lista quando couber.
- MINIMO 1 box por secao principal, em formato de 'drop' (1-2 frases NO MAXIMO). Tipos:
    💭 **Pense um pouco:**  — pergunta curta de reflexao
    ⏸️ **Pare e Pense:**     — pergunta sobre causa, efeito ou decisao
    💡 **Você sabia?**       — fato curioso em uma frase
    🧬 **Bio em Ação:**      — exemplo concreto de processo biologico no cotidiano
    🔬 **No Laboratório:**   — experimento ou tecnica classica em uma frase
    📊 **Em Números:**       — dado quantitativo surpreendente
- '## 4.' traz APLICACAO ao cotidiano, saude, ecologia ou biotecnologia — nao e mais um topico teorico.
- '🤝 Sua Parte' traz ACAO CONCRETA (autocuidado, habito de saude, atitude ambiental, decisao
  consciente sobre biotecnologia).
- 'O que a Biblia diz sobre [tema]' tem ESTRUTURA OBRIGATORIA: prosa conectando tema a visao biblica
  -> versiculo em destaque (italico/negrito + referencia) -> paragrafo de mordomia + lista
  'Olhe como você pode fazer:' com 2 acoes praticas.
- 'Simplificando' tem 1-2 paragrafos curtos (NAO bullets).
- 'Para nao esquecer' tem 3 a 4 bullets no formato 'Termo: explicacao breve'.
- Listas com marcadores e PONTO E VIRGULA ao final de cada item.
- '---' apenas ENTRE blocos pos-conteudo.

ESTRUTURA FIXA DOS BLOCOS POS-CONTEUDO (NESTA ORDEM EXATA)
============================================================
1. 🤝 Sua Parte                          (aplicacao pratica + acao concreta)
2. O que a Biblia diz sobre [tema]       (prosa + versiculo + mordomia + 'Olhe como você pode fazer')
3. Simplificando                         (1-2 paragrafos)
4. Para nao esquecer                     (3-4 bullets formato 'Termo: explicacao')

ADAPTACAO POR SERIE
====================
- 9o ano EF II: vocabulario cientifico introduzido com explicacao. Sem bioquimica formal.
  Hereditariedade basica (gene, alelo, dominante/recessivo). Mitose e meiose como processos visuais.
- 1a serie EM: bioquimica e citologia com modelos cientificos nomeados. Tabelas de comparacao uteis
  (procariotico x eucariotico). Inicio de calculos geneticos simples.
- 2a serie EM: fisiologia integrada (sistemas inter-relacionados). Genetica molecular com nivel de
  DNA, RNA, proteina. Cruzamentos di-hibridos.
- 3a serie EM: problemas aplicados (frequencias alelicas, mapas geneticos, interpretacao de arvore
  filogenetica). Conexoes com vestibular. Biotecnologia atual (CRISPR, transgenicos, terapia genica).

HIERARQUIA DE AUTORIDADE
========================
Quando o blueprint pedir conteudo que nao cabe na estrutura padrao:
- Estrutura: segue o prompt-autor (4 topicos numerados + 4 blocos pos-conteudo na ordem fixa).
- Conteudo factual (cientista, mecanismo, dado quantitativo): EMBUTE em prosa do topico ou em
  box '💡 Você sabia?', '🧬 Bio em Ação', '🔬 No Laboratório' ou '📊 Em Números'.
- Exercicios pedidos pelo blueprint: DESCARTADOS desta saida (ficam em caderno de atividades separado).
- Conexao biblica explicita: SEMPRE em 'O que a Biblia diz sobre [tema]' — nunca em outros blocos.
- Aplicacao pratica/atitudinal: vai em '🤝 Sua Parte' — nao dilui em outros topicos.

REGRAS DE EXECUCAO
==================
1. Leia primeiro o manual editorial e o CLAUDE.md especifico. Depois o blueprint da unidade.
2. Para cada blueprint_capitulo_NN_<slug>.md, gere exatamente um arquivo capitulo_NN_<slug>.md.
3. Salve todos os capitulos exclusivamente em: $OUTPUT_DIR
4. Nao altere os blueprints nem os arquivos de prompt/referencia.
5. Conteudo final em portugues brasileiro, em Markdown valido.
6. Apos gerar cada capitulo, valide contra o checklist do CLAUDE.md especifico antes de salvar.
7. Se algum criterio falhar (especialmente as regras invioláveis e a regra da cosmovisao da criacao),
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

  # --- Validações pós-geração específicas de Biologia ---
  echo
  log_info "Validando capítulos gerados contra regras de Biologia..."
  VIOLATIONS=0
  for cap in "$OUTPUT_DIR"/capitulo_*.md; do
    cap_name=$(basename "$cap")

    # 1. Sem ## 5. (ou superior) — máximo 4 tópicos numerados
    if grep -qE '^## [5-9]\.' "$cap"; then
      log_error "$cap_name: tem heading '## N.' com N>=5 (proibido — máx. 4 tópicos)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 2. Headings pós-conteúdo presentes
    declare -a REQUIRED_HEADINGS=(
      "🤝 Sua Parte"
      "O que a Bíblia diz"
      "^Simplificando|^## Simplificando"
      "^Para não esquecer|^## Para não esquecer"
    )
    for required in "${REQUIRED_HEADINGS[@]}"; do
      if ! grep -qE "$required" "$cap"; then
        log_error "$cap_name: heading obrigatório ausente: $required"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    done

    # 3. Para não esquecer = 3 a 4 bullets (formato Termo: explicação)
    BULLETS=$(awk '/^(## )?Para não esquecer/{flag=1; next} /^(## )?(Simplificando|🤝|O que a Bíblia|---|# )/{flag=0} flag && /^- /' "$cap" | wc -l | tr -d ' ')
    if [[ "$BULLETS" -lt 3 || "$BULLETS" -gt 4 ]]; then
      log_error "$cap_name: 'Para não esquecer' tem $BULLETS bullets (esperado 3 a 4)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 4. Para não esquecer em formato 'Termo: explicação' (cada bullet contém ':')
    BULLETS_SEM_DOIS_PONTOS=$(awk '/^(## )?Para não esquecer/{flag=1; next} /^(## )?(Simplificando|🤝|O que a Bíblia|---|# )/{flag=0} flag && /^- / && !/:/' "$cap" | wc -l | tr -d ' ')
    if [[ "$BULLETS_SEM_DOIS_PONTOS" -gt 0 ]]; then
      log_error "$cap_name: 'Para não esquecer' tem $BULLETS_SEM_DOIS_PONTOS bullet(s) sem o formato 'Termo: explicação'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 5. Bloco bíblico contém 'Olhe como você pode fazer'
    if ! grep -qE 'Olhe como você pode fazer' "$cap"; then
      log_error "$cap_name: bloco bíblico não contém 'Olhe como você pode fazer:'"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 6. Sem personificação grosseira da natureza
    if grep -qiE '(a célula quer|o gene decide|o organismo busca|a natureza escolhe|a evolução quer|o DNA decide)' "$cap"; then
      log_error "$cap_name: contém personificação proibida da natureza ('a célula quer', 'o gene decide', etc.)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 7. Pelo menos 1 box (linha começando com um dos emojis de box)
    BOXES=$(grep -cE '^(💭|⏸️|💡|🧬|🔬|📊)[[:space:]]*\*\*' "$cap" || true)
    if [[ "$BOXES" -lt 1 ]]; then
      log_error "$cap_name: nenhum box encontrado (esperado mínimo 1: 💭/⏸️/💡/🧬/🔬/📊)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 8. Capítulo cita ao menos uma âncora bíblica/cosmovisão
    if ! grep -qiE '(mordomia|criação|dignidade|templo|Gênesis|Salmo|Criador|Deus)' "$cap"; then
      log_error "$cap_name: nenhuma âncora bíblica detectada (mordomia/criação/dignidade/templo/Gênesis/Salmo/Criador/Deus)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  done

  if [[ $VIOLATIONS -gt 0 ]]; then
    log_error "$VIOLATIONS violações de regras de Biologia detectadas. Revise os capítulos antes de commitar."
    exit 1
  fi

  auto_publish_output "$OUTPUT_DIR" "$DISCIPLINA" "$ANO" "$UNIT_STEM"

  log_ok "$COUNT capitulo(s) em $OUTPUT_DIR ${C_DIM}(${DURATION}s)${C_RESET} — todas as validações passaram."
else
  END=$(date +%s); DURATION=$((END - START))
  log_error "executor falhou (exit ${EXEC_EXIT:-?}, ${DURATION}s) — ver $LOG_FILE"
  exit "${EXEC_EXIT:-1}"
fi
