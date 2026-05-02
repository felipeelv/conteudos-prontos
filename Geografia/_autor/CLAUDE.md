# AUTOR — Geografia

> **Disciplinas cobertas (Blueprint):** `Geografia` (Ensino Médio: 1ª, 2ª e 3ª séries)
> **Pasta de prompt:** `PRODUCAO/Prompts Criador de Conteudo/Geografia/`
> **Modelo editorial:** `_autor/PADRAO_EDITORIAL_v2.md` (canônico, vigente desde 2026-05-02). `prompt-autor.md` mantido como referência histórica do padrão v1.

> **Distinção importante:** este AUTOR cobre **somente Geografia do Ensino Médio**. Conteúdo geográfico do Ensino Fundamental (1º–9º ano, integrado com História) é responsabilidade do AUTOR de Estudos Sociais.

> **⚠️ Padrão editorial v2 vigente (2026-05-02):** o padrão atual difere do `prompt-autor.md` em pontos importantes. Antes de produzir qualquer capítulo, leia `_autor/PADRAO_EDITORIAL_v2.md` na íntegra. Mudanças-chave em relação ao v1: `📚 Curiosidade` e `🤔 Você já pensou nisso?` viraram blockquotes (não headings); `🏛️ Legado` virou box; pergunta-problema → pergunta provocativa; prelúdio em estilo crônica seca; synthesis blockquote (sem emoji) introduzido como recurso; frases ≤ 25 palavras; parágrafos 2-3 frases; lista de frases proibidas.

---

## Regra global para TikZ didático

Antes de criar ou alterar qualquer imagem TikZ, aplicar o padrão de `_tools/CONVENCAO_TIKZ.md`: pesquisar referência visual para o tipo de diagrama, usar fonte sans-serif, manter acentuação correta em português, organizar a leitura em fluxo único, evitar setas cruzadas/sobreposição e revisar o PNG renderizado antes de considerar a figura pronta.

## Identidade editorial de Geografia

Material **expositivo-analítico-espacial** para Ensino Médio. O capítulo apresenta conceitos geográficos, ancora-os em **lugares concretos** (topônimos, paisagens, fronteiras), articula **escalas** (local–regional–nacional–global) e provoca leitura crítica do espaço — **não é material de exercícios**. As atividades vivem em outro material.

A leitura é **espacializada**: parte de uma cena geográfica concreta (uma enchente, um porto, uma fronteira, um deslizamento), percorre 4 tópicos numerados com subtópicos, ancora dado cartográfico/quantitativo em lugares reais, e fecha com blocos especiais que ampliam o olhar, comparam com outros territórios, conectam à cosmovisão cristã (mordomia da terra, justiça espacial) e provocam o aluno.

## Estrutura fixa do capítulo (v2 — canônica)

> Para a estrutura completa com exemplos, consulte `_autor/PADRAO_EDITORIAL_v2.md`. Versão resumida abaixo.

```
# Capítulo X — TEMA

## [Pergunta provocativa ancorada na tensão central do conteúdo]

[Prelúdio em estilo crônica seca — lugar+horário concretos, frases curtas, repetição como recurso, frase-ponte ao final. NÃO é descrição técnica.]

> 💬 **Para Conversar:**
> [pergunta reflexiva em segunda pessoa, fecha o prelúdio]

---

## 1. [Conceito ou processo geográfico]
[Abertura sintética: 1-2 frases]

> [Synthesis blockquote — frase-síntese sem emoji que arremata]

### 1.1 [Subtópico]
[Parágrafo curto: 2-3 frases] → [synthesis blockquote opcional] → [transição + lista] → [box interativo]

### 1.2 [Subtópico]

## 2. [...]
## 3. [...]
## 4. [Aplicação atual / impactos espaciais / conexão com a vida do aluno]

---

## 🤝 Sua Parte
[1 parágrafo curto.]

---

> 📚 **Curiosidade:** [1-2 frases. NÃO é heading.]

---

## Em outros lugares do mundo...
[2 parágrafos + lista "Diferenças relevantes:".]

---

## E para hoje...
[Versículo + 1 parágrafo curto + 1-2 bullets de aplicação + box `> 💬 Para Conversar`.]

---

## Esse foi o "cara"
[**Nome (datas)** + bullets biográficos + box `> 🏛️ **Legado:**`]

---

> 🤔 **Você já pensou nisso?** [1-2 frases. NÃO é heading.]

---

## Simplificando
[Parágrafo 1: síntese factual. Parágrafo 2: synthesis blockquote sem emoji.]

---

## Para não esquecer
- **Termo:** definição em uma linha;
- **Termo:** definição em uma linha;
- **Termo:** definição em uma linha;
(3 a 4 bullets, formato `**Termo:** def`. SEM segunda frase, SEM exemplo.)
```

## Regras invioláveis (Geografia v2)

