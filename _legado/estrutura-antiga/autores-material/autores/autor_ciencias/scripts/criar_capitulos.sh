#!/usr/bin/env bash
#
# criar_capitulos.sh — AUTOR genérico de Ciências.
# Gera capítulos finais a partir dos blueprints aprovados, com regras editoriais
# específicas de Ciências, usando qualquer executor LLM compatível via terminal.
#
# Uso:
#   ./scripts/criar_capitulos.sh                                              # interativo
#   ./scripts/criar_capitulos.sh -d "Ciencias" -a "4ano" -u "unidade-4-microrganismos"
#   ./scripts/criar_capitulos.sh -d "Ciencias" -a "8ano" -u "unidade-4" --dry-run
#   ./scripts/criar_capitulos.sh -d "Ciencias" -a "6ano" -u "unidade-4" --yes
#
# Disciplina coberta: Ciencias.
# Anos cobertos pelo Blueprint hoje: 1ano-8ano (EF I + EF II). Atende EM se chegarem blueprints.

set -uo pipefail

# --- Localização e libs ---
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AUTOR_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

source "$AUTOR_DIR/_shared/lib_common.sh"

# Descobre a raiz do projeto subindo diretórios até encontrar PLANEJAMENTO.
# Blueprints e saídas podem ficar em PRODUCAO/ quando o pipeline de produção existir.
PROJECT_ROOT="$AUTOR_DIR"
while [[ "$PROJECT_ROOT" != "/" && ! -d "$PROJECT_ROOT/PLANEJAMENTO" ]]; do
  PROJECT_ROOT="$(dirname "$PROJECT_ROOT")"
done
[[ -d "$PROJECT_ROOT/PLANEJAMENTO" ]] || { log_error "Raiz do projeto não encontrada a partir de: $AUTOR_DIR"; exit 1; }

cd "$PROJECT_ROOT"

# --- Constantes específicas de Ciências ---
DISCIPLINAS_VALIDAS=("Ciencias")
BLUEPRINT_ROOT="${BLUEPRINT_ROOT:-$PROJECT_ROOT/PRODUCAO/Blueprint/blueprints}"
[[ -d "$BLUEPRINT_ROOT" ]] || BLUEPRINT_ROOT="$PROJECT_ROOT/PRODUCAO/Blueprint"
REFERENCIAS_ROOT="${REFERENCIAS_ROOT:-$PROJECT_ROOT/PLANEJAMENTO/Referencias}"
CONTEUDOS_ROOT="${CONTEUDOS_ROOT:-$PROJECT_ROOT/PRODUCAO/CONTEUDOS PRONTOS}"

# --- Parse args ---
DISCIPLINA="Ciencias"
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
echo -e "${C_BOLD}Disciplinas cobertas por este AUTOR (Ciências):${C_RESET}"
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
if [[ ! -d "$DISCIPLINA_DIR" ]]; then
  log_error "Disciplina sem blueprints: $DISCIPLINA_DIR"
  log_warn "Este autor esta generico e pronto para uso, mas os blueprints de producao nao estao neste repositorio."
  log_warn "Informe BLUEPRINT_ROOT=/caminho/para/Blueprint ou restaure PRODUCAO/Blueprint antes de executar."
  exit 1
fi

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
PROMPT_AUTOR="$AUTOR_DIR/prompt-autor.md"
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
echo -e "${C_BOLD}Autoria de Ciências (EF I + EF II)${C_RESET}"
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
echo "  Manual do autor:   $AUTOR_DIR/AUTOR.md"
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
confirm_run "Esta operação chama '$EXECUTOR' e gera ${#CHAPTER_BLUEPRINTS[@]} capítulo(s) de Ciências. Tem custo de API." "$AUTO_CONFIRM" || exit 0

# --- Montar prompt para o executor ---
MEMORIA_BLOCK=""
[[ -n "$MEMORIA_AUTOR" ]] && MEMORIA_BLOCK="MEMORIA DO AUTOR (contexto historico do projeto Ciencias, leia ANTES de escrever):
   $MEMORIA_AUTOR
"

