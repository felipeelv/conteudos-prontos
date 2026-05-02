# AUTOR — Biologia

> **Disciplinas cobertas (Blueprint):** `Biologia`
> **Pasta de prompt:** `PRODUCAO/Prompts Criador de Conteudo/Biologia/`
> **Modelo editorial:** `prompt-autor.md` da pasta acima — **fonte de verdade absoluta para forma**.

---

## Regra global para TikZ didático

Antes de criar ou alterar qualquer imagem TikZ, aplicar o padrão de `_tools/CONVENCAO_TIKZ.md`: pesquisar referência visual para o tipo de diagrama, usar fonte sans-serif, manter acentuação correta em português, organizar a leitura em fluxo único, evitar setas cruzadas/sobreposição e revisar o PNG renderizado antes de considerar a figura pronta.

## Skill do autor de Biologia

Antes de produzir capítulos, ler e aplicar `Biologia/_autor/REGRAS_SKILL_AUTOR.md`. Essa skill operacionaliza três obrigações: pesquisa prévia com Perplexity/web, validação técnica pós-escrita e padrão visual para imagens biológicas.

Regras centrais:

- pesquisar o tema antes de escrever e cruzar com o blueprint;
- validar tecnicamente nomes, datas, mecanismos, cálculos e distinções conceituais com Perplexity/web antes de concluir;
- pesquisar o padrão visual de cada diagrama antes de criar ou redesenhar uma imagem;
- usar TikZ com fonte sans-serif, acentuação correta, hierarquia visual clara e sem sobreposição;
- renderizar e revisar visualmente cada PNG antes de inserir no Markdown;
- corrigir o capítulo e as imagens sempre que a validação apontar erro ou ambiguidade.

## Identidade editorial de Biologia

Material **expositivo-investigativo** para 9º ano EF II e Ensino Médio (1ª, 2ª e 3ª séries). O capítulo apresenta conceitos biológicos com rigor científico, ancora no cotidiano do aluno (corpo humano, natureza, biotecnologia) e fecha com aplicação prática + ancoragem cristã na **mordomia da criação** — **não é material de exercícios**. As atividades vivem em outro material.

A leitura parte de uma cena concreta (uma ferida cicatrizando, traços de família, um remédio agindo), introduz tensão investigativa e percorre 4 tópicos numerados com subtópicos guiados por perguntas. Boxes funcionam como "drops" de informação pontual.

## Estrutura fixa do capítulo (do `prompt-autor.md`)

```
# Capítulo X — TEMA
## Pergunta-problema (pergunta aberta, real, que o aluno reconheça)
[Introdução narrativa em 3 elementos: Cena → Tensão → Ponte]
💭 Pense um pouco: [pergunta conectando o tema ao aluno]
---
## 1. [Tópico principal]
[Abertura: 2-3 frases]
### 1.1 [Pergunta orientadora]
### 1.2 [Pergunta orientadora]

## 2. [...]
## 3. [...]
## 4. [Aplicação / cotidiano / conexão com saúde, ecologia ou biotecnologia]
---

🤝 Sua Parte
[Aplicação prática + ação concreta]
---
O que a Bíblia diz sobre [tema]
[Prosa + versículo em destaque + parágrafo conectando à mordomia da criação]
Olhe como você pode fazer:
- Ação prática 1;
- Ação prática 2.
---
Simplificando
[Resumo em 1-2 parágrafos]
---
Para não esquecer
- Conceito 1: explicação em uma frase;
- Conceito 2: explicação em uma frase;
(3 a 4 itens — formato "Termo: explicação breve")
```

## Regras invioláveis (Biologia)

- ❌ **NUNCA** criar tópico numerado depois do `## 4.` — capítulo de Biologia tem **exatamente** 4 tópicos numerados.
- ❌ **NUNCA** abrir a introdução com "Neste capítulo vamos…" ou listar termos/conceitos.
- ❌ **NUNCA** usar tabelas ou blocos de código (exceto cruzamentos genéticos do tipo Punnett quando indispensáveis, ou tabelas de comparação na 1ª série EM quando o blueprint pedir).
- ❌ **NUNCA** personificar a natureza ("a célula quer", "o gene decide", "o organismo busca") — descrever **mecanismos**, não intenções.
- ❌ **NUNCA** confundir conceitos próximos: mitose × meiose, gene × alelo, genótipo × fenótipo, transcrição × tradução, evolução × adaptação individual. A diferença precisa ficar explícita na primeira ocorrência.
- ❌ **NUNCA** usar termo técnico sem explicação na primeira ocorrência (ex.: "mitose (divisão celular que gera duas células idênticas)").
- ❌ **NUNCA** apresentar a Bíblia como "confirmando" descobertas científicas — a Escritura ancora a **mordomia da criação, dignidade da vida e sabedoria diante da complexidade biológica**, não é evidência empírica.
- ❌ **NUNCA** desenvolver/explicar dentro de um box — boxes são "drops" de **1-2 frases no máximo**, diretos ao ponto.
- ❌ **NUNCA** iniciar lista de subtópico sem **frase de transição** ("Três coisas são essenciais:", "Isso acontece porque:").

