**Purpose & context**

Felipe is producing a structured mathematics textbook series ("Matemática 3") for a Brazilian Christian school, covering Ensino Fundamental II (6th–9th grade) and Ensino Médio (1st–2nd year). The series focuses on Statistics and Financial Education, with BNCC curriculum alignment throughout. The school context is explicitly Christian, so each chapter includes a biblical integration section. Success means producing clean, pedagogically coherent, student-facing reference material — concise and direct, not expository.

**Current state**

Felipe has completed multiple units across several grade levels, including:

- **6th grade**: Statistical graphs (Unit 3), Introduction to Probability (Unit 2)
- **7th grade**: Applied Percentage (Unit 2), Graphic Representations (Unit 3)
- **8th grade**: Descriptive Statistics and Data Organization (Unit 2), Percentage and Proportionality (Unit 3)
- **9th grade**: Statistics fundamentals (Unit 2), Probability: Concepts and Calculations (Unit 3)
- **1st year EM**: Frequency Distribution & Financial Education (Unit 2), Graphic Representations (Unit 3)
- **2nd year EM**: Special Permutations and Combinatorics (Unit 2), Newton's Binomial Theorem (Unit 3)

Each unit has gone through at least one revision cycle based on Felipe's feedback. The project is ongoing, with new units produced as needed.

**Key learnings & principles**

- **Apostila as reference tool**: Content must be concise and direct — student reference material, not guided reading. Paragraphs should be converted to bullets where possible; transitional filler removed.
- **Calculation steps**: Every step in a worked example must appear on its own line. Multi-step calculations compressed into a single line are a recurring error to avoid.
- **Condensing repeated patterns**: When multiple items follow the same calculation pattern (e.g., sector angles, cumulative frequencies), show two worked examples, then a summary table with "os demais seguem o mesmo padrão."
- **Chapter consolidation**: Felipe regularly approves merging chapters when structural redundancy is identified before or during production.
- **BNCC cross-referencing**: Before proposing chapter structure, Claude reads project files and cross-references relevant BNCC competencies to confirm scope and avoid redundancy with prior grade content.

**Approach & patterns**

- **Approval-gated workflow**: Claude proposes the chapter list with titles and themes → Felipe approves → chapters produced one at a time → Felipe approves each before the next begins.
- **Revision rounds**: After all chapters in a unit are produced, Felipe typically requests: (1) a systematic review of mathematical content, formulas, and pedagogical coherence; (2) a separate pass ensuring every calculation step is on its own line; (3) sometimes a further synthesis pass to condense repeated patterns.
- **Global rule application**: When a formatting rule is established mid-project, it is applied retroactively across all existing files in the unit.
- **Artifacts only**: Chapters delivered as clean Markdown artifacts with no structural commentary outside the artifact. Files saved to `/mnt/user-data/outputs/` with versioned filenames (v2, v3, etc.) to preserve iteration history.

**Formatting conventions (non-negotiable)**

- Maximum two sentences before a list; definitions in one short sentence; no warm-up introductory phrases.
- Maximum **one box per main section**; box format: title on first line, content on second line inside a blockquote.
- **Simplificando**: exactly two dense sentences, no bullets, no repetition of prior content.
- **Para não esquecer**: exactly three bullets as memory triggers.
- **NA VIDA REAL**: capped at two sentences.
- **NA PRÁTICA** block: removed entirely from all chapters.
- **E A BÍBLIA NISSO?**: condensed (under ~eight lines); closing topic uses a **contextually varied principle in bold** as the label — not the fixed phrase "Lembre-se de:". The label should reflect the chapter's specific theme.
- Box example introductions: natural phrases like "Veja o exemplo abaixo" or "Veja só:" — not mechanical labels like "Exemplo resolvido:".
- Mathematical notation: `$$...$$` delimiters for both inline and display math (AutoLaTeX Equations for Google Docs); `\mathrm{}` instead of `\text{}`.
- **⚠️ LaTeX rule (critical)**: NEVER use accented Portuguese characters (ç, ã, é, ó, etc.) inside `$$...$$` blocks. Move accented words outside the LaTeX expression and use symbolic notation with a legend when needed.

**Tools & resources**

- Project files at `/mnt/project/` (curriculum scope per grade); outputs at `/mnt/user-data/outputs/`
- LaTeX rendering via AutoLaTeX Equations for Google Docs (CodeCogs-based — does not support Unicode/accented characters in math mode)
- Versioned Markdown files track revision history across production rounds

---

## Diretrizes editoriais aprovadas (2026-05-01)

Padrões estabelecidos durante a validação do Capítulo 1 — 6º Ano — Unidade 4 — Média Aritmética. Aplicáveis retroativamente a todos os capítulos da disciplina.