MODELOS_BLOCK=""
if [[ ${#MODELOS[@]} -gt 0 ]]; then
  MODELOS_BLOCK="MODELOS APROVADOS (use como referencia de TOM, RITMO e DENSIDADE -- NAO copie estrutura literal; estrutura vence sempre o prompt-autor.md):
$(printf '   - %s\n' "${MODELOS[@]}")
"
fi

REFS_PROMPT_LIST=""
[[ ${#REFERENCIAS_PROMPT[@]} -gt 0 ]] && REFS_PROMPT_LIST="Referencias adicionais especificas de Ciencias (leia antes de escrever):
$(printf '   - %s\n' "${REFERENCIAS_PROMPT[@]}")
"

REFS_GLOBAIS_LIST=""
[[ ${#REFERENCIAS_GLOBAIS[@]} -gt 0 ]] && REFS_GLOBAIS_LIST="Referencias compartilhadas do pipeline:
$(printf '   - %s\n' "${REFERENCIAS_GLOBAIS[@]}")
"

PROMPT="Voce vai escrever todos os capitulos finais de uma unidade didatica de CIENCIAS a partir dos blueprints aprovados.

CONTEXTO DO PIPELINE
====================
Raiz do projeto: $PROJECT_ROOT
Disciplina:      $DISCIPLINA
Ano/Serie:       $ANO
Unidade:         $UNIT_STEM

ARQUIVOS DE LEITURA OBRIGATORIA
================================

1. Manual editorial de Ciencias (estrutura fixa, estilo, regras):
   $PROMPT_AUTOR

2. AUTOR.md deste AUTOR de Ciencias (regras inviolaveis e validacoes):
   $AUTOR_DIR/AUTOR.md

3. Blueprint da unidade (lei geral aplicavel a todos os capitulos):
   $UNIDADE_BLUEPRINT

4. Blueprints de capitulo a processar (um arquivo de saida por blueprint, na ordem listada):
$(printf '   - %s\n' "${CHAPTER_BLUEPRINTS[@]}")

${MEMORIA_BLOCK}${MODELOS_BLOCK}${REFS_PROMPT_LIST}${REFS_GLOBAIS_LIST}
DIRETORIO OBRIGATORIO DE SAIDA
==============================
$OUTPUT_DIR

REGRAS INVIOLAVEIS DE CIENCIAS (do AUTOR.md)
==============================================
- NUNCA criar topico numerado depois de '## 4.' (capitulo de Ciencias tem MAXIMO 4 topicos numerados).
- NUNCA abrir a introducao com 'Neste capitulo vamos estudar...' ou listar termos/conteudos antecipadamente.
- GANCHO EXPERIMENTAL OBRIGATORIO: a introducao tem que partir de FENOMENO OBSERVAVEL ou CENA CONCRETA
  que o aluno possa imaginar/reproduzir mentalmente. Definicao enciclopedica de partida esta proibida.
  Estrutura da introducao em 3 elementos NESTA ORDEM: Cena -> Tensao -> Ponte.
- DIVERSIDADE CIENTIFICA: ao citar pesquisador/descobridor/cientista, varrer o leque (genero, origem,
  epoca). Priorizar mulheres na ciencia, cientistas brasileiros, latino-americanos, africanos e asiaticos
  quando o tema admitir, sem forcar inclusao fora de contexto historico. NAO defaultar Europa/EUA.
- NUNCA usar tabelas Markdown ou blocos de codigo (a menos que o blueprint peca explicitamente).
- NUNCA transformar '## 🤝 Sua Parte' em lista de exercicios/questoes — e APLICACAO PRATICA com acao concreta.
- NUNCA desenvolver/explicar dentro de um box: box e 'drop' de 1-2 frases NO MAXIMO, direto ao ponto.
- NUNCA iniciar lista em subtopico sem FRASE DE TRANSICAO (ex.: 'Tres coisas sao essenciais:', 'Isso acontece porque:').

REGRAS ESTRUTURAIS
==================
- '## Pergunta-problema' e HEADING LITERAL de abertura (nao placeholder). A pergunta-problema do blueprint
  vai como conteudo abaixo do heading, dentro do storytelling.
- Introducao em 3 elementos NA ORDEM: Cena -> Tensao -> Ponte. Extensao MAXIMA por serie:
    4o-5o: 3-4 frases | 6o-7o: 4-5 | 8o-9o: 5-7 | EM: 6-8.
- Box '> 💭 **Pense um pouco:**' vem LOGO APOS a introducao, separado dela, antes do '---' que abre os topicos.
- Cada topico principal '##' tem abertura sintetica de 2-3 frases + subtopicos '###' numerados (1.1, 1.2...)
  com perguntas orientadoras.
- Cada subtopico tem: prosa curta -> frase de transicao -> lista com marcadores (cada item terminando em ';').
- Boxes obrigatoriamente em blockquote (>) com 1-2 frases. Tipos:
    > 💭 **Pense um pouco:**       — pergunta curta de reflexao
    > ⏸️ **Pare e Pense:**         — pergunta sobre causa, efeito ou decisao
    > 💡 **Você sabia?**           — fato curioso em uma frase
    > 📏 **Medidas Interessantes:** — dado numerico surpreendente
    > 🔬 **Ciência do Dia a Dia:** — exemplo do cotidiano em uma frase
- Minimo 1 box por secao principal ('## 1.' ate '## 4.').
- '## 🤝 Sua Parte' e OBRIGATORIO e abre os blocos pos-conteudo (emoji em H2 e EXCECAO autorizada em Ciencias).
- '## O que a Bíblia diz sobre [tema]' tem 4 elementos: prosa de conexao + versiculo em destaque (com referencia)
  + paragrafo de aplicacao + bloco '**Olhe como você pode fazer:**' com 2 bullets de acao pratica.
- '## Simplificando' tem 1-2 paragrafos curtos (NAO bullets).
- '## Para nao esquecer' tem 3 a 4 bullets no formato 'Termo: explicacao breve;'.

ESTRUTURA FIXA DOS BLOCOS POS-CONTEUDO (NESTA ORDEM EXATA)
============================================================
1. ## 🤝 Sua Parte                   (aplicacao pratica + acao concreta)
2. ## O que a Bíblia diz sobre [tema] (prosa + versiculo + paragrafo + 'Olhe como você pode fazer')
3. ## Simplificando                   (1-2 paragrafos)
4. ## Para nao esquecer               (3-4 bullets formato 'Termo: explicacao;')

ADAPTACAO POR SERIE
====================
- 4o-5o ano EF I: linguagem simples, frases curtas, analogias do universo da crianca (cozinhar, montar, brincar).
  Conceitos concretos e observaveis. Sem termo tecnico sem explicacao.
- 6o-7o ano EF II: exemplos concretos, analogias do cotidiano. Vocabulario cientifico introduzido gradualmente.
- 8o-9o ano EF II: conceitos com explicacoes claras. Fenomenos intrigantes como gancho.
- 1a-2a serie EM: articulacao entre disciplinas, modelos cientificos e suas limitacoes.
- 3a serie EM: sintese, conexoes com vestibulares/ENEM, interpretacao cientifica complexa.

HIERARQUIA DE AUTORIDADE
========================
Quando o blueprint pedir conteudo que nao cabe na estrutura padrao:
- Estrutura: segue o prompt-autor (4 topicos numerados + 4 blocos pos-conteudo na ordem fixa).
- Conteudo factual (cientista, fenomeno, dado): EMBUTE em corpo de topico, box '💡 Você sabia?',
  '📏 Medidas Interessantes' ou no paragrafo de conexao de 'O que a Biblia diz sobre [tema]'.
- Exercicios pedidos pelo blueprint: DESCARTADOS desta saida (ficam em caderno de atividades separado).
  '## 🤝 Sua Parte' e APLICACAO PRATICA, nao exercicio.
- Conexao biblica explicita: SEMPRE em 'O que a Biblia diz sobre [tema]' — nunca em outros blocos.

REGRAS DE EXECUCAO
==================
1. Leia primeiro o manual editorial e o AUTOR.md especifico. Depois o blueprint da unidade.
2. Para cada blueprint_capitulo_NN_<slug>.md, gere exatamente um arquivo capitulo_NN_<slug>.md.
3. Salve todos os capitulos exclusivamente em: $OUTPUT_DIR
4. Nao altere os blueprints nem os arquivos de prompt/referencia.
5. Conteudo final em portugues brasileiro, em Markdown valido.
6. Apos gerar cada capitulo, valide contra o checklist do AUTOR.md especifico antes de salvar.
7. Se algum criterio falhar (especialmente as regras invioláveis: gancho experimental e diversidade
   cientifica), corrija ANTES de salvar.
"

START=$(date +%s)
echo -e "${C_DIM}log: $LOG_FILE${C_RESET}"

# Executores suportados:
# - claude: recebe prompt via stdin com --print --dangerously-skip-permissions.
# - demais: tentativa genérica usando subcomando exec com prompt como argumento.
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

  # --- Validações pós-geração específicas de Ciências ---
  echo
  log_info "Validando capítulos gerados contra regras de Ciências..."
  VIOLATIONS=0
  for cap in "$OUTPUT_DIR"/capitulo_*.md; do
    cap_name=$(basename "$cap")

    # 1. Sem ## 5. (ou superior) — máximo 4 tópicos numerados
    if grep -qE '^## [5-9]\.' "$cap"; then
      log_error "$cap_name: tem heading '## N.' com N>=5 (proibido — máx. 4 tópicos)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 2. ## Pergunta-problema presente (heading literal de abertura)
    if ! grep -qE '^## Pergunta-problema' "$cap"; then
      log_error "$cap_name: heading '## Pergunta-problema' ausente (obrigatório, literal)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 3. Box '> 💭 **Pense um pouco:**' presente (existência mínima — após introdução)
    if ! grep -qE '^>[[:space:]]+💭[[:space:]]+\*\*Pense um pouco:\*\*' "$cap"; then
      log_error "$cap_name: box '> 💭 **Pense um pouco:**' ausente (obrigatório após introdução)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 4. ## 🤝 Sua Parte presente (primeiro bloco pós-conteúdo, obrigatório)
    if ! grep -qE '^## 🤝 Sua Parte' "$cap"; then
      log_error "$cap_name: heading '## 🤝 Sua Parte' ausente (primeiro bloco pós-conteúdo, obrigatório)"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 5. ## O que a Bíblia diz sobre ... presente (heading começa com esse prefixo)
    if ! grep -qE '^## O que a Bíblia diz sobre' "$cap"; then
      log_error "$cap_name: heading '## O que a Bíblia diz sobre [tema]' ausente"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 6. ## Simplificando presente
    if ! grep -qE '^## Simplificando' "$cap"; then
      log_error "$cap_name: heading '## Simplificando' ausente"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi

    # 7. ## Para não esquecer presente com 3 a 4 bullets
    if ! grep -qE '^## Para não esquecer' "$cap"; then
      log_error "$cap_name: heading '## Para não esquecer' ausente"
      VIOLATIONS=$((VIOLATIONS + 1))
    else
      BULLETS=$(awk '/^## Para não esquecer/{flag=1; next} /^## /{flag=0} flag && /^- /' "$cap" | wc -l | tr -d ' ')
      if [[ "$BULLETS" -lt 3 || "$BULLETS" -gt 4 ]]; then
        log_error "$cap_name: '## Para não esquecer' tem $BULLETS bullets (esperado 3 a 4)"
        VIOLATIONS=$((VIOLATIONS + 1))
      fi
    fi

    # 8. Sem tabelas Markdown e sem blocos de código (a menos que pedido pelo blueprint — checagem heurística)
    if grep -qE '^\|.*\|' "$cap"; then
      log_warn "$cap_name: tabela Markdown detectada — só permitida se o blueprint pediu explicitamente"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
    if grep -qE '^```' "$cap"; then
      log_warn "$cap_name: bloco de código detectado — só permitido se o blueprint pediu explicitamente"
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  done

  if [[ $VIOLATIONS -gt 0 ]]; then
    log_error "$VIOLATIONS violações de regras de Ciências detectadas. Revise os capítulos antes de commitar."
    exit 1
  fi

  auto_publish_output "$OUTPUT_DIR" "$DISCIPLINA" "$ANO" "$UNIT_STEM"

  log_ok "$COUNT capitulo(s) em $OUTPUT_DIR ${C_DIM}(${DURATION}s)${C_RESET} — todas as validações passaram."
else
  END=$(date +%s); DURATION=$((END - START))
  if [[ -f "$LOG_FILE" ]]; then
    echo
    echo "Ultimas linhas do log do executor:"
    tail -n 120 "$LOG_FILE" || true
    echo
  fi
  log_error "executor falhou (exit ${EXEC_EXIT:-?}, ${DURATION}s) — ver $LOG_FILE"
  exit "${EXEC_EXIT:-1}"
fi
