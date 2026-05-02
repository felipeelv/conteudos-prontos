**Purpose & context**

Felipe is producing a multi-grade Physics textbook series for a Christian school in Brazil, covering grades 6–9 (Ensino Fundamental) and years 1–2 of Ensino Médio. All content is written in Brazilian Portuguese, follows BNCC curriculum alignment, and integrates a faith-based reflection section ("E a Bíblia Nisso?") into every chapter. The project is organized by grade level, bimester, and unit, with chapter numbering resetting at each new unit. Content is delivered as Markdown files with LaTeX equations, structured for potential use in Google Docs via the AutoLaTeX/CodeCogs rendering pipeline.

**Current state**

Recent sessions have covered:

- **2ª Série EM** — Unit 3: Estudo dos Gases (Capítulos 1–2: Gases Perfeitos, Transformações Gasosas)
- **1ª Série EM** — Unit 3: Vetores e Movimento Circular (Capítulos 1–2); Unit 2: MUV and Movimento Vertical (Capítulos 3–4)
- **9º Ano** — Unit 3: Newton's Second and Third Laws (Capítulos 1–2)
- **8º Ano** — Unit 3: Energia Elétrica (Capítulos 1–2)
- **7º Ano** — Unit 3: Temperature (Capítulos 1–2)
- **6º Ano** — Unit 3: Movimento e Repouso (Capítulos 1–2)

Each session follows the same approval-gated workflow: propose chapter structure → await approval → produce one chapter at a time → content review → targeted revisions → final delivery.

**Key learnings & principles**

- **Nomenclature (2ª Série):** Brazilian didactic standards (Ramalho, ENEM/vestibular) label isobaric transformation as "Lei de Gay-Lussac (1ª lei)" and isochoric as "Lei de Gay-Lussac (2ª lei)" — not "Lei de Charles" for isobaric.
- **LaTeX compatibility:** The CodeCogs/AutoLaTeX renderer does not support `\text{}` or accented characters (ç, ã, é, etc.) inside `$$ $$` blocks. Fix: use `\mathrm{}` instead of `\text{}`, move accented words outside LaTeX delimiters, replace Unicode middle dots with `\cdot`, and degree symbols with `^{\circ}`.
- **Multi-step calculations:** In worked examples, each mathematical operation must appear on its own `$$ $$` block (one operation per line), following the structure: Dados → fórmula → substituição → resultado.
- **Content corrections are surgical:** Use `str_replace` on exact blocks rather than rewriting full files.
- **Content cannot be deleted, only altered or replaced** (established in 6º Ano sessions).
- **Perplexity searches** for content verification work best with Brazilian Portuguese terminology combined with physics concept names and curriculum context terms.

**Approach & patterns**

- **Current production scope:** until Felipe says otherwise, produce only **Unidade 4** content, moving grade by grade/year by year until all years are complete. Do not expand to other units in the same grade unless explicitly requested.
- **TikZ illustration rule:** Physics chapters should be visually supported whenever a diagram clarifies the phenomenon. Prefer 2 or more TikZ illustrations per chapter when the topic benefits from visual context. Keep source files beside the chapter as `figuras_capXX_<slug>.tex`, render PNGs under the unit `figuras/` folder, and reference each image in Markdown with a GitHub raw URL: `https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/<ano>/<unidade>/figuras/capXX_tikz-N.png`. Do not use relative `](figuras/...)` links in final Markdown because Google Docs copy/paste loses those images.
- **Concise student memory:** "Para não esquecer" must have **2-3 bullets maximum**, preferably 3 only when each point is essential.
- **Publish-after-unit rule:** when a full unit is completed and verified, commit and push the scoped unit changes immediately so GitHub raw image URLs become available for Google Docs validation. Keep unrelated local files out of the commit.
- **Workflow:** Propose chapter list → approval → one chapter at a time → content/accuracy review → targeted edits → final delivery. Never advance without explicit sign-off.
- **Self-review:** After delivering chapters, Claude conducts a content verification pass (formulas, nomenclature, conceptual accuracy, curriculum alignment) and presents ranked issues for approval before applying corrections.
- **Formatting rules (enforced across all grades):**
  - Introduction: maximum 1 direct paragraph, no preamble or lengthy contextualization
  - Section openings: one direct sentence
  - Paragraphs: maximum 2 sentences before transitioning to a list
  - Definitions: one short sentence
  - All boxes (💭 ⏸️ 💡 📏 ⚡ 🧪 📐): use Markdown blockquote format `> emoji **Título:** texto` — title line and single-sentence content
  - Never place two boxes consecutively — always separate with at least one content paragraph
  - "E a Bíblia Nisso?": maximum 2 short principles, no excessive development or pietism; includes opening verse, connection sentence, two principles with scripture citations, and a discussion question
  - "Para não esquecer": maximum 2–3 bullets
  - "Simplificando" and "NA VIDA REAL": concise and direct
  - "Sua Parte": tight word limit

**Tools & resources**

- Files created at `/home/claude/`, then copied to `/mnt/user-data/outputs/` via bash; `present_files` called after each copy
- `str_replace` for targeted in-place edits on source files before re-copying to outputs
- Project curriculum and style reference files at `/mnt/project/` (e.g., `fisica_1a_serie_2026.md`, `cap1_conceitos_fundamentais_movimento.md`)
- Perplexity MCP for content verification, queried in Brazilian Portuguese with curriculum-specific terminology
- Google Docs with AutoLaTeX Equations plugin (CodeCogs renderer) as the downstream rendering environment
