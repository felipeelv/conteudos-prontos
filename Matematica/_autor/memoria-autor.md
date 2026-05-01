**Purpose & context**

Felipe Rosa is a curriculum developer producing structured mathematics didactic materials (*apostilas*) for a Brazilian Christian school spanning Elementary School (EF) and High School (EM) grade levels. The project integrates mathematical rigor, BNCC alignment, and biblical reflection in every chapter. Success means producing content that is pedagogically coherent across grade levels, appropriately calibrated for each age group, and ready for use in Google Docs via AutoLaTeX/CodeCogs rendering.

The curriculum spans multiple grade levels simultaneously: 4º and 5º ano (EF I), 6º through 9º ano (EF II), and 1ª through 2ª Série do Ensino Médio. Units follow a bimester structure, and Felipe works through them sequentially, typically producing one unit per session.

------

**Current state**

Active production spans several grade levels and units. Recent sessions have covered:

- **5º ano** — Unit 3 (Operações e Medidas de Comprimento e Área): all four chapters completed with format revisions applied
- **4º ano** — Unit 3 (Multiplicação, Divisão e Sólidos Geométricos): all five chapters completed and revised
- **2ª Série EM** — Unit 3 (Matrizes): two chapters completed with LaTeX layout overhaul applied
- **1ª Série EM** — Unit 3 (Operações com Conjuntos): two chapters completed
- **9º ano** — Unit 3 (Conceito de Função): four chapters completed and condensed
- **8º ano** — Unit 3 (Números Racionais e Irracionais): three chapters completed; Unit 8 chapter structure proposed, awaiting production

Format rules have been consolidated into a rewritten project system prompt (v2). All approved format changes have been applied globally across relevant files.

------

**On the horizon**

- **8º ano Unit 8** — "Grandezas Proporcionais e Revisão Integrada": four-chapter structure proposed (chapter list approved), content production not yet begun
- **9º ano** — 2º Bimestre, Unidade 1 "Conceito de Função" (4 chapters) was identified as next in queue
- Continued progression through remaining bimester units across all active grade levels

------

**Key learnings & principles**

- **Density over elaboration**: concept first, minimal framing, no redundancy across sections or chapters. Felipe consistently trims verbose explanations and pushes for tighter prose.
- **Vertical coherence matters**: before producing any unit, BNCC alignment and cross-grade progression must be verified to avoid re-teaching content from prior grades or encroaching on future grades. This analysis is presented for approval before content begins.
- **LaTeX hard constraints**: the AutoLaTeX/CodeCogs plugin in Google Docs captures `$...$` and `$$...$$` blocks line by line — multiline structures like `\begin{array}` break rendering and are prohibited. Other confirmed incompatible commands: `\;`, `\,`, `\text{}`, accented characters inside math delimiters, `\left\{...\right\}` (replace with `\{...\}` or `\lbrace...\rbrace`), and `\qquad` in matrix displays. Side-by-side matrix layouts must be broken into individual `$$...$$` blocks with text labels.
- **EF I algorithm display**: for 4º–5º ano, column-by-column algorithm detail is not shown in the book. Students work algorithms in their notebooks; the book shows expression and result only (Opção B).
- **Brazilian mathematical conventions**: interval notation follows French-influenced convention — open intervals use inverted brackets `]a, b[`, not parentheses.
- **File revision pattern**: when multiple structural changes are needed across a file, deleting and recreating the full file is more reliable than chaining `str_replace` operations. Pattern: `rm [path]` → confirm → `create_file` with full content → `present_files`.

------

**Approach & patterns**

- **Approval-gated workflow**: Claude proposes chapter structure with curricular justification → Felipe approves → chapters produced one at a time → Felipe approves each before the next begins. No content is produced before the chapter list is confirmed.
- **Research-first for new units**: web search (Perplexity + supplementary search) for BNCC habilidade codes, followed by cross-reference with project curriculum files, followed by vertical and horizontal coherence analysis — all before proposing the chapter list.
- **Global corrections**: when a format issue is identified mid-unit, the fix is applied retroactively across all completed chapters, not just going forward.
- **Files delivered as Markdown artifacts** under `/mnt/user-data/outputs/` with descriptive filenames; presented via `present_files` after each creation.

------

**Tools & resources**

