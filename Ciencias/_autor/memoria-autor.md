**Purpose & context**

Felipe Rosa produces didactic curriculum materials in Brazilian Portuguese for Colégio Eleve, a Christian school in Brazil. The Ciências discipline covers **Ensino Fundamental I (1º–5º ano) and Ensino Fundamental II (6º–9º ano)** — it does **not** cover Ensino Médio, where the discipline splits into Biologia, Física and Química, each with its own prompt. Until early 2026, the Ciências prompt was also used for Biology (9º ano + 1ª/2ª/3ª EM); Biology now has its own dedicated prompt at `Prompts Criador de Conteudo/Biologia/prompt-autor.md`. All content is BNCC-aligned, integrates a Christian worldview as a structural section ("O que a Bíblia diz sobre [tema]"), and is delivered as Markdown with optional LaTeX (`$$...$$`) when formulas appear.

**Current state**

The unit grid has been mapped across **1º–8º ano** (65 unit folders scaffolded under `CONTEUDOS PRONTOS/Ciencias/`, ~7–9 units per year, BNCC-coded where applicable). 9º ano is not yet scaffolded — coverage planning still needed.

Blueprints (output of the PLANEJADOR) currently exist for **unidade 4 across 4º–8º ano** (5 units, 17 chapter blueprints):

- **4º ano**: Microrganismos (3 chapters)
- **5º ano**: Corpo Humano (4 chapters)
- **6º ano**: Transformações da Matéria (3 chapters)
- **7º ano**: Ecossistemas Brasileiros (2 chapters)
- **8º ano**: Ligações Químicas (4 chapters)

Production via the new pipeline (`PIPELINE_CONTEUDO/AUTOR/scripts/criar_capitulos.sh`) has **not yet started** for any unit — folders contain only `.gitkeep` placeholders.

**Key learnings & principles**

- **Scope boundary**: Ciências stops at 9º ano. Anything for 1ª/2ª/3ª série EM goes to Biologia/Física/Química, never to this prompt.
- **Christian worldview integration is structural, not optional**: every chapter must include the "O que a Bíblia diz sobre [tema]" block with verse + reflection + practical actions tied to the scientific content.
- **Conciseness over volume**: boxes are "drops" — 1–2 sentences max, no elaboration. Section openers are direct (no warm-up framing). Definitions are one short sentence.
- **Storytelling intro discipline**: Cena → Tensão → Ponte, with strict word limits per faixa (3–4 frases EF1, 4–5 frases 6º–7º, 5–7 frases 8º–9º). Never anticipate content with "Neste capítulo vamos estudar...".
- **Curiosity boxes contain surprising facts, not suggested experiments** (carried over from Química's house style — applies here too).
- **Reference, don't repeat**: when content overlaps a previous chapter in the same unit/year, reference it in one sentence rather than recapitulate.
- **Vocabulário científico gradual**: technical terms introduced gradually in 6º–7º; explained inline (parentheses) when first used; never assumed in EF1.

**Approach & patterns**

- **Workflow**: chapter list proposed → approval → one chapter at a time → approval → next. Structural changes always require a proposal first.
- **Chapter structure** (enforced by `prompt-autor.md`):
  - `# Capítulo X — TEMA` → `## Pergunta-problema` → introdução narrativa → `💭 Pense um pouco`
  - Numbered sections `## 1.`, `## 2.`, ... with subtopics `### 1.1`, `### 1.2` framed as guiding questions
  - Mínimo um box por seção (`💭 ⏸️ 💡 📏 🔬`), sempre em blockquote
  - Blocos pós-conteúdo na ordem: 🤝 Sua Parte → O que a Bíblia diz → Simplificando → Para não esquecer
- **No tables, no code** unless explicitly requested.
- **Markdown headings without bold** (`## 1. Título`, never `## **1. Título**`).
- **Adaptação por série**: structure is invariant across grades; only language, abstraction and analogy depth shift (analogias infantis em EF1; modelos científicos em 8º–9º).

**Tools & resources**

- **Prompt da disciplina**: `Prompts Criador de Conteudo/Ciencias/prompt-autor.md` (manual editorial).
- **Referências globais do pipeline**: `Referencias/niveis_profundidade.md`, `series.md`, `niveis.md`, `objetivos_aprendizagem.md` — calibração de N1/N2/N3 e de linguagem por série.
- **Blueprints**: `Blueprint/Ciencias/<ano>/<unidade>/blueprint_unidade.md` + `blueprint_capitulo_NN_<slug>.md` (gerados pelo PLANEJADOR).
- **Output**: `CONTEUDOS PRONTOS/Ciencias/<ano>/<unidade>/capitulo_NN_<slug>.md` via `criar_capitulos.sh`.
- **Validação BNCC**: códigos BNCC já vêm embutidos nos nomes de unidades (ex.: `unidade-3-substancias-e-misturas-bncc-ef06ci01-ef06ci03`) e na seção 16 dos blueprints.
