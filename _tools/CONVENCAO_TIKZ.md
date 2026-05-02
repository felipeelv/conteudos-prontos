# Convenção editorial para uso de TikZ no conteúdo didático

Este documento define **quando** e **como** usar TikZ no material das disciplinas. Vale para todas as disciplinas (Matemática, Geometria, Física, Química, Biologia, Português, Filosofia, História, etc.).

---

## Quando usar TikZ vs LaTeX inline

### ✅ Use **LaTeX inline** (`$$...$$`) para

Fórmulas matemáticas que cabem em uma linha:

```markdown
$$E = mc^2$$

$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

$$\frac{1}{2} + \frac{1}{4} = \frac{3}{4}$$
```

CodeCogs renderiza isso direto no Google Docs via AutoLaTeX. **Sem TikZ aqui.**

### ✅ Use **TikZ pré-renderizado em PNG** para

Tudo que exige compilação completa do `pdflatex`:

| Caso | Pacote/lib TikZ |
|---|---|
| Eixos cartesianos, planos com pontos marcados | `tikz` puro |
| Gráficos de funções (parábolas, retas, exponenciais, log) | `pgfplots` |
| Diagramas geométricos (triângulos, círculos com elementos rotulados) | `tikz` |
| Fluxogramas, diagramas de árvore | `tikz` ou `forest` |
| Diagramas comutativos | `tikz-cd` |
| Tabela de verdade, deduções lógicas | `bussproofs` |
| Circuitos elétricos | `circuitikz` |
| Estruturas moleculares (Química) | `chemfig` |
| Equações químicas balanceadas | `mhchem` (também roda via CodeCogs em alguns casos — testar) |
| Linhas do tempo (História) | `chronosys` |
| Mapas, redes (Geografia, Sociologia) | `tikz-network` |
| Árvores sintáticas (Português) | `forest` |

### ❌ NÃO use TikZ inline em `$$...$$`

```markdown
$$\begin{tikzpicture}...\end{tikzpicture}$$   ← NÃO funciona no AutoLaTeX/CodeCogs
```

---

## Fluxo de produção

### Passo 1 — Criar a fonte `.tex`

Caminho: `<Disciplina>/_tikz/<ano>/<unidade>/<slug>.tex`

**O arquivo deve conter apenas o conteúdo TikZ**, sem `\documentclass` nem `\begin{document}` — o script `tikz-render.sh` envolve com o preâmbulo padrão (`_tools/tikz-preamble.tex`).

Exemplo mínimo:

```latex
% Eixo cartesiano simples para o Cap 5 do 4º ano
\begin{tikzpicture}
  \draw[->] (-0.5,0) -- (4,0) node[right] {$x$};
  \draw[->] (0,-0.5) -- (0,4) node[above] {$y$};
  \fill[eleveBlue] (3,2) circle (3pt) node[above right] {$(3,2)$};
\end{tikzpicture}
```

**Convenção de slug**: descritivo em kebab-case. Ex.: `eixo-cartesiano-3x2-vs-2x3.tex`, `parabola-y-igual-x2.tex`, `circuito-rl-serie.tex`, `agua-h2o.tex`.

### Passo 2 — Renderizar

```bash
./_tools/tikz-render.sh
```

Gera `<Disciplina>/_tikz/build/<ano>/<unidade>/<slug>.png`.

### Passo 3 — Referenciar no `.md` do capítulo

```markdown
![Descrição alternativa para acessibilidade](../../_tikz/build/<ano>/<unidade>/<slug>.png)
```

⚠️ Caminho relativo a partir do `.md` do capítulo. Para o 4º ano U4, o `.md` está em `Matematica/4ano/unidade-4-.../capitulo_NN.md` e o PNG em `Matematica/_tikz/build/4ano/unidade-4-.../slug.png` — então o caminho é `../../_tikz/build/4ano/unidade-4-.../slug.png`.

### Passo 4 — Inserir no Google Docs

1. Abra o `.png` (Finder → preview, ou abra o repo no VSCode)
2. Drag-and-drop ou copy-paste do PNG no Google Docs
3. Ajuste tamanho/alinhamento manualmente

---

## Cores institucionais (definidas no preâmbulo)

| Cor | Hex | Uso |
|---|---|---|
| `eleveBlue` | `#1F4E79` | linhas, eixos, pontos principais |
| `eleveAccent` | `#C00000` | ênfase, segundo ponto, destaque negativo |

Use no `.tex`:

```latex
\fill[eleveBlue] (3,2) circle (3pt);
\draw[eleveAccent,thick] (0,0) -- (2,3);
```

---

## Boas práticas

- **Densidade visual**: ilustrações devem ter o mínimo necessário para o conceito — sem labels redundantes, sem grid muito denso, sem cores além de azul/vermelho/cinza.
- **Tipografia consistente**: use `\small` ou `\scriptsize` em labels para não dominar a figura.
- **Bbox automática**: a classe `standalone` (no preâmbulo) recorta automaticamente — não precisa configurar margem.
- **Reuso**: se a mesma figura aparece em capítulos diferentes (ex.: eixo cartesiano simples), referencie o mesmo PNG nos dois `.md`.
- **Acessibilidade**: sempre escreva `alt text` descritivo no `![alt](...)` do markdown.

---

## Limites editoriais

- ❌ TikZ não é desculpa para enfeitar — só use quando o conceito **exige** representação visual que não cabe em texto + LaTeX inline.
- ❌ Não use TikZ para diagramas que poderiam ser uma tabela markdown comum.
- ❌ Não use TikZ para fluxogramas decorativos.
- ✅ Use para gráficos de funções, planos cartesianos com pontos, circuitos, estruturas químicas, árvores de probabilidade — onde a forma é a explicação.

---

## Referências cruzadas

- Pipeline e instalação: `_tools/README.md`
- Script: `_tools/tikz-render.sh`
- Preâmbulo padrão: `_tools/tikz-preamble.tex`
- Hook git: `.git/hooks/pre-commit`
