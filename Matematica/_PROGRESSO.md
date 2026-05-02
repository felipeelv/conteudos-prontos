# Progresso da Disciplina — Matemática 1

> ✅ **UN 4 COMPLETA EM TODAS AS SÉRIES (2026-05-01)** — 6+4+3+4+3+4+2+2 = 28 capítulos entregues e validados.
> **Cobertura total:** 4º ano → 2ª série EM (todas as 8 séries do escopo ativo).
> **Marco:** missão "uma Un 4 por série" concluída.

> Arquivo de memória de trabalho. Sempre que abrir uma nova sessão para esta disciplina, **leia este arquivo primeiro**, depois `_autor/memoria-autor.md` (especialmente a seção `## Cache de validações`).

**Última atualização:** 2026-05-01 (**Un 4 da 2ª série EM fechada — Determinantes.** 2 capítulos com profundidade EM completa: definição, Sarrus, Laplace, propriedades, Teorema de Jacobi, inversa via adjunta. **Marco editorial:** Cap 1 teve 3 correções LaTeX (`\qquad`, `\text{}`, `\,`) — registrada nova regra: **matrizes não podem usar `\begin{pmatrix}` no AutoLaTeX, devem ser TikZ ou descrição em prosa**. 4 figuras TikZ produzidas para representar matrizes 2x2, Sarrus 3x3, sinais de cofatores e fluxo cofator→adjunta→inversa. **MISSÃO COMPLETA: Un 4 fechada em todas as 8 séries do escopo ativo.**)
**Skill responsável:** `autor-matematica-1` (em `~/.claude/skills/autor-matematica-1/SKILL.md`)
**Validador:** `validador-matematica-1` (em `~/.claude/agents/validador-matematica-1.md`)

---

## Status atual

**28 capítulos validados** — Un 4 fechada em **todas as 8 séries** do escopo ativo.

```
✅ 4º ano — Un 4 (Frações, Decimais e Plano Cartesiano) — 6/6 caps
   ├─ Cap 1: Propriedades das Operações
   ├─ Cap 2: Frações Unitárias
   ├─ Cap 3: Números Decimais
   ├─ Cap 4: Malha Quadriculada
   ├─ Cap 5: Introdução ao Plano Cartesiano (com TikZ: eixo cartesiano)
   └─ Cap 6: Representações e Trajetos

✅ 5º ano — Un 4 (Frações, Porcentagem e Sólidos Geométricos) — 4/4 caps
   ├─ Cap 1: Operações com Frações
   ├─ Cap 2: Porcentagem
   ├─ Cap 3: Sólidos Geométricos e Planificações
   └─ Cap 4: Problemas de Contagem

✅ 6º ano — Un 4 (Divisibilidade) — 3/3 caps
   ├─ Cap 1: Múltiplos e Divisores
   ├─ Cap 2: Primos e Compostos (com TikZ: árvore de fatores de 60)
   └─ Cap 3: MDC e MMC (com TikZ: diagrama de Venn divisores 24/36)

✅ 7º ano — Un 4 (Introdução à Álgebra) — 4/4 caps
   ├─ Cap 1: Variável e Expressões Algébricas
   ├─ Cap 2: Monômios e Polinômios
   ├─ Cap 3: Operações com Expressões Algébricas
   └─ Cap 4: Sequências e Regularidades (com TikZ: sequência recursiva 2-5-11-23-47)

✅ 8º ano — Un 4 (Equações do 1º Grau e Representação Gráfica) — 3/3 caps
   ├─ Cap 1: Equações do 1º Grau: Aprofundamento (com Fórmulas do capítulo)
   ├─ Cap 2: Equação Linear com Duas Incógnitas (com Fórmulas do capítulo)
   └─ Cap 3: Equação Linear e Reta no Plano Cartesiano (com TikZ: reta y=5+2x; com Fórmulas do capítulo)

✅ 9º ano — Un 4 (Função Afim) — 4/4 caps
   ├─ Cap 1: Definição e Gráfico (com Fórmulas do capítulo)
   ├─ Cap 2: Coeficientes e Comportamento (com TikZ: comparação a>0 vs a<0; com Fórmulas do capítulo)
   ├─ Cap 3: Zero e Estudo do Sinal (com TikZ: estudo do sinal de f(x)=2x-6; com Fórmulas do capítulo; dedução de x_0=-b/a)
   └─ Cap 4: Casos Particulares e Aplicações (com Fórmulas do capítulo)

✅ 1ª série EM — Un 4 (Funções e Função Afim) — 2/2 caps
   ├─ Cap 1: Conceito de Função (Dom/CDom/Im, classificação, composta, inversa; com TikZ: função vs não-função; com Fórmulas do capítulo)
   └─ Cap 2: Função Afim (formalismo EM, modelagem, ponto de equilíbrio; com TikZ: comparação de planos; com Fórmulas do capítulo)

✅ 2ª série EM — Un 4 (Determinantes) — 2/2 caps
   ├─ Cap 1: Cálculo de Determinantes (ordem 1, 2, Sarrus 3x3, Laplace; com 3 TikZ: matriz 2x2, Sarrus, sinais de cofatores; com Fórmulas do capítulo)
   └─ Cap 2: Propriedades e Aplicações (transposta, troca, anulação, escala, produto, Jacobi, inversa via adjunta; com TikZ: fluxo cofator→adjunta→inversa; com Fórmulas do capítulo)
```