### 1. Introdução narrativa (não descritiva)

A regra "Cena → Tensão → Ponte" do `prompt-autor.md` exige uma **introdução narrativa contextualizada** — não apenas uma descrição factual com pergunta retórica no fim.

**Exigências mínimas:**
1. **Marcação de tempo ou momento**: "Sexta-feira", "Final do recreio", "Antes da prova", "No domingo de manhã".
2. **Pelo menos uma ação humana** (do aluno, de outra pessoa) — não só estados ("você abre"). Verbos de ação: lê em voz alta, ouve, percebe, conta, pergunta.
3. **Pelo menos um interlocutor ou ambiente concreto** quando couber — mãe, professor, irmão, padaria, escola, quadra.
4. **A tensão emerge da cena**, não é jogada solta como pergunta retórica.

**Exemplo ruim (descritivo seco):**
> "Você abre o boletim. Suas notas foram 7, 8, 6, 9 e 5. Aparece 'Média 7,0' — mas você nunca tirou 7. Onde está esse 7?"

**Exemplo bom (narrativo contextualizado):**
> "Sexta-feira, dia de boletim. Sua mãe pergunta como foi em Matemática e você lê em voz alta as notas do bimestre: 5, 8, 6, 8 e 8. Embaixo aparece 'Média do bimestre: 7,0' — mas em prova nenhuma você tirou 7. De onde veio esse número?"

### 2. Seção `## E A BÍBLIA NISSO?` — direto, compacto e ancorado em VP

A seção deve ser **direta, compacta, condicionada ao tema VP da unidade** e amarrada à vida do aluno — não um sermão genérico.

**Formato fixo (mesmo em todos os capítulos):**
1. **Versículo** — pode ser encurtado ao núcleo essencial
2. **Texto de transição** — 2 frases curtas, declarando o princípio VP
3. **1 bullet** com princípio em negrito + 1 frase de explicação + (versículo)
4. **`> 💬 **Para Conversar:**`** — pergunta curta amarrada na vida do aluno

**Regras de execução:**
1. **Transição abre declarando o princípio VP**, não descrevendo o cálculo.
   - Ruim: "Calcular média é uma forma de pesar valores."
   - Bom: "Integridade é aceitar a conta completa."
2. **Princípio em negrito = frase de caráter, não instrução técnica.**
   - Ruim: "Inclua todos os valores na conta." (instrução matemática)
   - Bom: "Pese tudo, mesmo o que pesa contra você." (frase de caráter)
3. **Tema VP da unidade aparece pelo nome** ao menos uma vez (Integridade, Coragem, Sabedoria, Generosidade, etc.).
4. **"Para Conversar" amarra na vida real do aluno**, não em comportamento alheio nem em moral abstrata.
5. **Sem piedosismo, sem moralismo.** Frase punchy > parágrafo explicativo.
6. **Versão compacta — seção inteira em ≤ 6 linhas de conteúdo** (versículo curto + transição em 2 frases curtas + 1 bullet + Para Conversar curto).
7. **Pode encurtar o versículo** mantendo a essência. Ex: "Os planos do diligente certamente conduzem à abundância, mas a pressa, com toda a certeza, leva à pobreza" → "Os planos do diligente conduzem à abundância; a pressa, à pobreza."

**Exemplo bom (compacto):**

```
> "Os planos do diligente conduzem à abundância; a pressa, à pobreza." (Provérbios 21:5)

Integridade no cálculo é diligência. Probabilidade é razão de dois números honestos — um errado, e a chance deixa de ser real.

- **Confira antes de concluir.** Numerador inflado ou denominador esquecido distorcem a verdade da chance (Provérbios 21:5).

> 💬 **Para Conversar:**  
> Você já decidiu por uma chance sem conferir os números?
```

### 3. Validação matemática do exemplo central

Quando a tensão narrativa do blueprint depende de uma propriedade matemática (ex: "a média não é um valor da lista", "o resultado é maior que o todo", "metade não é metade real"), **verificar a sequência numérica do blueprint contra a tensão proposta antes de produzir**.

Se a sequência sugerida pelo blueprint contradisser a tensão, **substituir por sequência consistente** — apontar a correção ao usuário, mas não pedir permissão (a consistência matemática é não-negociável).

**Caso concreto resolvido:** o blueprint sugeria notas `7, 8, 6, 9, 5` para média 7 (mas o 7 estava na lista, contradizendo a tensão "você nunca tirou 7"). Substituídas por `5, 8, 6, 8, 8` (mesma soma 35, mesma média 7, sem 7 na lista).

### 4. Padrão estrutural por tipo de subtópico

Cada `### N.N` deve seguir **um único padrão estrutural** — não misturar parágrafos soltos sem direção.