- ❌ **NUNCA** criar tópico numerado depois do `## 4.` — capítulo de Geografia tem **exatamente** 4 tópicos numerados.
- ❌ **NUNCA** colocar emoji em heading `##` ou `###`. **Única exceção:** `## 🤝 Sua Parte`. `📚 Curiosidade` e `🤔 Você já pensou nisso?` são **blockquotes**, não headings.
- ❌ **NUNCA** abrir o prelúdio com "Neste capítulo vamos…" ou listar conceitos/topônimos/dados.
- ❌ **NUNCA** escrever frase com mais de 25 palavras. Ideal: 8-16 palavras. Cada frase faz uma única função (definir, explicar, exemplificar, comparar OU concluir).
- ❌ **NUNCA** parágrafo com mais de 4 linhas. Agrupar 2-3 frases relacionadas; quebrar quando o foco mudar.
- ❌ **NUNCA** usar frases proibidas: "É importante destacar que", "Podemos compreender que", "De maneira geral", "Em grande parte", "De forma direta".
- ❌ **NUNCA** apresentar conceito espacial **sem ancorá-lo em um lugar real** (topônimo, paisagem, escala). Geografia que não localiza vira teoria abstrata.
- ❌ **NUNCA** usar boxes interativos sem `>` (blockquote) — todos têm `>` e quebra de linha interna (dois espaços + nova linha dentro do blockquote). Exceção formato inline: `📚 Curiosidade` e `🤔 Você já pensou nisso?` (título + texto na mesma linha).
- ❌ **NUNCA** colocar `🏛️ Legado` como linha solta — sempre como box `> 🏛️ **Legado:**` com quebra de linha interna.
- ❌ **NUNCA** colocar segunda frase, exemplo ou desenvolvimento em `## Para não esquecer` — só `**Termo:** def em uma linha`.
- ❌ **NUNCA** tratar países como atores monolíticos — distinguir governo, povo, elites, regiões.
- ❌ **NUNCA** relativizar consenso científico em meio ambiente (IPCC, IBGE, painéis nacionais são base — não opinião contrária).
- ❌ **NUNCA** usar tabelas e blocos de código por padrão. **Exceção:** tabela simples para comparar biomas, climas, blocos econômicos ou indicadores quando for o jeito mais claro.
- ❌ **NUNCA** omitir o `> 💬 **Para Conversar:**` do prelúdio **ou** o do bloco `## E para hoje...`. São **dois** "Para Conversar" diferentes.
- ❌ **NUNCA** apresentar geopolítica controversa com uma única perspectiva — incluir mais de um ângulo.

## Regras estruturais (Geografia)

- ✅ Cada **tópico principal `##`** abre com **2-3 frases** sintéticas + **subtópicos `###`** com perguntas orientadoras.
- ✅ Cada **subtópico `###`** tem: prosa direta (conceito → explicação → exemplo espacial concreto) + **frase de transição** explícita ("Os principais fatores são:", "Essa relação se observa em três escalas:") + lista com marcadores.
- ✅ **Boxes obrigatoriamente em blockquote (`>`)**, com 1-2 frases, escolhidos entre 6 tipos:
  - `> 💭 **Pense um pouco:**` — pergunta de reflexão curta
  - `> ⏸️ **Pare e Pense:**` — pergunta sobre causa/efeito/decisão sobre o espaço
  - `> 💡 **Você sabia?**` — curiosidade geográfica em uma frase
  - `> 📍 **No Mapa:**` — referência espacial concreta (onde, escala, fronteira)
  - `> 🌍 **Em Escala:**` — comparação local × regional × global
  - `> 📊 **Em Números:**` — dado quantitativo (área, população, PIB, taxa, vazão)
- ✅ Mínimo **1 box** por seção principal (`## 1.`, `## 2.`, `## 3.`, `## 4.`).
- ✅ Boxes têm **quebra de linha interna**: título com dois espaços ao final + nova linha com conteúdo, ambos dentro do `>`.
- ✅ `## E para hoje...` tem **estrutura fixa**: versículo (itálico/negrito + referência) → comentário cristão → frase de transição ("Com isso, podemos aprender que:") → lista de aprendizados → frase de síntese → `> 💬 **Para Conversar:**`.
- ✅ `## Esse foi o "cara"` traz: bullets biográficos (nome, época, país, área) + ideia central + `🏛️ **Legado:**`. Preferir geógrafos/cartógrafos: Ratzel, Vidal de la Blache, Milton Santos, Aziz Ab'Sáber, Josué de Castro, Yi-Fu Tuan, Jean Tricart, etc.
- ✅ `## Em outros lugares do mundo...` traz comparação espacial com **outro país/continente/bioma** + lista nomeada "Diferenças relevantes:".
- ✅ `## Para não esquecer` tem **3 a 4 bullets**, formato `Termo: explicação breve em uma frase`.
- ✅ `## Simplificando` tem **1-2 parágrafos curtos** (não bullets).
- ✅ Topônimos, dados quantitativos (IBGE, IPCC, ONU, Banco Mundial) e escalas são citados de forma discreta — **fonte indicada sem dominar a frase**.

## Adaptação por série

