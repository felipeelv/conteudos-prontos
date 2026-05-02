**Purpose & context**

Felipe Rosa is developing structured educational chemistry content in Portuguese for a Brazilian school (Colégio Eleve), spanning multiple grade levels: 9º ano (Ensino Fundamental), 1ª série, and 2ª série (Ensino Médio). The project integrates scientific rigor with biblical reflection, targeting age-appropriate depth without sacrificing conceptual clarity. Content is delivered as standalone `.md` files, compatible with the Auto LaTeX Equations Chrome extension for formula rendering.

**Atualização vigente — Unidade 4**

- Produzir sempre `unidade-4` enquanto Felipe estiver concluindo os anos/séries por disciplina.
- Para Química, manter o padrão próprio da disciplina: Markdown sem TikZ, com fórmulas em `$$...$$`, aplicações práticas, conexão bíblica e síntese tabular.
- Ajustar tom e densidade ao ano/série: 9º ano mais concreto e qualitativo; Ensino Médio mais técnico, com cálculos quando o blueprint exigir.
- Ao concluir e validar uma unidade completa, fazer commit e push do escopo da unidade, deixando arquivos não relacionados fora do commit.

**Current state**

Active production spans multiple grade levels and units. Recent completed work includes:

- **9º ano**: Unit 2 chapters on Tabela Periódica and Ligações Químicas
- **1ª série EM**: Unit 2 chapters on Classificação da Matéria, Separação de Misturas Heterogêneas, and Separação de Misturas Homogêneas
- **2ª série EM**: Unit 2 chapters on Soluções e Dispersões (fundamentals, classification, dispersions) and Unit 2 on Concentração de Soluções (concentration units, dilution, mixing/neutralization)

Each unit follows a chapter-by-chapter approval workflow: present chapter list → receive approval → produce one chapter → wait for sign-off → advance.

**Key learnings & principles**

- Content tone: middle ground between dry and verbose — direct definitions with short analogies, never childish, never padded
- Post-content blocks (applications, biblical reflection, synthesis table) should be kept as brief and simple as possible
- Two solved exercises per section when complexity warrants (one simpler, one more complex), labeled neutrally as "Exercício resolvido 1" and "Exercício resolvido 2" — no explicit difficulty signaling; single exercise sufficient for simpler topics
- Each step of mathematical operations must appear on its own line for readability
- Curiosity boxes should contain surprising facts, never suggested experiments
- Emojis appear **only** in boxes, never in section titles
- When content overlaps across chapters, briefly reference prior material rather than repeat it

**Approach & patterns**

- **Chapter structure (all grades)**: Introdução com pergunta instigante → Conceitos com analogias curtas → Tabelas comparativas → Modelo teórico → Aplicações (lista única) → "E A Bíblia Nisso?" → Síntese
- **Writing pattern**: definição direta (1–2 frases) → analogia curta quando útil → bullets apenas para características → exemplo prático → tabela/quadro. Processos inversos são mais curtos.
- **"E A Bíblia Nisso?" section**: 1 versículo + 2 parágrafos conectando ao conteúdo químico + pergunta "Para Conversar" ao final
- **Workflow**: chapter list presented and approved before production begins; after format is established within a unit, re-approval of format is not required for subsequent chapters

**Tools & resources**

- **Format**: All files delivered as `.md`
- **Formulas**: Always in `$$...$$` (single standard, including legend variables); Portuguese descriptive text kept outside LaTeX delimiters to avoid rendering artifacts with accented characters
- **Diagrams**: ASCII only (project does not embed images)
- **Rendering**: Auto LaTeX Equations extension in Chrome
- **Boxes**: Blockquote format with emoji + named label (e.g., `💡 Você sabia?`, `🔎 Curiosidade:`, `🌍 Para você saber:`); one box per main topic
- **Curriculum source**: Grade-specific `.md` project files guide scope and sequencing
