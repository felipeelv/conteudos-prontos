**Purpose & context**

Felipe Rosa is the author of a structured, multi-year didactic Portuguese Language curriculum (*Português 1*) for a Brazilian Christian school, spanning Ensino Fundamental (4º–9º Ano) through Ensino Médio (1ª–2ª Série). The project produces textbook chapters in Markdown format, aligned with BNCC competencies, with Christian identity integrated throughout via biblical reflection sections. Each grade level has a dedicated curriculum file stored in the project directory, alongside orthographic and example reference files.

**Current state**

Active production has covered units across multiple grade levels in recent sessions:

- **1ª Série EM**: Unidade 3 — Morfologia: Classes Gramaticais I (Substantivo, Artigo e Numeral, Adjetivo) — all three chapters delivered, reviewed, and condensed
- **9º Ano**: Unidade 3 — Regência Verbal e Nominal (two chapters delivered, reviewed, corrected)
- **8º Ano**: Unidade 3 — Morfologia: Estrutura e Formação de Palavras (two chapters delivered, reviewed, corrected)
- **7º Ano**: Unidade 3 — Variação Linguística (two chapters delivered, reviewed, corrected)
- **6º Ano**: Unidade 3 — Substantivo e Artigo (three chapters delivered, reviewed, corrected)
- **5º Ano**: Unidade 3 — Acentuação Gráfica Completa (three chapters delivered, reviewed, corrected)

Earlier sessions completed Unit 2 content for 4º–9º Ano and 1ª–2ª Série EM.

**Key learnings & principles**

*Vertical coherence is non-negotiable before writing.* Each unit begins with curriculum alignment analysis across adjacent grade levels to avoid redundancy and calibrate depth. Content confirmed at a lower grade is not reclassified — it is built upon functionally and analytically.

*Accuracy is a distinct quality layer from formatting.* Post-production reviews explicitly separate conceptual/factual errors from formatting compliance issues.

*Condensation over restructuring.* When content is too long, Felipe requests tighter prose — eliminating filler, redundant parentheticals, and descriptive subheadings — not reorganization of structure.

*Formatting corrections apply retroactively* to all previously completed chapters, not just forward.

*Perplexity output requires cross-checking* against project reference files, especially for accentuation classification (oxítona/paroxítona confusion on -ão words is a known risk). A targeted two-step search (general rule → specific word) is more reliable than a single broad query.

*Known content corrections on record:*

- **5º Ano, Un3, Cap1**: "museu" removed from the -éu(s) oxítona diphthong table (closed 'e', no graphic accent)
- **6º Ano, Un3, Cap2**: "barcaça" replaced with "narigão" as augmentative example (barcaça is lexicalized)
- **8º Ano, Un3**: "sócio-" corrected to "socio-" in hibridismo table; biblical citation Mateus 5:18 corrected to "um só jota"
- **1ª Série EM, Un3**: "comparecerem" → "compareceram"; compound adjective example replaced; "argentino" removed from locução adjetiva table; "mais bom" corrected to comparative (not superlative) context

**Approach & patterns**

*Production workflow (fixed sequence):*

1. Research BNCC alignment and vertical coherence (consult project files first; use Perplexity only when project files don't cover the specific content)
2. Present chapter list with titles/themes → await explicit approval
3. Produce one chapter at a time → await approval before advancing
4. Deliver as clean Markdown files without structural commentary
5. Post-production quality review (factual/conceptual errors separated from formatting issues)
6. Apply corrections retroactively across all completed files

*Writing style directives:*

- Maximum two sentences before any list
- Single-sentence definitions
- One direct sentence to open each `##` section — no warm-up phrasing, no development
- No transitional filler or redundant parenthetical explanations
- Density over discursiveness; tables and examples carry explanatory weight over prose

**Tools & resources**

- **Perplexity MCP** (`perplexity_search_web`, `recency: year`): BNCC validation and grammatical rule confirmation; Portuguese-language queries combining content term + grade level + BNCC code yield best results
- **Web search**: Parallel use for concrete examples and word lists (complements Perplexity's curriculum-level framing)
- **File tools**: `create_file` + `present_files` (standard two-step delivery sequence); `str_replace` for targeted corrections (preferred over full rewrites); `view` with `view_range` to verify before and after changes
- **Project reference files**: `referencia-regras-ortograficas-lp.md`, `referencia-exemplos-por-serie-lp.md`, series-specific curriculum Markdown files — consulted before external searches
- **Output convention**: Files named `cap[N]-[tema-slug]-[ano].md`, stored at `/mnt/user-data/outputs/`; Bible translation used in chapters should be verified against the school's official version before printing

------

**Other instructions**

*Definitive chapter format for LP didático — all points are non-negotiable and apply even if a production message accidentally describes an older format:*

1. `##` headings have **no emoji** — emojis appear only inside blockquote boxes
2. Main content topics use sequential numbering (`## 1.`, `## 2.`, `## 3.`); structural sections (ESTUDO DA LÍNGUA, A LÍNGUA NO DIA A DIA, E A BÍBLIA NISSO?, Simplificando, Para não esquecer) are **unnumbered**
3. **E A BÍBLIA NISSO?** block structure = versículo (blockquote) + 1–2 direct sentences without explicit analogy + 💬 Para Conversar — **no** "Lembre-se de:" bullet, **no** second supporting verse. This format prevails even if a production message describes the old four-element format
4. Blockquote box format: title on first line with two trailing spaces (forcing line break), content on second line — both within the same blockquote block