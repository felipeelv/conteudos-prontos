# Referência TikZ para Geometria

Fonte local: `Geometria/_autor/referencias/pgf`

Arquivos oficiais mais úteis:

- `README.md`: PGF é o pacote TeX para gerar gráficos, e TikZ é sua camada de sintaxe amigável.
- `doc/generic/pgf/pgfmanual-en-tutorial.tex`: exemplos introdutórios de `tikzpicture`, coordenadas, caminhos, interseções e setas.
- `doc/generic/pgf/pgfmanual-en-library-angles.tex`: biblioteca `angles` para marcar ângulos e ângulos retos.
- `doc/generic/pgf/pgfmanual-en-tikz-coordinates.tex`: coordenadas cartesianas e polares.
- `doc/generic/pgf/pgfmanual-en-tikz-paths.tex`: caminhos com `\draw`, segmentos, arcos e círculos.
- `doc/generic/pgf/pgfmanual-en-base-nodes.tex`: rótulos com `\node`.
- `doc/generic/pgf/pgfmanual-en-library-calc.tex`: cálculos de coordenadas.

## Padrão de figura

Cada figura didática deve ser salva em arquivo `.tex` separado, com código compilável:

```tex
\documentclass[tikz,border=3mm]{standalone}
\usepackage{tikz}
\usetikzlibrary{angles,quotes,calc,intersections}

\begin{document}
\begin{tikzpicture}[scale=1]
  \coordinate (A) at (0,0);
  \coordinate (B) at (4,0);
  \coordinate (C) at (1.2,2.4);

  \draw[thick] (A) -- (B) -- (C) -- cycle;
  \node[below left] at (A) {$A$};
  \node[below right] at (B) {$B$};
  \node[above] at (C) {$C$};
  \pic[draw, "$\alpha$", angle radius=7mm] {angle = B--A--C};
\end{tikzpicture}
\end{document}
```

## Regras de produção

- Usar `standalone` para cada arquivo de figura.
- Nomear pontos com `\coordinate` e rotular com `\node`.
- Usar `angles,quotes` para ângulos e ângulos retos.
- Usar `calc` para ponto médio, projeções e construções auxiliares.
- Usar `intersections` quando a figura depender de encontro entre retas, circunferências ou arcos.
- Evitar recursos complexos ou decorativos: a figura deve ser clara, preto/cinza com no máximo uma cor de destaque.
- Não colocar texto longo dentro da figura; usar apenas rótulos matemáticos curtos.
- Cada figura deve ter escala e `border` definidos para evitar cortes.