## Regra da cosmovisão da criação (Biologia)

**Inviolável** ao tratar origem da vida, evolução, genética, ecologia ou bioética:

- ✅ **A criação é boa, ordenada e propositada** (Gênesis 1) — apresentar a complexidade biológica como evidência de design, sem caricaturar a ciência nem confundir teologia com mecanismo.
- ✅ **Distinção fé/ciência na mesma frase:** ao tratar evolução biológica, distinguir **mecanismos científicos observáveis** (seleção natural, deriva, mutação) de **leitura teológica de propósito**. Não fundir as duas linguagens.
- ✅ **Mordomia da criação:** todo bloco "O que a Bíblia diz" deve aterrissar em **ação concreta de cuidado** — corpo (templo do Espírito), saúde, ambiente, dignidade da vida, uso responsável de biotecnologia.
- ✅ **Dignidade da vida humana** ao tratar genética, reprodução, embriologia ou biotecnologia: nunca reduzir o ser humano a soma de processos bioquímicos.
- ✅ **Não suavizar a ciência:** apresentar a tese científica com fidelidade técnica antes da reflexão cristã. Compreensão fiel vem antes da avaliação.

Esta regra é replicada no PROMPT enviado ao executor.

## Regras estruturais (Biologia)

- ✅ **Introdução narrativa em 3 elementos** (Cena → Tensão → Ponte), seguida de box `💭 **Pense um pouco:**` separado. Extensão: 9º ano = 4-5 frases | 1ª–2ª EM = 5-7 | 3ª EM = 6-8.
- ✅ Cada **tópico principal `##`** tem abertura sintética de **2-3 frases** + **subtópicos `###`** com perguntas orientadoras.
- ✅ Cada **subtópico** tem: prosa explicativa → **frase de transição** → lista com marcadores (terminados em ponto e vírgula). Exemplo prático após a lista quando couber.
- ✅ **Mínimo 1 box por seção principal**, em formato de "drop" (1-2 frases no máximo). Tipos:
  - `💭 **Pense um pouco:**` — pergunta curta de reflexão
  - `⏸️ **Pare e Pense:**` — pergunta sobre causa, efeito ou decisão
  - `💡 **Você sabia?**` — fato curioso em uma frase
  - `🧬 **Bio em Ação:**` — exemplo concreto de processo biológico no cotidiano
  - `🔬 **No Laboratório:**` — experimento ou técnica clássica em uma frase
  - `📊 **Em Números:**` — dado quantitativo surpreendente
- ✅ **Nomenclatura científica correta:** nomes de cientistas grafados completos na primeira ocorrência (Darwin, Mendel, Fischer, Koshland, Watson & Crick); nomes científicos de espécies em itálico quando aparecerem (`*Homo sapiens*`); processos biológicos com nome formal.
- ✅ **Ilustrações TikZ** sempre que ajudarem o aluno a visualizar uma ideia biológica: cruzamentos genéticos, heredogramas, cromossomos, proteínas, enzimas, origem da vida, regulação gênica, epigenética, mutações, reparo do DNA, PCR e fluxos de biotecnologia. A imagem deve explicar uma relação ou processo, não decorar a página.
- ✅ **Padrão de imagem TikZ no Markdown:** inserir link bruto do GitHub (`https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/.../figuras/capXX_tikz-1.png`) para funcionar ao copiar para Google Docs; nunca usar caminho relativo `figuras/...` nem link `blob/main`.
- ✅ **Padrão de arquivos TikZ:** fonte em `figuras_capXX_<slug>.tex`; PNG final em `Biologia/<ano>/<unidade>/figuras/`; não versionar `.aux`, `.log` ou `.pdf`.
- ✅ `## 4.` traz **aplicação ao cotidiano, saúde, ecologia ou biotecnologia** — não é mais um tópico teórico.
- ✅ `🤝 Sua Parte` traz **ação concreta** (autocuidado, hábito de saúde, atitude ambiental, decisão consciente sobre biotecnologia).
- ✅ `O que a Bíblia diz sobre [tema]` tem **estrutura de 3 elementos**: prosa conectando tema à visão bíblica → versículo em destaque (itálico/negrito + referência) → parágrafo de mordomia + lista `Olhe como você pode fazer:` com 2 ações práticas.
- ✅ `Simplificando` tem **1-2 parágrafos curtos** (não bullets).
- ✅ `Para não esquecer` tem **3 a 4 bullets** no formato `Termo: explicação breve`.
- ✅ Listas com marcadores e **ponto e vírgula** ao final de cada item.
- ✅ `---` apenas **entre blocos pós-conteúdo**.

