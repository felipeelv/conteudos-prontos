# CLAUDE.md — Matemática 1

> ✅ **MISSÃO Un 4 COMPLETA EM TODAS AS SÉRIES (2026-05-01).** 28 capítulos entregues, validados e cobrindo do 4º ano à 2ª série EM. Pipeline TikZ universal configurado em `_tools/`. Estado completo em `_PROGRESSO.md`.

> Contexto de projeto carregado automaticamente pelo Claude Code quando aberto nesta pasta.
> Sempre que iniciar uma nova sessão aqui, **leia também `_PROGRESSO.md`** (estado atual) e **`_autor/memoria-autor.md`** (especialmente as **regras editoriais consolidadas no início** e o `## Cache de validações`) antes de produzir qualquer capítulo.

---

## 1. O que é este projeto

Pipeline de produção de **capítulos finais** de **Matemática 1** — aritmética, álgebra, conjuntos, funções — para o material didático do Colégio Eleve. Cobre **9 séries**: 4º ano EF1 → 2ª série EM.

- **Disciplina:** Matemática 1
- **Cobertura:** aritmética, álgebra, conjuntos numéricos, funções
- **NÃO cobre:** Estatística e Educação Financeira (Matemática 3 — `autor-estatistica`)
- **Identidade editorial:** material **expositivo-aplicado** — conceito → explicação → exemplo resolvido. Os exercícios resolvidos servem para o aluno **ver a progressão do cálculo**, não para praticar (a prática mora em outro material — não há `## Praticando`).
- **Renderização:** Google Docs com plugin **AutoLaTeX/CodeCogs**. LaTeX rigorosamente compatível com esse renderizador (sem `\text{}`, sem acentos em `$$`, sem `\qquad`, sem `\begin{array}`, etc.).

## 2. Como rodar

```
/autor-matematica-1 <ano> <unidade>
```

**Exemplos:**
- `/autor-matematica-1 4ano unidade-4-fracoes-decimais-e-plano-cartesiano`
- `/autor-matematica-1 9ano` → lista unidades disponíveis e pergunta qual

**Skill responsável:** `~/.claude/skills/autor-matematica-1/SKILL.md`
**Validador:** `~/.claude/agents/validador-matematica-1.md`

## 3. Estrutura de pastas

```
/Users/feliperosa/conteudos-prontos/Matematica/
├── CLAUDE.md                                ← este arquivo (contexto de projeto)
├── _PROGRESSO.md                            ← memória de continuidade entre sessões (LER PRIMEIRO)
├── _autor/                                  ← config editorial (NÃO ALTERAR estrutura)
│   ├── prompt-autor.md                     ← fonte de verdade absoluta para forma
│   ├── CLAUDE.md                           ← regras invioláveis específicas (LaTeX, estrutura)
│   ├── memoria-autor.md                    ← regras editoriais + Cache de validações (essencial)
│   ├── modelo-ef2.md                       ← capítulo-modelo (7º ano EF II)
│   ├── modelo-em.md                        ← capítulo-modelo (1ª série EM)
│   └── scripts/criar_capitulos.sh
├── _tikz/                                   ← fontes TikZ + PNGs renderizados (matrizes, gráficos)
│   ├── <ano>/<unidade>/<slug>.tex
│   └── build/<ano>/<unidade>/<slug>.png
├── _blueprints/                             ← origem (puxado manualmente)
│   └── <ano>/<unidade>/
│       ├── blueprint_unidade.md
│       └── blueprint_capitulo_NN_*.md
└── <ano>/<unidade>/                         ← SAÍDA (capítulos finais)
    └── capitulo_NN_<slug>.md
```

**Convenção de naming na saída:** `capitulo_NN_<slug>.md` — mesmo slug do blueprint, sem o prefixo `blueprint_`.

## 4. Estado atual

**28 capítulos validados** — Un 4 fechada em todas as séries do escopo ativo (4º ano → 2ª série EM).

| Série | Caps | Tema |
|---|---|---|
| 4º ano | 6 | Frações, Decimais e Plano Cartesiano |
| 5º ano | 4 | Frações, Porcentagem e Sólidos Geométricos |
| 6º ano | 3 | Divisibilidade |
| 7º ano | 4 | Introdução à Álgebra |
| 8º ano | 3 | Equações do 1º Grau e Representação Gráfica |
| 9º ano | 4 | Função Afim |
| 1ª EM | 2 | Funções e Função Afim |
| 2ª EM | 2 | Determinantes |