| Tipo de subtópico | Padrão obrigatório |
|---|---|
| **Conceito intuitivo** (cena, processo, redistribuição) | passos numerados (1., 2., 3.) |
| **Definição** | frase única densa + ilustração curta (1-2 frases) |
| **Observação/comparação** (várias ideias) | afirmação principal + bullets explicativos |
| **Cálculo aplicado** | contexto (1 frase) + cálculo passo a passo + interpretação (1 frase) |
| **Checklist/verificação** | bullets em forma de pergunta + síntese punchy de fechamento |

**Não misturar dois padrões no mesmo `### N.N`.** Se a ideia é um processo, usa passos. Se é definição, usa frase + exemplo. Se é checklist, usa perguntas + síntese.

### 5. Exemplo aterrissado em blockquote

Quando, dentro de um subtópico de definição (ou similar), o texto retorna ao **caso narrativo central da introdução** como exemplo concreto do conceito recém-definido, esse trecho vai em **blockquote simples** (`>`) sem emoji nem título.

Cria uma camada visual a mais que diferencia conceito abstrato do exemplo aterrissado.

**Diferenciação visual de blockquotes:**
- parágrafo comum = explicação conceitual
- `> "versículo..."` = citação bíblica (com aspas)
- `> 💡 **Título:**` = boxes (com emoji + título em negrito)
- `> texto puro` = **exemplo aterrissado** do caso narrativo (sem emoji, sem título, sem aspas)

**Exemplo bom (cap 1 9º ano, subtópico 1.1):**

```
**Crédito** é a operação em que alguém recebe dinheiro ou poder de compra agora, mediante promessa de pagamento futuro.

> Quando seu pai decide pegar R$ 5.000 emprestados para reformar o telhado, ele está usando crédito: o banco entrega o valor na hora, e ele se compromete a devolver em parcelas, com juros.

Crédito não é renda extra — é renda futura sendo gasta antes da hora.
```

Ordem do subtópico: **definição (parágrafo) → exemplo aterrissado (blockquote) → fechamento/observação (parágrafo)**.

**Limite:** funciona bem com texto puro (1-2 frases) ou com a "frase de ponte" antes de cálculos. Em blocos com `$$...$$` embutidos no exemplo, manter parágrafo normal — blockquote pode quebrar a renderização do LaTeX em alguns ambientes (AutoLaTeX no Google Docs).

**Aplicação:** vale para retomadas explícitas do caso central ("Quando seu pai...", "Volte ao jogo do início", "Veja só, na rifa do festival..."). NÃO usar em exemplos novos/genéricos que não retomam a introdução.

### 6. Estrutura unificada 8º ano à 3ª série EM (com diferenciação por idade)

**Estrutura formal é única do 8º ao 3ª série EM.** Mesmo padrão de blocos numerados, mesmas regras de subtópico (passos / definição / bullets / cálculo / checklist), mesmos blocos pós-conteúdo, mesmas validações.

O que diferencia entre as séries:
1. **Profundidade matemática**: vem do **blueprint da unidade**, não da skill — a skill só garante o formato
2. **Tipo de exemplo/notícia**: adequado à idade do aluno (ver tabela abaixo)
3. **Vocabulário técnico**: mais denso conforme avança, mas sem mudar a estrutura

**Tipo de exemplo/notícia por sub-idade:**

| Série | Idade | Tipo de exemplo ideal |
|---|---|---|
| **8º** | 13-14 | consumo adolescente, gastos com escola, jogos online, primeiro celular |
| **9º** | 14-15 | cartão da família, parcelamento de celular/tênis, primeira reflexão sobre dívida |
| **1ª série EM** | 15-16 | renda do primeiro estágio, primeiro cartão próprio, vestibular |
| **2ª série EM** | 16-17 | juros compostos, planejamento mensal, primeiro investimento |
| **3ª série EM** | 17-18 | ENEM, financiamento de faculdade, decisão de carreira, longo prazo |

**Regra distinta para 6º-7º ano:** texto curto e concreto, máximo 2 linhas por parágrafo, exemplo cotidiano antes do conceito, vocabulário simples introduzido aos poucos. Esses não seguem a "estrutura unificada" — seguem o regime EF2 inicial do `prompt-autor.md`.

### 7. Validação de dados reais via Perplexity (8º à 3ª série EM)

Para capítulos do 8º ano em diante, usar Perplexity (`mcp__perplexity__perplexity_ask` ou `mcp__perplexity__perplexity_search`) **antes de produzir** para:

1. validar dados estatísticos citados em `NA VIDA REAL`, no box `📊 Nos Números`, e em qualquer cálculo do corpo do capítulo;
2. buscar notícia real recente para ancorar a introdução narrativa, no estilo apropriado à idade (ver tabela da regra 6).

