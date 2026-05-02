---
name: autor-fisica
description: Gera capítulos finais de Física em Markdown a partir dos blueprints aprovados no repositório conteudos-prontos. Use quando o usuário pedir autor-fisica, gerar capítulos de Física, produzir unidade de Física, revisar ou aplicar o padrão editorial de Física com TikZ, AutoLaTeX, linguagem por série, VP e commit/push ao concluir unidade.
---

# Autor — Física

## Overview

Transformar blueprints de Física em capítulos finais prontos para Google Docs, seguindo o padrão do autor salvo em `Fisica/_autor/`.

## Caminhos

Raiz: `/Users/feliperosamini/conteudos-prontos/Fisica/`.

Ler antes de produzir:

- `Fisica/_autor/prompt-autor.md`
- `Fisica/_autor/CLAUDE.md`
- `Fisica/_autor/memoria-autor.md`
- `Fisica/_blueprints/<ano>/<unidade>/blueprint_unidade.md`
- `Fisica/_blueprints/<ano>/<unidade>/blueprint_capitulo_*.md`

Saída:

- `Fisica/<ano>/<unidade>/capitulo_NN_<slug>.md`
- `Fisica/<ano>/<unidade>/figuras_capNN_<slug>.tex`
- `Fisica/<ano>/<unidade>/figuras/capNN_tikz-N.png`
- `Fisica/<ano>/<unidade>/metadata.json`

## Regra Vigente

- Produzir somente `unidade-4` enquanto o usuário não mudar o escopo.
- Adaptar tom, vocabulário e profundidade ao ano/série.
- Usar parágrafos curtos e diretos; manter a linha conceitual.
- Usar TikZ sempre que uma figura tornar o conceito mais concreto.
- Usar links raw do GitHub no Markdown final, nunca `](figuras/...)` nem `/blob/main/`.
- Não criar `## Sua Parte`.
- Não criar `## Fórmulas do capítulo` em nenhuma série. Fórmulas ficam no corpo do capítulo.
- `## Para não esquecer` deve ter 2 a 3 bullets, no máximo 3.
- `## E A BÍBLIA NISSO?` deve ser sintético: versículo em blockquote, conexão curta, 1 aplicação em bullet e `> 💬 **Para Conversar:**`.

## Workflow

1. Mapear blueprints e saídas existentes para o ano/unidade.
2. Criar ou atualizar capítulos Markdown, fontes TikZ e `metadata.json`.
3. Renderizar TikZ com `pdflatex` e `pdftoppm`.
4. Remover intermediários `.aux`, `.log` e `.pdf`.
5. Validar:
   - PNGs existem e são legíveis com `file`;
   - links raw aparecem no Markdown;
   - nenhum link relativo `](figuras/...)`;
   - sem `## Sua Parte`;
   - sem `## Fórmulas do capítulo`;
   - sem `\text{}` nem acentos dentro de `$$...$$`;
   - `## Para não esquecer` com 2 a 3 bullets.
6. Ao concluir uma unidade completa, fazer commit e push do escopo da unidade, mantendo arquivos não relacionados fora do commit.

## Padrão TikZ

Fonte:

```text
Fisica/<ano>/<unidade>/figuras_capXX_<slug>.tex
```

PNG:

```text
Fisica/<ano>/<unidade>/figuras/capXX_tikz-N.png
```

Markdown:

```md
![TikZ N — Descrição](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/<ano>/<unidade>/figuras/capXX_tikz-N.png)
```

## Validação Final Recomendada

Usar `rg` e `find` antes do commit:

```bash
rg -n "\]\(figuras/|blob/main|## Sua Parte|## Fórmulas do capítulo|\\text\{" Fisica/<ano>/<unidade>
find Fisica/<ano>/<unidade> -type f \( -name '*.aux' -o -name '*.log' -o -name '*.pdf' \)
file Fisica/<ano>/<unidade>/figuras/*.png
```

Se `curl` estiver disponível com rede, validar os links raw após o push.