**13 figuras TikZ** produzidas (em `_tikz/`). Cache: 26 personagens + 14 versículos ARA validados.

Histórico completo em `_PROGRESSO.md`.

## 4.1 Pipeline TikZ (universal)

Para gráficos, eixos, matrizes ou diagramas, **NÃO usar `\begin{pmatrix}`, `\begin{matrix}` ou `\begin{array}`** em `$$...$$` — o AutoLaTeX/CodeCogs não compila estruturas multilinha. Usar TikZ pré-renderizado:

1. Criar fonte em `Matematica/_tikz/<ano>/<unidade>/<slug>.tex` (apenas o conteúdo TikZ).
2. Rodar `./_tools/tikz-render.sh Matematica` (ou só `./_tools/tikz-render.sh`).
3. Referenciar o PNG no capítulo: `![alt descritivo](../../_tikz/build/<ano>/<unidade>/<slug>.png)`.
4. Hook git pre-commit bloqueia commit com `.tex` sem `.png` correspondente atualizado.

Convenções e detalhes em `<repo>/_tools/CONVENCAO_TIKZ.md`.

## 5. Validador automatizado (recurso central)

Cada capítulo, **antes de salvar**, é validado por um sub-agente especializado: **`validador-matematica-1`**.

**O que ele valida:**
1. **Cálculos aritméticos** — confere cada igualdade do capítulo (ex.: `5·14 = 70`?)
2. **Fórmulas matemáticas** — cross-check com canônicas (Bhaskara, juros, áreas, identidades)
3. **Sintaxe LaTeX/CodeCogs** — 12 regras (sem `\text{}`, sem acentos em `$$`, etc.)
4. **Personagens citados** — Perplexity (Robert Recorde, Pitágoras, Bhaskara…)
5. **Versículo bíblico** — Perplexity (tradução ARA)

**Como economiza tempo:** consulta primeiro o **Cache de validações** em `_autor/memoria-autor.md`. Itens já validados em capítulos anteriores são **reusados** — Provérbios 10:9 e Robert Recorde foram validados no Cap 1 do 4º ano e nunca mais precisam de chamada Perplexity nesta disciplina.

**Cache cresce a cada capítulo** — produção fica progressivamente mais rápida.

## 6. Hierarquia de fontes (ordem de consulta antes de produzir)

A skill já automatiza isso, mas o ordering é importante:

1. **`_PROGRESSO.md`** — estado atual, padrões aprovados acumulados
2. **`_autor/prompt-autor.md`** — forma, estrutura, estilo (fonte de verdade)
3. **`_autor/CLAUDE.md`** — regras invioláveis (LaTeX, estrutura, validações)
4. **`_autor/memoria-autor.md`** — contexto + **Cache de validações** (essencial)
5. **`_autor/modelo-ef2.md`** (4º–9º) ou **`modelo-em.md`** (1ª–2ª série EM) — referência de tom
6. **`_blueprints/<ano>/<unidade>/`** — blueprint da unidade + blueprints dos capítulos

**Regra:** quando blueprint conflitar com `prompt-autor.md` ou `CLAUDE.md`, vence o documento editorial. Blueprint é insumo, não autoridade. **Especialmente para fatos biográficos** — o validador frequentemente captura erros vindos do blueprint.

## 7. Estrutura fixa do capítulo (resumo)

```
# CAPÍTULO X — TEMA
## INTRODUÇÃO          (≤3 frases)
> 💭 Pense um pouco:    (obrigatório após introdução)
---
## 1. … ## 2. … ## 3. … (sem teto rígido em Matemática)
---
## NA VIDA REAL        (≤2 frases)
---
## E A BÍBLIA NISSO?
<center> *"versículo"* — **Referência** </center>
[1-2 frases conectando]
> 💬 **Para Conversar:** [pergunta]
---
## Simplificando       (≤2 frases)
---
## Fórmulas do capítulo (apenas 8º ano em diante)
```

## 8. Adaptação por série

