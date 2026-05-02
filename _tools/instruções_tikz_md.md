# Instruções TikZ em Markdown para Google Docs

Este arquivo registra a regra operacional para capítulos de Geometria que usam figuras TikZ renderizadas como PNG.

## Problema

O Google Docs não importa imagens quando o capítulo em Markdown usa caminho relativo, por exemplo:

```md
![TikZ 1 — Triângulo](figuras/cap01_tikz-1.png)
```

Ao copiar e colar o Markdown, o Docs leva o texto, mas não leva junto a pasta `figuras/`.

## Regra

No Markdown final destinado ao Google Docs, cada figura TikZ deve apontar para a URL pública do PNG no GitHub raw:

```md
![TikZ 1 — Descrição da figura](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/<ano>/<unidade>/figuras/capXX_tikz-1.png)
```

Exemplo real:

```md
![TikZ 1 — Triângulo como polígono fechado](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/figuras/cap01_tikz-1.png)
```

## O que manter

- Manter o código TikZ em `figuras_capXX_<slug>.tex`.
- Manter os PNGs renderizados em `Geometria/<ano>/<unidade>/figuras/`.
- Manter a hierarquia Markdown do capítulo.
- Trocar apenas o endereço da imagem no Markdown final.

## O que evitar

- Não usar `](figuras/...)` no Markdown final.
- Não usar link da página do GitHub com `/blob/main/`.
- Não usar imagem externa como fonte didática: a URL raw deve apontar para PNG gerado a partir do TikZ do próprio repositório.

## Conversão rápida

Para cada capítulo, a troca segue este padrão:

```text
](figuras/
```

vira:

```text
](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/<ano>/<unidade>/figuras/
```