**Pendentes nas oito unidades:** nenhum. **Missão Un 4 concluída.**

**TikZ produzido até agora:** 13 fontes — `eixo-cartesiano-3x2-vs-2x3` (4ano), `arvore-fatores-60` (6ano), `divisores-comuns-24-36` (6ano), `sequencia-recursiva-dobro-mais-um` (7ano), `reta-y-igual-5-mais-2x` (8ano), `comparacao-coeficiente-angular` (9ano), `estudo-do-sinal-2x-menos-6` (9ano), `relacao-funcao-vs-nao-funcao` (1serie), `comparacao-planos-telefonia` (1serie), `matriz-2x2-ad-menos-bc` (2serie), `sarrus-3x3` (2serie), `sinais-cofatores-3x3` (2serie), `fluxo-matriz-inversa` (2serie).

**Disciplina inteira:** 8 unidades por série × 9 séries (4º ano EF1 → 2ª série EM) — produção dependente dos blueprints disponíveis em `_blueprints/`.

---

## Histórico das atualizações

| Data | Capítulos | Marco |
|---|---|---|
| 2026-05-01 | 0 (setup) | Skill `autor-matematica-1` criada; sub-agente `validador-matematica-1` criado; cache de validações inicializado em `_autor/memoria-autor.md` |
| 2026-05-01 | +1 (4º ano, Un4, Cap1) | Propriedades das Operações. Robert Recorde confirmado via Perplexity (c. 1510–1558, *Whetstone of Witte* 1557). Provérbios 10:9 ARA validado. 12 cálculos passo-a-passo verificados manualmente. **Todas as entradas adicionadas ao Cache de validações.** |
| 2026-05-01 | +1 (4º ano, Un4, Cap2) | Frações Unitárias. Sridhara confirmado via Perplexity (matemático indiano, c. 870–930 d.C., *Pāṭīganita*). Lucas 16:10 ARA validado (match exato). 12 regras LaTeX/estrutura aprovadas inline (sub-agente `validador-matematica-1` foi instalado depois do início da sessão e não pôde ser invocado — lógica equivalente rodada via grep + Perplexity). Cache: +1 personagem, +1 versículo. |
| 2026-05-01 | +4 (4º ano, Un4, Caps 3–6 — modo unidade-inteira) | **Un 4 fechada.** Cap 3 Números Decimais (Christoff Rudolff — ajustado para 1530/*Exempelbüchlin* após Perplexity apontar que *Coss* 1525 era álgebra, não decimais; João 8:32 ARA OK). Cap 4 Malha Quadriculada (Pingala séc. III a.C., *Chandaḥśāstra*; Provérbios 11:1 ARA match exato). Cap 5 Plano Cartesiano (Pierre de Fermat séc. XVII, geometria analítica 1629; Salmo 119:105 — pontuação corrigida para "palavra e, luz" conforme ARA). Cap 6 Representações e Trajetos (Grace Hopper 1906–1992, compilador A-0/Flow-Matic; Provérbios 3:6 ARA match exato). 12 regras LaTeX/estrutura aprovadas em todos os 4. Cache: +4 personagens, +4 versículos. |
| 2026-05-01 | +4 (5º ano, Un4, Caps 1–4 — modo unidade-inteira) | **Un 4 do 5º ano fechada.** Cap 1 Operações com Frações (Brahmagupta 598–668, *Brāhmasphuṭasiddhānta* — primeiro a formalizar zero; Provérbios 11:1 reuso). Cap 2 Porcentagem (Luca Pacioli 1445–1517, *Summa de Arithmetica* 1494; Provérbios 16:11 — versão inicial corrigida para "Peso e balança justos pertencem ao SENHOR" conforme ARA). Cap 3 Sólidos e Planificações (Gaspard Monge 1746–1818, geometria descritiva; Provérbios 10:9 reuso). Cap 4 Problemas de Contagem (Mahāvīra c. 800–870, *Gaṇita-sāra-saṅgraha*; Lucas 16:10 reuso). 12 regras LaTeX/estrutura aprovadas. Cache: +4 personagens, +1 versículo (Provérbios 16:11), +3 reusos registrados. |
| 2026-05-01 | 0 (infraestrutura) | **Pipeline TikZ universal configurado.** BasicTeX + pgfplots + tikz-cd + circuitikz + chemfig + mhchem + forest + bussproofs + chronosys instalados globalmente (vale para todas as disciplinas). Estrutura central em `_tools/` (`tikz-render.sh`, `tikz-preamble.tex`, `README.md`, `CONVENCAO_TIKZ.md`). Cores institucionais `eleveBlue`/`eleveAccent` definidas. Hook git pre-commit bloqueia commit com `.tex` sem `.png` correspondente. Primeiro exemplo testado e inserido no Cap 5 do 4º ano: `eixo-cartesiano-3x2-vs-2x3.png` mostrando que (3,2) ≠ (2,3). `_autor/CLAUDE.md` e skill `autor-matematica-1` atualizados com a convenção. |
| 2026-05-01 | +3 (6º ano, Un4, Caps 1–3 — modo unidade-inteira) | **Un 4 do 6º ano fechada.** Cap 1 Múltiplos e Divisores (Ernst Kummer 1810–1893 — texto suavizado: ele estudou divisibilidade em alto nível, mas critérios elementares são bem anteriores. Provérbios 10:9 reuso). Cap 2 Primos e Compostos (Sophie Germain 1776–1831, Monsieur Le Blanc; Daniel 6:4 — corrigido para versão ARA correta começando "Então, os presidentes e os sátrapas procuravam ocasião"). Cap 3 MDC e MMC (Gabriel Lamé 1795–1870, eficiência do algoritmo de Euclides; 1 Coríntios 12:14 match exato). 12 regras LaTeX/estrutura aprovadas. **Primeiro uso real do pipeline TikZ:** `arvore-fatores-60.png` (Cap 2) e `divisores-comuns-24-36.png` (Cap 3). Cache: +3 personagens, +2 versículos. |
| 2026-05-01 | +4 (7º ano, Un4, Caps 1–4 — modo unidade-inteira) | **Un 4 do 7º ano fechada — Introdução à Álgebra.** Cap 1 Variável e Expressões Algébricas (George Peacock 1791–1858, *Treatise on Algebra* 1830, álgebra simbólica; Provérbios 10:9 reuso). Cap 2 Monômios e Polinômios (Marin Mersenne 1588–1648, frade da ordem dos Mínimos — texto usa apenas "frade francês" para 7º ano; Daniel 6:4 reuso). Cap 3 Operações com Expressões Algébricas (George Boole 1815–1864, álgebra booleana; Provérbios 11:3 — pontuação ARA corrigida para "guia; mas, aos pérfidos, a sua mesma falsidade"). Cap 4 Sequências e Regularidades (Brook Taylor 1685–1731, séries de Taylor mencionadas só como referência geral pois é tema avançado; Daniel 6:10 — texto corrigido para versão ARA exata). 12 regras LaTeX/estrutura OK. **Quarto uso do pipeline TikZ:** `sequencia-recursiva-dobro-mais-um.png` (Cap 4). Cache: +4 personagens, +2 versículos, +2 reusos registrados. |
| 2026-05-01 | +3 (8º ano, Un4, Caps 1–3 — modo unidade-inteira) | **Un 4 do 8º ano fechada — Equações do 1º Grau e Representação Gráfica.** Cap 1 Equações do 1º Grau Aprofundamento (Al-Khwarizmi c. 780–850, Casa da Sabedoria/Bagdá, *Al-jabr wa al-Muqābala* origem dos termos "álgebra" e "algoritmo"; Provérbios 16:11 reuso). Cap 2 Equação Linear com Duas Incógnitas (Diofanto séc. III, *Arithmetica*, "pai da álgebra"; Filipenses 4:8 ARA match exato). Cap 3 Equação Linear e Reta no Plano Cartesiano (René Descartes 1596–1650, *La Géométrie* 1637; Tiago 1:22 ARA match exato). 12 regras LaTeX/estrutura OK. **Marco:** primeira unidade que inclui bloco "## Fórmulas do capítulo" — regra editorial venceu o blueprint da unidade (que pedia para não incluir). **Marco 2:** primeira unidade SEM correções na 1ª validação — todos os personagens e versículos vieram corretos. **Quinto uso do TikZ:** `reta-y-igual-5-mais-2x.png` (Cap 3) com 3 pontos da tabela marcados. Cache: +3 personagens, +2 versículos, +1 reuso registrado. |
| 2026-05-01 | +4 (9º ano, Un4, Caps 1–4 — modo unidade-inteira) | **Un 4 do 9º ano fechada — Função Afim.** Cap 1 Definição e Gráfico (Nicole Oresme 1320–1382, latitude de formas; Provérbios 11:3 reuso). Cap 2 Coeficientes e Comportamento (Pierre de Fermat reuso, geometria analítica; Provérbios 10:9 reuso). Cap 3 Zero e Estudo do Sinal (Brahmagupta reuso, regras para zero/negativos; Lucas 16:10 reuso) — **dedução algébrica de $x_0 = -\dfrac{b}{a}$ explicitada (pico N4 controlado).** Cap 4 Casos Particulares e Aplicações (Liu Hui c. 220–280, *Jiuzhang Suanshu*; Gálatas 6:7 ARA match exato). 12 regras LaTeX/estrutura OK. **Segunda unidade consecutiva sem correções na 1ª validação.** **6º e 7º uso do TikZ:** `comparacao-coeficiente-angular.png` (Cap 2) e `estudo-do-sinal-2x-menos-6.png` (Cap 3) — com regiões coloridas por sinal. **Nova regra editorial registrada** (a partir de feedback do Felipe): sem auto-referência curricular em subtítulos ou texto (não dizer "do Nº ano", "como vimos antes"). Cap 1 do 8º ano corrigido retroativamente. Cache: +2 personagens (Oresme, Liu Hui), +1 versículo (Gálatas 6:7), +5 reusos registrados. |
| 2026-05-01 | +2 (1ª série EM, Un4, Caps 1–2 — modo unidade-inteira) | **Un 4 da 1ª série EM fechada — Funções e Função Afim.** Cap 1 Conceito de Função (Karl Weierstrass 1815–1897, "pai da análise moderna", rigor formal a função/limite/continuidade; Provérbios 10:9 reuso) — definição rigorosa Dom/CDom/Im, classificação injetora/sobrejetora/bijetora, função composta $(f \circ g)(x) = f(g(x))$, função inversa com condição de bijetividade. Cap 2 Função Afim (Adrien-Marie Legendre 1752–1833, *Éléments de géométrie* 1794, mínimos quadrados 1805; Daniel 6:4 reuso) — revisita formal com modelagem (assistência técnica $C(t)=12t+80$) e ponto de equilíbrio entre dois planos ($m=50$). 12 regras LaTeX/estrutura OK. **Terceira unidade consecutiva sem correções na 1ª validação.** **8º e 9º uso do TikZ:** `relacao-funcao-vs-nao-funcao.png` (Cap 1) e `comparacao-planos-telefonia.png` (Cap 2) — segundo TikZ refeito por escala incorreta na 1ª tentativa. Cache: +2 personagens (Weierstrass, Legendre), +2 reusos registrados. |
| 2026-05-01 | +2 (2ª série EM, Un4, Caps 1–2 — modo unidade-inteira) | **Un 4 da 2ª série EM fechada — Determinantes. MISSÃO Un 4 COMPLETA EM TODAS AS SÉRIES.** Cap 1 Cálculo de Determinantes (Carl Gustav Jacob Jacobi 1804–1851; Provérbios 10:9 reuso) — ordem 1 e 2, Sarrus 3x3, menor complementar, cofator $A_{ij} = (-1)^{i+j} M_{ij}$, desenvolvimento de Laplace por linha/coluna. **Necessárias 3 correções LaTeX (`\qquad`, `\text{}`, `\,`)** capturadas pela validação automática. Cap 2 Propriedades e Aplicações (Pierre-Simon Laplace 1749–1827, expansão de Laplace 1772, *Mécanique Céleste*; Daniel 6:4 reuso) — propriedades (transposta, troca de linhas, anulação, escala $\det(\lambda A) = \lambda^n \det A$, produto $\det(AB) = \det A \cdot \det B$, Teorema de Jacobi $\det(\mathrm{adj}(A)) = (\det A)^{n-1}$), inversa via adjunta. **10º a 13º uso do TikZ:** `matriz-2x2-ad-menos-bc.png`, `sarrus-3x3.png`, `sinais-cofatores-3x3.png`, `fluxo-matriz-inversa.png`. **Nova regra editorial registrada:** matrizes não podem usar `\begin{pmatrix}` no AutoLaTeX — sempre via TikZ ou descrição em prosa. Cache: +2 personagens (Jacobi, Laplace), +2 reusos. |

---

## Cobertura por faixa pedagógica

| Faixa | Anos/Séries | Característica | Modelo de referência |
|---|---|---|---|
| **EF1 anos finais** | 4º, 5º | Linguagem simples, exemplos cotidianos, **Opção B** (expressão + resultado em LaTeX simples). SEM bloco "Fórmulas do capítulo" | `_autor/modelo-ef2.md` (calibração mais simples) |
| **EF2 inicial** | 6º, 7º | Transição concreto → abstrato; vocabulário matemático introduzido gradualmente. SEM bloco "Fórmulas do capítulo" | `_autor/modelo-ef2.md` |
| **EF2 final** | 8º, 9º | Álgebra consolidada; passo a passo completo. **COM** bloco "Fórmulas do capítulo" | `_autor/modelo-ef2.md` |
| **EM** | 1ª, 2ª série | Formalismo matemático; conexões com vestibulares/ENEM. **COM** bloco "Fórmulas do capítulo" | `_autor/modelo-em.md` |

---

## Cache de validações (resumo)

> Detalhe completo em `_autor/memoria-autor.md` § "Cache de validações". Atualize sempre que o validador retornar novas entradas.

| Categoria | Itens em cache |
|---|---|
| Fórmulas e identidades | 0 |
| Cálculos passo-a-passo | 12 (do 4ano/Un4/Cap1) |
| Personagens / dados históricos | 26 (+ Carl Gustav Jacob Jacobi, Pierre-Simon Laplace na 2ª série EM) |
| Versículos confirmados (ARA) | 14 (sem novos na 2ª EM — Provérbios 10:9 já em **7 capítulos** e Daniel 6:4 em **4 capítulos**) |

**Cache cresce a cada capítulo** — Provérbios 10:9 já foi reusado em 4 capítulos (4ano/Un4/Cap1, 5ano/Un4/Cap3, 6ano/Un4/Cap1, 7ano/Un4/Cap1); Daniel 6:4 em 2 (6ano/Un4/Cap2, 7ano/Un4/Cap2). Cada reuso economiza uma chamada Perplexity.

---

## Validações automáticas (16 regras — ver skill + `_autor/CLAUDE.md`)

1. Sem `\text{}` em LaTeX
2. Sem `\;` ou `\,` em LaTeX
3. Sem `\qquad` ou `\begin{array}` em LaTeX
4. Sem caracteres acentuados dentro de `$$...$$`
5. Sem `\left\{...\right\}` (preferir `\{...\}`)
6. Sem heading `### EXERCÍCIO RESOLVIDO`
7. Sem `## Praticando`, `## 🤝 Sua Parte`, `## Atividades`
8. Sem marcador `*` em listas (apenas `-`)
9. Headings pós-conteúdo na ordem: `## NA VIDA REAL` → `## E A BÍBLIA NISSO?` → `## Simplificando`
10. `## E A BÍBLIA NISSO?` com versículo em `<center>` + `> 💬 **Para Conversar:**`
11. Box `> 💭 **Pense um pouco:**` presente após `## INTRODUÇÃO`
12. `## Fórmulas do capítulo` para 8ano/9ano/1serie/2serie; ausente em 4ano/5ano/6ano/7ano
13. Introdução com ≤ 3 frases
14. `## NA VIDA REAL` com ≤ 2 frases
15. `## Simplificando` com ≤ 2 frases
16. **Validador `validador-matematica-1` rodado e aprovado**

---

## Estrutura de pastas

```
/Users/feliperosamini/conteudos-prontos/Matematica/
├── CLAUDE.md                                ← contexto de projeto
├── _PROGRESSO.md                            ← este arquivo (memória de continuidade)
├── _autor/                                  ← config editorial
│   ├── prompt-autor.md
│   ├── CLAUDE.md
│   ├── memoria-autor.md                    ← inclui Cache de validações
│   ├── modelo-ef2.md
│   ├── modelo-em.md
│   └── scripts/criar_capitulos.sh
├── _blueprints/<ano>/<unidade>/             ← origem (puxado manualmente)
└── <ano>/<unidade>/                         ← SAÍDA
    └── capitulo_NN_<slug>.md
```

---

## Como rodar

```
/autor-matematica-1 <ano> <unidade>
```

**Exemplos:**
- `/autor-matematica-1 4ano unidade-4-fracoes-decimais-e-plano-cartesiano`
- `/autor-matematica-1 9ano` → lista unidades disponíveis

---

## Próximos passos

1. Cap 2 da Un 4 do 4º ano (Frações Unitárias) — em sequência
2. Após cada capítulo aprovado, validador roda e cache é atualizado
3. Ao fechar a Un 4 do 4º ano (6/6), avaliar próximo: Un 5 do 4º ano ou Un 4 do 5º ano (paridade entre séries)
