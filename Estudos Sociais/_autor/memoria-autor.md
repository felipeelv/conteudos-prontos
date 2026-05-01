**Purpose & context**

Felipe Rosa produces didactic curriculum materials for a Brazilian Christian school (Colégio Eleve), covering multiple subjects and grade levels: Estudos Sociais (4th–9th grade), Geografia (1st–3rd série EM), and História (1st–3rd série EM). The project targets the 2nd bimester (Unit 3) across the full curriculum grid, with all content aligned to BNCC standards. A Christian worldview integration is a structural requirement — not an optional layer — woven into every chapter through dedicated blocks (biblical verses, faith reflections, historical-biblical connections).

Success means producing complete, publication-ready units that are pedagogically sound, grade-appropriate in language and depth, and consistent in format across all subjects and grade levels.

------

**Current state**

Multiple units have been completed across the curriculum grid, including:

- **Estudos Sociais**: 4th, 5th, 6th, 7th, 8th, and 9th grade Unit 3 chapters — all produced and revised to final versions
- **Geografia 1ª série EM**: Unit 3 (Geologia) — 4 of 5 chapters completed
- **Geografia 2ª série EM**: Unit 3 (Urbanização) — all 4 chapters completed and revised
- **História 1ª série EM**: Unit 3 (Formação da Grécia) — 2 chapters completed with revisions; Unit 5 (Roma) — all 3 chapters completed
- **História 2ª série EM**: Unit 3 (Independência e Primeiro Reinado) — all 3 chapters completed

The production prompt template has been refined across sessions into a two-part structure (Part 1: research + chapter list only; Part 2: production directives), with all formatting standards encoded into it.

------

**On the horizon**

- Remaining chapter(s) in Geografia 1ª série EM Unit 3 (Capítulo 5: Agentes Modeladores do Relevo)
- Remaining units across História and Geografia for 3ª série EM
- Continued rollout of the standardized two-part prompt structure across all remaining units

------

**Key learnings & principles**

- **Conciseness over volume**: Every revision cycle has moved toward denser, shorter content. The pattern is consistent: first drafts are trimmed 20–35% across all subjects and grade levels.
- **Boxes are "drops"**: Interactive boxes (Pare e Pense, Você sabia?, Pense um pouco, etc.) must be 1–2 sentences maximum — one clear idea, no elaboration.
- **Tables substitute, never add**: Tables replace existing prose or lists where items have genuinely comparable attributes; they are never used to introduce new content.
- **Approval gates are non-negotiable**: Chapter list must be approved before production begins; each chapter must be approved before the next is produced; structural changes require a proposal before execution.
- **Verify before revising**: Felipe explicitly requests that project files be re-read before revisions are made — this is a standing expectation, not a one-time request.
- **Portuguese-language BNCC queries outperform English**: Perplexity searches combining subject + grade level + BNCC skill codes in Portuguese return more pedagogically relevant results.
- **Delete-then-create beats str_replace for large rewrites**: For extensive restructuring, deleting the old file with `bash rm` and creating a clean new version is more reliable than chaining multiple `str_replace` operations.

------

**Approach & patterns**

**Workflow:**

1. Read project file via `view` tool
2. Run 2 parallel Perplexity searches per chapter (one for BNCC alignment, one for specific content/examples)
3. Propose chapter list → await approval
4. Produce one chapter → await approval → proceed to next

**Formatting standards (apply across all subjects/grades):**

- Introductions: max 5 sentences for Ensino Médio; shorter for Ensino Fundamental
- Section openers: one direct sentence, no warm-up framing
- Explanatory paragraphs: max 2–3 sentences; concept → explanation → example structure
- Boxes: max 2 per main section (##); 1–2 sentences each
- No "Explorando os Conceitos" heading — content flows directly into numbered sections (## 1.)
- Tables: max 2 per chapter; substitution only

**Block-specific rules:**

- **Para não esquecer**: keyword-style memory triggers, not full sentences; 3–4 bullets max for EM
- **Simplificando**: one dense paragraph (EM) or max 2 sentences
- **Sua Parte**: 1 sentence
- **Curiosidade dos Estudos Sociais**: max 2 sentences
- **Você já pensou nisso?**: 2–3 sentences
- **E para hoje**: Bible verse citation → contextual narrative bridge (e.g., "Com esse versículo, podemos aprender que:") → bullet points → closing question; never use generic label "Valores para nossa vida:"
- **Esse foi o "cara"**: 3 focused bullets + short legacy line
- **Blockquote box format**: title on first line with two trailing spaces, content on second line, both inside `>`

**Decision-making**: Structural changes always require a proposal with Felipe's approval before execution. Condensation plans are proposed section-by-section before rewriting.

------

**Tools & resources**

- **Perplexity MCP** (`perplexity-mcp:perplexity_search_web`, `recency: year`): primary research tool for BNCC validation and content sourcing; 2 parallel searches per chapter standard
- **Project files**: stored at `/mnt/project/` as `.md` files per subject/grade; read via `view` tool at session start and again before revisions
- **Output files**: saved to `/mnt/user-data/outputs/` as `.md` files; naming convention `[subject]_[grade]_u[N]_cap[N]_[slug].md`; `present_files` called after every `create_file` or edit operation
- **File editing tools**: `str_replace` for targeted single-block edits; `bash rm` + `create_file` for large-scale rewrites; `bash sed -i` for simple line deletions across multiple files
- **BNCC curriculum grid**: cross-referenced via project files and Perplexity searches before any chapter structure is proposed