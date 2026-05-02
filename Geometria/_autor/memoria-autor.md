**Purpose & context**

Felipe works as a content author or curriculum coordinator at a Brazilian Christian school, producing a structured mathematics textbook series called **Matemática 2** spanning multiple grade levels (6º Ano through 2ª Série do Ensino Médio). The project covers geometry-focused content aligned with BNCC standards, organized by bimester and unit. Each grade level has its own curriculum grid file in the project directory.

The textbook integrates a Christian worldview throughout, including a mandatory "E A BÍBLIA NISSO?" section in every chapter. Content is produced as Markdown with LaTeX math notation, rendered via AutoLaTeX Equations (CodeCogs) in Google Docs.

For TikZ figures, the production source remains local LaTeX/TikZ in `figuras_capXX_<slug>.tex`, and the rendered PNGs remain under each unit's `figuras/` folder. The final Markdown used with Google Docs must not keep relative links like `](figuras/cap01_tikz-1.png)`, because copy/paste into Docs will lose the image. Use absolute GitHub raw URLs instead:
`https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/<ano>/<unidade>/figuras/capXX_tikz-N.png`.

**Current state**

Units completed across grade levels (most recent sessions):

- **6º Ano** — Unidade 2 (Ângulos e Sistema de Medidas I) and Unidade 3 (Ângulos e Polígonos): all chapters complete
- **7º Ano** — Unidade 2 (Ângulos e Retas Paralelas) and Unidade 3 (Triângulos): all chapters complete
- **8º Ano** — Unidade 2 (Mediatriz, Bissetriz e Lugares Geométricos) and Unidade 3 (Triângulos e Congruência): all chapters complete
- **9º Ano** — Unidade 2 (Semelhança de Triângulos) and Unidade 3 (Relações Métricas e Circunferência): all chapters complete
- **1ª Série EM** — Unidade 2 (Polígonos) and Unidade 3 (Triângulos): all chapters complete
- **2ª Série EM** — Unidade 2 (Paralelismo, Perpendicularismo e Poliedros) and Unidade 3 (Prismas): all chapters complete

A system prompt governing chapter production style exists and has been revised iteratively to encode formatting rules with negative/positive examples.

**On the horizon**

- Subsequent units across all grade levels remain to be produced (following the curriculum grid)
- Felipe typically initiates the next session with a grade level and unit; Claude should ask for clarification if ambiguous

**Key learnings & principles**

- **Lean, reference-style prose is the target register**: definitions lead directly to formulas and examples; connective, preparatory, or transitional language is cut
- **Redundancy audits matter**: before writing, cross-reference what was covered in prior grade levels to avoid repeating content already taught; weight new chapters toward genuinely new material
- **Condensation proposals are welcome**: when a topic is too thin for a standalone chapter, proposing a merger (e.g., 4 → 3 chapters) with pedagogical justification is expected — await approval before restructuring
- **Mathematical accuracy review is a standard step**: after production, a content accuracy pass often catches factual errors (e.g., incorrect claims about triangle centers, wrong congruence case labels)
- **Structural elements are non-negotiable scaffolding**: the post-content blocks, box format, and section opener rules are enforced even during aggressive synthesis passes

**Approach & patterns**

**Production workflow (mandatory sequence):**

1. Consult project curriculum file for the unit structure; research BNCC alignment via web search
2. Present proposed chapter list with pedagogical justification
3. Await Felipe's explicit approval before writing
4. Produce one chapter at a time; validate LaTeX with Python (`re` module) before delivering
5. Await approval before advancing to the next chapter

**Chapter format (strict):**

- Introduction: 3–4 sentences, no anticipation of content
- Section openers: one direct sentence
- Definitions: one short sentence, definition-first before examples
- Boxes: **maximum 1–2 sentences**, isolated data drops — cut anything beyond 2 sentences; maximum 1 box per subtopic
- Examples: `- **Exemplo**` bullet format (no emoji, no numbering)
- Maximum 2 boxes per section

**Mandatory post-content blocks (every chapter, in order):**

- **NA VIDA REAL** — 2–3 sentences maximum
- **E A BÍBLIA NISSO?** — fixed structure: versículo → connection paragraph → one organic bullet principle → Para Conversar prompt; concise, no "Dois princípios:" label, no numbered items, no closing summary paragraph
- **Simplificando** — maximum 2 dense sentences
- **Para não esquecer** — 3–5 short memory-trigger bullets (refined to 3–4 in EM content)
- **Fórmulas do capítulo**

**Output:** chapter content with GitHub raw image URLs + separate TikZ source file. After rendering, every final chapter Markdown should point to the rendered PNG through `raw.githubusercontent.com`, not through local relative `figuras/` paths.

**Tools & resources**

- **Perplexity MCP** (`perplexity_search_web`): used for BNCC curriculum research; effective query pattern combines grade level + skill codes (e.g., EF08MA14) + specific content terms; split conceptual and formula-focused queries for better coverage
- **File tools**: `view` (with line ranges for efficiency), `create_file`, `str_replace`, `bash_tool` (heredoc syntax preferred for full chapter writes to avoid partial-write issues)
- **LaTeX validation** (mandatory before every delivery): Python `re` script checking all `$$ ... $$` blocks for prohibited patterns
- **Project files**: curriculum grids at `/mnt/project/Matema_tica_2_-_[GradeLevel]__2026_.md`; skill file at `/mnt/skills/user/professor-de-matematica-expandido/SKILL.md`

------

**LaTeX rules (user-specified — always apply):**

- **Degree symbol**: NEVER use `°` inside `$$ ... $$`. Always use `^{\circ}`. Example: `$$90^{\circ}$$`. Outside LaTeX, `°` is permitted.
- **AutoLaTeX/CodeCogs prohibited inside `$$ ... $$`**: `\text{}`, `\;`, `\,`, and accented characters. Use `\mathrm{}` for labels and units.
- **Validation**: after creating any chapter file, run Python (`re`) check for `°` inside `$$ ... $$` blocks before delivering to Felipe.
