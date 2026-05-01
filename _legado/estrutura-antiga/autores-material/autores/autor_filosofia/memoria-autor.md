**Purpose & context**

Felipe Rosa develops curriculum and textbook content for Colégio Eleve, a Brazilian Christian high school. Work spans Philosophy and Sociology for 1st and 2nd years of Ensino Médio (Ensino Médio = grades 10–12), organized into bimestral units of two chapters each. The curriculum aligns with BNCC standards and integrates a Christian worldview throughout. All content is written entirely in Brazilian Portuguese.

The project is ongoing across multiple bimestres and grade levels. Content is produced within a structured Claude project with access to curriculum grid files and existing chapter templates.

**Current state**

Active production has covered:

- **Sociology 1ª série:** 1st and 2nd bimester chapters complete
- **Sociology 2ª série:** 1st and 2nd bimester chapters complete
- **Philosophy 1ª série:** 1st bimester complete; curriculum grid generated
- **Philosophy 2ª série:** 1st and 2nd bimester chapters complete; curriculum grid generated

Curriculum grid files for all four tracks have been generated and saved.

**On the horizon**

- Remaining bimestres (3rd and 4th) for all four tracks
- Ongoing sensitivity review for Philosophy chapters given the school's Christian identity

**Key learnings & principles**

- **Sensitivity anchoring (Philosophy):** When covering thinkers who challenge Christian worldviews (Marx, Nietzsche, Hegel, etc.), Scripture must be the origin point and the philosopher the derivative — never frame the philosopher's insight as correct with the Bible confirming it. Providence language must include the faith/philosophy distinction in the same sentence. Comparative moral claims (e.g., fascism vs. communism) must explicitly acknowledge moral distinctions before making philosophical observations.
- **Conciseness is a core quality standard:** Initial drafts consistently run long; multiple rounds of condensing have been needed. Target is approximately 1,300–1,600 words per chapter. The editorial principle is: remove redundant closing sentences, fuse two-sentence introductions into one, eliminate "pregação" (moralizing asides), cut label phrases like "Veja a diferença em um exemplo concreto," and remove warm-up paragraphs before bulleted lists.
- **Directness over depth trade-offs are false:** Conciseness should never sacrifice conceptual rigor. The goal is tight, direct prose that eliminates redundancy while preserving substance appropriate for advanced high school students.
- **Research before writing:** Use Perplexity web search to research content before drafting. Effective query patterns combine the topic with grade-level context (e.g., "Hegel dialética ensino médio filosofia secundária") and add "crítica cristã" + a named critic (e.g., Francis Schaeffer) for theological evaluation angles.

**Approach & patterns**

- **Approval-gated workflow:** Always present the chapter list for approval before producing content. Produce one chapter at a time; await review before proceeding to the next.
- **Research-first:** Run targeted Perplexity searches per chapter before drafting — typically one query for curriculum/BNCC alignment and one or two for specific concepts and examples. Adding "ensino médio" or "filosofia secundária" to queries improves relevance.
- **Iterative revision:** Felipe reviews each chapter and provides specific structural and stylistic corrections that carry forward to all subsequent chapters in the session and beyond.
- **Sensitivity review:** After drafting Philosophy chapters involving non-Christian thinkers, conduct a tiered sensitivity analysis (high / medium / low risk) relative to the school's Christian identity before finalizing.

**Chapter format specifications**

Each chapter follows a fixed structure:

*Opening:* Introduction (max two sentences, ideally fused into one) → numbered content sections with subsections.

*Closing blocks (in order):* Ampliando o Olhar → No Fio da História → O Que a Fé Diz → Pensador em Destaque → Você já pensou nisso? → Simplificando → Para não esquecer

> ⚠️ **"Sua Parte" block is permanently removed from all Philosophy and Sociology chapters.** Do not include it in any chapter, past revision or future production.

*Formatting rules:*

- Maximum two sentences before any list; single direct sentence for section openings
- Definitions in one short sentence
- Boxes: title on line one (two trailing spaces), content on line two — both inside the same blockquote (`>`)
- Boxes function as short "drops" — single-line entries, not multi-line blocks
- Maximum one box per main section; no duplicate boxes within the same section
- Post-content closing blocks should be significantly more concise than main content sections
- "Para não esquecer" capped at 5 bullets maximum
- "O Que a Fé Diz" uses bullet-point structure; no warm-up paragraph before bullets

**Tools & resources**

- **Perplexity MCP** (`perplexity-mcp:perplexity_search_web`, `recency: year`) for pre-writing research
- **Project files** read from `/mnt/project/` (curriculum grids, existing chapter templates)
- **Output files** saved to `/mnt/user-data/outputs/` with descriptive kebab-case filenames; presented via `present_files` tool after creation or edit
- **`str_replace` tool** for targeted edits to existing output files