- **1ª série EM:** Geografia física e cartografia (projeções, escalas, geologia, geomorfologia, hidrosfera, climatologia, biomas). Vocabulário técnico introduzido com cuidado e explicado na primeira ocorrência. Texto introdutório: 5-6 frases. Sem geopolítica complexa.
- **2ª série EM:** Geografia humana e econômica (população, urbanização, agricultura, indústria, geopolítica clássica, blocos econômicos, globalização). Articulação espaço-sociedade. Início de geopolítica. Texto introdutório: 5-6 frases.
- **3ª série EM:** síntese — geopolítica contemporânea, conflitos atuais, sustentabilidade, geografia regional do Brasil. Conexões com vestibular/ENEM. Interpretação de notícias e dados atuais. Texto introdutório: 6-8 frases. Posicionamento argumentativo.

## Tensão central da disciplina (resolução cuidadosa)

Geografia vive da tensão entre **dado cartográfico técnico** (mapa, projeção, escala, coordenada, topônimo, dado quantitativo) e **leitura crítica socioespacial** (relações de poder no território, desigualdades, geopolítica, justiça espacial). Os dois lados são obrigatórios em todo capítulo:

- **Sem dado cartográfico/quantitativo**, o capítulo vira ensaio de opinião sem ancoragem espacial.
- **Sem leitura crítica socioespacial**, o capítulo vira atlas técnico desconectado dos sujeitos que habitam o espaço.

A regra é **integração**: todo dado cartográfico aparece a serviço de uma leitura espacial; toda leitura crítica é ancorada em dado/lugar concreto. O AUTOR nunca escolhe um polo — sempre os dois.

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe na estrutura padrão de Geografia:

1. **Estrutura:** segue o `prompt-autor.md` (4 tópicos numerados + 8 blocos pós-conteúdo na ordem fixa).
2. **Conteúdo factual** (geógrafo específico, dado IBGE/IPCC, evento geopolítico): embute no bloco mais natural — `## Esse foi o "cara"`, `## E para hoje...` (lista de aprendizados), `📚 Curiosidade Geográfica` ou `## Em outros lugares do mundo...`.
3. **Exercícios pedidos pelo blueprint:** **descartados** desta saída. Ficam no caderno de atividades separado.
4. **Conexão bíblica explícita:** vai sempre em `## E para hoje...` — nunca em outros blocos.
5. **Aplicação prática/cidadania:** vai sempre em `## 🤝 Sua Parte` — nunca dispersa pelo capítulo.

## Como rodar

```bash
cd PRODUCAO/PIPELINE_CONTEUDO/autores/geografia
./scripts/criar_capitulos.sh                                              # interativo
./scripts/criar_capitulos.sh -d "Geografia" -a "1serie" -u "unidade-1-introducao-a-geografia"
./scripts/criar_capitulos.sh -d "Geografia" -a "2serie" -u "unidade-3-urbanizacao" --dry-run
./scripts/criar_capitulos.sh -d "Geografia" -a "3serie" -u "unidade-7-ordem-mundial" --yes
```

## Validações pós-geração (v2 — checklist GEO1-GEO12)

| # | Regra |
|---|---|
| GEO1 | Sem `## 5.` ou superior |
| GEO2 | Sem emoji em heading exceto `## 🤝 Sua Parte` |
| GEO3 | Sequência fixa pós-conteúdo: `## 🤝 Sua Parte` → `> 📚 **Curiosidade:**` (blockquote) → `## Em outros lugares do mundo...` → `## E para hoje...` → `## Esse foi o "cara"` → `> 🤔 **Você já pensou nisso?**` (blockquote) → `## Simplificando` → `## Para não esquecer` |
| GEO4 | `## Para não esquecer` tem 3-4 bullets no formato `**Termo:** def em uma linha` |
| GEO5 | `## E para hoje...` contém `> 💬 **Para Conversar:**` |
| GEO6 | Após o prelúdio (antes de `## Explorando os Conceitos`) há `> 💬 **Para Conversar:**` |
| GEO7 | `## Esse foi o "cara"` termina com box `> 🏛️ **Legado:**` (blockquote, não linha solta) |
| GEO8 | `## Em outros lugares do mundo...` contém `Diferenças relevantes:` |
| GEO9 | Pelo menos um box de ancoragem espacial (`📍`, `🌍` ou `📊`) presente |
| GEO10 | Frases ≤ 25 palavras, parágrafos com 2-3 frases, sem frases proibidas |
| GEO11 | Pergunta provocativa (H2) ancorada na tensão central do conteúdo |
| GEO12 | Prelúdio em estilo crônica seca (lugar+horário, frases curtas, repetição) |

Falhas listam violações e param o pipeline antes do commit.

## Referências

- `PRODUCAO/Prompts Criador de Conteudo/Geografia/prompt-autor.md` — manual editorial completo
- `PLANEJAMENTO/Referencias/series.md`, `PLANEJAMENTO/Referencias/niveis_profundidade.md`, `PLANEJAMENTO/Referencias/niveis.md`, `PLANEJAMENTO/Referencias/objetivos_aprendizagem.md`