| Faixa | Linguagem | Exemplos resolvidos | Bloco "Fórmulas" |
|---|---|---|---|
| **4º–5º ano EF I** | Simples e concreta | **Opção B**: expressão + resultado em LaTeX simples (sem coluna a coluna) | NÃO incluir |
| **6º–7º ano EF II** | Transição concreto → abstrato | Passo a passo com cada operação em linha separada | NÃO incluir |
| **8º–9º ano EF II** | Álgebra consolidada | Passo a passo + dados → fórmula → substituição → resultado | INCLUIR |
| **1ª–2ª série EM** | Formalismo matemático completo | Passo a passo completo com justificativa por etapa | INCLUIR |

## 9. Regras LaTeX/AutoLaTeX (resumo das invioláveis)

- ❌ Sem `\text{}` — usar `\mathrm{}`
- ❌ Sem `\;`, `\,` (espaços)
- ❌ Sem caracteres acentuados dentro de `$$...$$`
- ❌ Sem `\begin{array}` ou estrutura multilinha em `$$...$$`
- ❌ Sem `\qquad`
- ❌ Sem `\left\{...\right\}` — preferir `\{...\}` ou `\lbrace...\rbrace`
- ✅ Vírgula decimal: `14{,}60` (com chaves)
- ✅ Intervalo aberto brasileiro: `]a, b[` (não `(a, b)`)

## 10. Aprendizados-chave (a evoluir conforme produção)

1. **Validador `validador-matematica-1` é obrigatório no Passo 4.5.** Ele captura erros aritméticos e dados históricos errados antes da publicação.

2. **Cache de validações economiza tempo.** Provérbios 10:9, Robert Recorde, Bhaskara — validados uma vez, reusados sempre.

3. **Blueprints não são fonte autoritativa para fatos biográficos.** O validador frequentemente captura imprecisões biográficas vindas do blueprint.

4. **EF1 usa formato Opção B** — expressão e resultado em uma linha LaTeX, sem detalhamento coluna a coluna.

5. **EF2 e EM usam passo a passo** — cada operação em sua linha, sequência: dados → fórmula com símbolos → substituição → cada simplificação → resultado.

6. **Apresentar mudanças antes de aplicar** (regra do Felipe): mesmo em modo auto, mostrar diff/lista antes de adicionar entradas ao cache ou alterar `memoria-autor.md`/`CLAUDE.md`.

## 11. Antes de cada produção (checklist mínimo)

- [ ] Li `_PROGRESSO.md` para conhecer o estado atual
- [ ] Li `_autor/memoria-autor.md` § Cache de validações
- [ ] Li o `blueprint_unidade.md` da unidade-alvo
- [ ] Li o `blueprint_capitulo_NN_*.md` específico
- [ ] Identifiquei a série e o modelo de tom (`modelo-ef2.md` ou `modelo-em.md`)
- [ ] Tenho lista de capítulos para produção aprovada (modo padrão = 1 por vez)

## 12. Após cada produção (atualização de memória)

- Invocar `validador-matematica-1` (Passo 4.5)
- Apresentar relatório do validador ao Felipe
- Se aprovado, **adicionar entradas ao cache** em `_autor/memoria-autor.md` § Cache de validações
- Atualizar `_PROGRESSO.md` (nova linha em "Histórico", status, data)
- Atualizar `_autor/memoria-autor.md` se houve regra editorial nova
- Se a regra é **inviolável**, atualizar também `_autor/CLAUDE.md`
- Sempre **confirmar antes de gravar**

## 13. Quando NÃO usar a skill `autor-matematica-1`

- **Estatística e Educação Financeira (Matemática 3)** → skill `autor-estatistica`
- **Frameworks de unidade** (estrutura curricular antes do blueprint) → skill `framework-unidade-matematica`
- **Outras disciplinas** → skill `autor-<disciplina>` correspondente
- **Listas de exercícios** → esta skill produz capítulo conceitual com exemplos resolvidos integrados, não exercícios livres

## 14. Referências

- **Skill:** `~/.claude/skills/autor-matematica-1/SKILL.md`
- **Validador:** `~/.claude/agents/validador-matematica-1.md`
- **Repo de blueprints upstream:** `~/material-blueprints/` (sincronização manual sob demanda)
- **Skill de framework:** `~/.claude/skills/framework-unidade-matematica/SKILL.md`
- **CLAUDE.md global do home:** `~/CLAUDE.md` (contexto multi-projeto)