**Priorizar dados estruturais** (renda mediana, taxa Selic histórica, percentual de inadimplentes, % de endividados, valores médios consolidados) em vez de eventos pontuais que envelhecem rápido (cotação de ontem, manchete da semana).

**Continuar sem citar fonte no corpo do capítulo** — a fonte é usada para validação interna, não para o texto final (regra editorial mantida).

**Para 6º-7º ano**, Perplexity é opcional — usar apenas quando o blueprint pedir dado verificável específico no box `📊 Nos Números`. Exemplos cotidianos construídos continuam sendo o padrão dessa faixa.

### 7.1 Manter `_PROGRESSO.md` sempre atualizado

**Diretriz operacional aprovada (2026-05-01):** ao final de qualquer lote de capítulos produzidos (1 capítulo aprovado, unidade fechada, ou várias unidades), **atualizar imediatamente** o arquivo `_PROGRESSO.md` da raiz da disciplina:

1. **Status atual** — atualizar contador total e lista de unidades fechadas
2. **Data da "Última atualização"** — registrar no topo
3. **Histórico de atualizações** — adicionar nova linha na tabela com data, número de capítulos e marco
4. **Pendências** — atualizar conforme novos blueprints forem disponibilizados upstream

Esse arquivo é a **memória de continuidade entre sessões**. Sem ele atualizado, a próxima sessão começa cega.

### 8. Concisão geral — texto direto, drops e seções compactas

**Diretriz transversal aplicada a todos os capítulos.** Cada palavra e cada frase devem ganhar lugar — se podem ser cortadas sem perda de informação, são cortadas.

**Aplicação por elemento:**

1. **Explicações dos blocos numerados (## 1, ## 2, ## 3, ## 4):**
   - Cortar transições e frases de aquecimento ("Antes de prosseguir...", "Repare que...", "Note também que...").
   - Frases mais densas, sem rodeio.
   - Cada parágrafo entrega informação ou sai.
   - Ruim: "Antes de calcular qualquer chance, dois conjuntos precisam estar prontos:"
   - Bom: "Para calcular uma chance, dois conjuntos precisam estar prontos:"

2. **`## Simplificando` — 1 frase, no máximo 2:**
   - Preferir **1 frase única, bem comprimida** que sintetize o arco completo do capítulo.
   - Só usar 2 frases quando a 1 frase ficar artificial.
   - Ruim (2 frases longas): "Probabilidade clássica é casos favoráveis divididos por casos possíveis, expressa em fração, decimal ou percentual. O resultado fica sempre entre 0 e 1, nunca passando desse intervalo."
   - Bom (1 frase comprimida): "Probabilidade clássica é casos favoráveis sobre casos possíveis, sempre entre 0 e 1, em qualquer das três escritas."

3. **`## Para não esquecer` — drops com sentido, não termos secos:**
   - Cada bullet é **um ensinamento comprimido** — a "moral" do conceito, não só o termo técnico ou a fórmula.
   - Formato: `**Termo:** frase curta que carrega o que o aluno NÃO PODE esquecer.`
   - A frase deve ter **conteúdo**, não só símbolo. Mostrar a fórmula sozinha quase nunca é suficiente — vale mais explicar o que ela ensina.
   - Cabe usar fórmula quando ela é o ensinamento; cabe usar frase quando o ensinamento é uma orientação prática.

   **Três níveis (errados / certo):**
   - ❌ Seco demais (só termo + símbolo): `- **Mínimo:** 15% da fatura — não quita a dívida;`
   - ❌ Descritivo demais (vira definição completa): `- **Crédito:** dinheiro recebido agora com promessa de pagamento futuro, sempre com juros;`
   - ✅ Drop com sentido: `- **Mínimo:** pagar 15% acalma o mês mas alimenta a dívida;`

   **Mais exemplos bons:**
   - `- **Rotativo:** uma fatura intacta cresce ~15% por mês mesmo sem novas compras;`
   - `- **Regra de ouro:** quitar a fatura no vencimento é o que mantém o cartão como ferramenta, não armadilha;`
   - `- **Média ≠ valor real:** a média descreve o conjunto, mesmo quando ninguém tem aquele valor exato;`
   - `- **Comprometimento:** $$c \leq 30\%$$ é o limite saudável — acima disso, a dívida começa a comer o orçamento;`

   **Princípio:** o aluno deve poder ler só o "Para não esquecer" e sair sabendo o que importa do capítulo.

4. **`## NA VIDA REAL` — manter ≤ 2 frases** (já era a regra; reforçada agora).

5. **`## E A BÍBLIA NISSO?` — versão compacta** (ver regra 2 atualizada).

**Princípio geral:** o capítulo tem que ler como **material de referência adulto e direto**, não como guia explicativo escolar com aquecimento. Densidade > suavidade.