- **AutoLaTeX Equations (CodeCogs)** plugin in Google Docs — primary rendering environment for all LaTeX
- **Perplexity MCP** (`perplexity_search_web`) with `recency: year` — primary tool for BNCC curriculum research
- **Project curriculum files** stored at `/mnt/project/` following the pattern `Matema_tica_[level]_-_[Grade]__2026_.md`
- **BNCC habilidades** codes (e.g., EF04MA04, EF07MA01, EF08MA12–13) — used as alignment anchors for every unit

------

**Fixed chapter structure**

Every chapter follows this architecture, in order:

1. Numbered content sections (`## 1`, `## 2`…) — direct one-sentence opening, definitions in one sentence, max two sentences before lists, natural example framing (no "Exemplo resolvido:" label), steps on individual lines
2. **EXEMPLO** blocks — introduced with `---` separator, labeled "EXEMPLO"; **EF I (4º–5º ano)**: Opção B only — show expression and result in simple LaTeX (e.g., `$$14{,}60 + 3{,}47 = 18{,}07$$`), no column-by-column algorithm detail; **EF II and EM**: full step-by-step resolution
3. **Boxes** — blockquote format, title on line 1 with two trailing spaces, content on line 2; maximum 2 boxes per main section only when one is 🔢 Padrão and the other ⚠️ Atenção and both are genuinely necessary; typically 1 box per section
4. **NA VIDA REAL** — maximum 2 sentences
5. **E A BÍBLIA NISSO?** — (1) verse in bold and centered using `#### Center **...**`; (2) 1–2 direct sentences connecting the concept to the biblical principle — no bullet, no dynamic title, no explicit analogy ("assim como X, Y"), no separate supporting verse; (3) *Para Conversar* in blockquote
6. **Simplificando** — maximum 2 dense sentences synthesizing the arc of the chapter. **This is the final closing block. "Para não esquecer" is not included.**

---

## Cache de validações

> Atualizado automaticamente pelo agente `validador-matematica-1` (invocado pela skill `autor-matematica-1` no Passo 4.5). Não pesquise itens já listados — reuse a validação registrada.

### Fórmulas e identidades validadas

| Fórmula | Validação | Validada em | Data |
|---|---|---|---|
| _(nenhuma ainda)_ | | | |

### Cálculos passo-a-passo verificados

| Cálculo | Resultado | Verificada em | Data |
|---|---|---|---|
| `(2+3) · 4 = 5 · 4 = 20` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `(8-3) · 2 = 5 · 2 = 10` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `(4+2) · 3 = 6 · 3 = 18` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `4+2 · 3 = 4+6 = 10` | ✅ correto (precedência: × antes de +) | 4ano/Un4/Cap1 | 2026-05-01 |
| `3 · (2+5) = 3 · 7 = 21` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `3 · 2 + 3 · 5 = 6 + 15 = 21` | ✅ correto (distributiva confere) | 4ano/Un4/Cap1 | 2026-05-01 |
| `4 · (3+2) = 4 · 5 = 20` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `4 · 3 + 4 · 2 = 12 + 8 = 20` | ✅ correto (distributiva confere) | 4ano/Un4/Cap1 | 2026-05-01 |
| `5 · (10+4) = 5 · 14 = 70` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `5 · 10 + 5 · 4 = 50 + 20 = 70` | ✅ correto (distributiva confere) | 4ano/Un4/Cap1 | 2026-05-01 |
| `2 · (6+3) = 2 · 9 = 18` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `2 · 6 + 2 · 3 = 12 + 6 = 18` | ✅ correto (distributiva confere) | 4ano/Un4/Cap1 | 2026-05-01 |

### Personagens / dados históricos validados

| Item | Resultado validado | Fonte | Validado em | Data |
|---|---|---|---|---|
| Robert Recorde | matemático galês, c. 1510–1558. Inventou o sinal de igualdade `=` em sua obra *The Whetstone of Witte* (1557). | Perplexity (Wikipedia EN/PT, MacTutor, Britannica) | 4ano/Un4/Cap1 | 2026-05-01 |

### Versículos confirmados (ARA — Almeida Revista e Atualizada)

| Referência | Tradução exata | Capítulos | Última validação |
|---|---|---|---|
| Provérbios 10:9 | "Quem anda em integridade anda seguro, mas o que perverte os seus caminhos será conhecido." | 4ano/Un4/Cap1 | 2026-05-01 |