## Adaptação por série

- **9º ano EF II:** transição da Ciências para a Biologia. Vocabulário científico introduzido com explicação. Foco em fenômenos observáveis (célula, hereditariedade básica, evolução, ecologia). Mitose/meiose como processos visuais. Sem bioquímica formal. Cruzamentos genéticos simples.
- **1ª série EM:** introdução à Biologia formal — citologia, bioquímica celular, ecologia, evolução. Modelos científicos com nomes e datas (Fischer, Koshland, Darwin, Mendel). Tabelas de comparação úteis (procariótico × eucariótico). Início de cálculos genéticos simples.
- **2ª série EM:** fisiologia humana, genética mendeliana e molecular, sistemas inter-relacionados. Mecanismos moleculares com mais detalhe (transcrição, tradução, ciclos metabólicos). Cruzamentos di-híbridos. Fisiologia comparada.
- **3ª série EM:** síntese e aprofundamento — genética avançada (interações gênicas, ligação, mapas), genética de populações (Hardy-Weinberg), evolução, biotecnologia (CRISPR, transgênicos, terapia gênica), ecologia complexa. Foco em interpretação, cálculo aplicado, conexão ENEM/vestibular.

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe na estrutura padrão de Biologia:

1. **Estrutura:** segue o `prompt-autor.md` (4 tópicos numerados + 4 blocos pós-conteúdo na ordem fixa: Sua Parte → Bíblia → Simplificando → Para não esquecer).
2. **Conteúdo factual** (cientista, mecanismo, dado quantitativo): embute no bloco mais natural — prosa do tópico, box `💡 Você sabia?`, `🧬 Bio em Ação`, `🔬 No Laboratório` ou `📊 Em Números`.
3. **Exercícios pedidos pelo blueprint:** **descartados** desta saída. Ficam no caderno de atividades separado.
4. **Conexão bíblica explícita:** vai sempre em `O que a Bíblia diz sobre [tema]` — nunca em outros blocos.
5. **Aplicação prática/atitudinal:** vai em `🤝 Sua Parte` — não dilui em outros tópicos.

## Como rodar

```bash
cd PRODUCAO/PIPELINE_CONTEUDO/autores/biologia
./scripts/criar_capitulos.sh                                              # interativo
./scripts/criar_capitulos.sh -d "Biologia" -a "9ano"  -u "unidade-1"
./scripts/criar_capitulos.sh -d "Biologia" -a "1serie" -u "unidade-4-bioquimica-celular-ii" --dry-run
./scripts/criar_capitulos.sh -d "Biologia" -a "2serie" -u "unidade-3" --yes
```

## Validações pós-geração

O script `criar_capitulos.sh` valida cada capítulo gerado contra:

1. **Sem `## 5.`** (ou `## 6.`, etc.) — Biologia tem exatamente 4 tópicos.
2. **Headings pós-conteúdo presentes** na ordem correta:
   - `🤝 Sua Parte`
   - `O que a Bíblia diz` (heading flexível pelo tema)
   - `Simplificando`
   - `Para não esquecer`
3. **`Para não esquecer` tem 3 a 4 bullets** — não 2, não 5+.
4. **`Para não esquecer` em formato `Termo: explicação`** — heurística: bullets contêm `:`.
5. **Bloco bíblico contém `Olhe como você pode fazer`** — bloco obrigatório.
6. **Sem personificação grosseira da natureza** — heurística: detecta `a célula quer`, `o gene decide`, `o organismo busca`, `a natureza escolhe`.
7. **Pelo menos 1 box** no capítulo (linha começando com um dos emojis: 💭 ⏸️ 💡 🧬 🔬 📊).
8. **Capítulo cita ao menos uma das âncoras bíblicas** (mordomia, criação, dignidade, templo, Gênesis, Salmo) — heurística para garantir cosmovisão presente.
9. **Quando houver imagem TikZ**, validar que o Markdown usa link `raw.githubusercontent.com` e que o PNG existe em `figuras/`.
10. **Validação técnica via Perplexity/web** — confirmar os pontos de maior risco científico antes de considerar o capítulo pronto.
11. **Revisão visual das imagens** — nenhum TikZ pode ficar branco, cortado, com texto embolado, sem acentos ou com fonte serifada.

Falhas listam violações e param o pipeline antes do commit.

## Referências

- `PRODUCAO/Prompts Criador de Conteudo/Biologia/prompt-autor.md` — manual editorial completo
- `Biologia/_autor/REGRAS_SKILL_AUTOR.md` — regras operacionais de pesquisa, validação técnica e imagens
- `PLANEJAMENTO/Referencias/series.md`, `PLANEJAMENTO/Referencias/niveis_profundidade.md`, `PLANEJAMENTO/Referencias/niveis.md`, `PLANEJAMENTO/Referencias/objetivos_aprendizagem.md`
