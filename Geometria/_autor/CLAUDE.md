# AUTOR — Matemática 2 (Geometria)

> **Disciplinas cobertas (Blueprint):** `Geometria`
> **Pasta de prompt:** `Geometria/_autor/`
> **Modelo editorial:** `Geometria/_autor/prompt-autor.md` — **fonte de verdade absoluta para forma**.

---

## Regra global para TikZ didático

Antes de criar ou alterar qualquer imagem TikZ, aplicar o padrão de `_tools/CONVENCAO_TIKZ.md`: pesquisar referência visual para o tipo de diagrama, usar fonte sans-serif, manter acentuação correta em português, organizar a leitura em fluxo único, evitar setas cruzadas/sobreposição e revisar o PNG renderizado antes de considerar a figura pronta.

## Identidade editorial de Matemática 2 (Geometria)

Material **expositivo-visual** para Ensino Fundamental II e Ensino Médio. O capítulo apresenta conceitos geométricos com prosa direta, fórmulas em LaTeX e figuras em LaTeX/TikZ para renderização precisa — **não é material de exercícios**. As atividades vivem em outro material.

A leitura parte de uma cena concreta com formas/medidas, percorre 2-4 tópicos numerados com subtópicos, e fecha com 4-5 blocos pós-conteúdo (NA VIDA REAL, E A BÍBLIA NISSO?, Simplificando, Para não esquecer, e Fórmulas do capítulo a partir do 8º ano).

## Estrutura fixa do capítulo (do `prompt-autor.md`)

```
# Capítulo X — TEMA
## Pergunta-problema (pergunta aberta do cotidiano)
[Introdução narrativa — Cena → Tensão → Ponte. MÁX. 3 frases]
> 💭 **Pense um pouco:**
> [pergunta conectando o tema ao aluno]
---
## 1. [Tópico principal]
[Abertura: 1 frase direta]
### 1.1 [Pergunta orientadora]
### 1.2 [Pergunta orientadora]
## 2. [Tópico principal]
### 2.1 [...]
### 2.2 [...]
## 3. [...]
---

NA VIDA REAL
[3-4 frases: situação concreta → conceito em ação → por que importa]
---
E A BÍBLIA NISSO?
[Versículo (blockquote itálico) + parágrafo de conexão (2-3 frases) +
 1 bullet com aplicação direta + > 💬 Para Conversar]
---
Simplificando
[1 parágrafo real, MÁX. 2 frases densas — síntese, não repetição]
---
Para não esquecer
[3 a 5 bullets, formato "Termo: explicação breve"]
---
Fórmulas do capítulo
[Lista de fórmulas com nome e elementos — APENAS para 8º ano em diante]
```

**Não há "Sua Parte" nem nenhum bloco de exercícios no capítulo do aluno.** Esse bloco pertence a outras disciplinas.

## Regras invioláveis — LaTeX (Geometria)

Geometria depende de fórmulas escritas em LaTeX, renderizadas via Auto-LaTeX Equations / CodeCogs no Google Docs. Restrições obrigatórias:

- ❌ **NUNCA** usar `\text{}` — substituir por `\mathrm{}`.
- ❌ **NUNCA** usar caracteres acentuados (á, ã, é, ó, ç...) dentro de `$$ ... $$`. Apenas ASCII e comandos LaTeX. Rótulos com acento ficam fora do bloco.
- ❌ **NUNCA** usar `\;` ou `\,` — renderizam como ponto e vírgula/vírgula literal no CodeCogs.
- ❌ **NUNCA** usar `°` literal dentro de `$$ ... $$` — usar `^{\circ}`.
- ✅ Unidades sempre coladas ao número via `\mathrm{}`. Exemplo: `$$A = 24\mathrm{cm}^2$$`.
- ✅ Cada etapa do cálculo em linha separada — **uma única operação por linha**.

## Regras invioláveis — figuras em TikZ

- ✅ Geometria depende de visualização precisa. Inserir marcador `[TikZ N]` (numeração sequencial por capítulo) no ponto exato onde a figura será renderizada.
- ✅ Descrever em prosa os elementos essenciais da figura antes do marcador (lados, vértices, ângulos, posição relativa).
- ✅ O texto deve funcionar mesmo sem a figura — indicar onde ela complementa, não substituir explicação por figura.
- ✅ O código das figuras fica em arquivo separado `figuras_capXX_<slug>.tex`, **não** no corpo do capítulo.
- ✅ No Markdown final destinado ao Google Docs, cada figura renderizada deve usar URL absoluta do GitHub raw:
  `https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/<ano>/<unidade>/figuras/capXX_tikz-N.png`.
- ✅ O PNG referenciado pela URL raw deve existir em `Geometria/<ano>/<unidade>/figuras/` e ser gerado a partir do TikZ local.
- ✅ Cada figura TikZ deve ser compilável em `standalone`, com `\documentclass[tikz,border=3mm]{standalone}`, `\usepackage{tikz}` e `\begin{tikzpicture}...\end{tikzpicture}`.
- ✅ Usar `\coordinate` para pontos, `\node` para rótulos, `\draw` para elementos e `\usetikzlibrary{angles,quotes,calc,intersections}` quando necessário.
- ✅ Usar `pic {angle = A--B--C}` e `pic {right angle = A--B--C}` para marcação precisa de ângulos.
- ❌ Nunca usar imagens externas, SVG, capturas, links de busca ou descrições soltas como substituto da figura.
- ❌ Nunca deixar links relativos `](figuras/...)` no Markdown final de capítulo, porque o Google Docs não importa essas imagens ao copiar/colar.
- ❌ Nunca inserir quebras de página explícitas no Markdown nem no arquivo TikZ (`\newpage`, `\pagebreak`, HTML/CSS de page break ou equivalentes).

## Regras invioláveis — estrutura

- ❌ **NUNCA** criar seção `## Sua Parte` ou similar com exercícios.
- ❌ **NUNCA** abrir a introdução com "Neste capítulo vamos…" ou listar termos.
- ❌ **NUNCA** usar mais de 3 frases na introdução narrativa.
- ❌ **NUNCA** colocar dois boxes seguidos no mesmo subtópico.
- ❌ **NUNCA** usar emoji em heading `##` ou `###` (boxes com emoji são em blockquote `>`, não headings).
- ❌ **NUNCA** colocar `💬 Para Conversar` fora do bloco `E A BÍBLIA NISSO?`.
- ❌ **NUNCA** usar rótulo introdutório como "Dois princípios:", "Três princípios:" no bullet de aplicação direta de `E A BÍBLIA NISSO?`.

## Regras estruturais (Geometria)

- ✅ Cada **tópico principal `##`** tem 1 frase de abertura direta (suprimível se o subtópico já abre o conteúdo) + **subtópicos `###`** com perguntas orientadoras.
- ✅ Cada **subtópico** tem: prosa curta → frase de transição (ex.: "Três coisas são essenciais:") → lista com marcadores → exemplo prático quando couber. Nunca iniciar lista sem frase de transição.
- ✅ **Máximo 1 box por subtópico ou seção.** Não repetir dois boxes no mesmo bloco de conteúdo.
- ✅ **Boxes obrigatoriamente em blockquote (`>`)**, com **1 frase única**, com quebra de linha entre título (dois espaços ao final) e conteúdo. Tipos disponíveis:
  - `> 💭 **Pense um pouco:**` — reflexão
  - `> ⏸️ **Pare e Pense:**` — causa, efeito ou decisão envolvendo propriedades
  - `> 💡 **Você sabia?**` — fato curioso geométrico
  - `> 🏗️ **Geometria ao Redor:**` — geometria na arquitetura, natureza, cotidiano
  - `> 📏 **Medidas Impressionantes:**` — dado numérico surpreendente
  - `> 📐 **Fazendo as Contas:**` — exemplo numérico rápido reforçando o conceito
  - `> 👁️ **Observe:**` — convite a observar uma propriedade em algo concreto
- ✅ **Definições em no máximo 1 frase curta.** Se precisar de mais de 1 frase, usar bullet, não parágrafo. Máximo 2 frases antes de uma lista.
- ✅ **Palavras-chave e termos técnicos em negrito** quando introduzidos.
- ✅ **Medidas sempre acompanhadas de unidade** (cm, m, m², m³, …).
- ✅ `Simplificando` tem **máximo 2 frases densas** (1 parágrafo, não bullets).
- ✅ `Para não esquecer` tem **3 a 5 bullets** no formato "Termo: explicação breve" (gatilhos de memória).
- ✅ `E A BÍBLIA NISSO?` tem **estrutura de 4 elementos exatos**: versículo (blockquote itálico + referência) → parágrafo de conexão (2-3 frases) → 1 bullet com título curto em negrito → `> 💬 **Para Conversar:** [pergunta]`.
- ✅ `Fórmulas do capítulo` aparece **apenas a partir do 8º ano**. No 6º e 7º ano: omitir.

## Adaptação por série

- **6º–7º ano EF II:** conceitos visuais e concretos. Reconhecimento de formas, propriedades básicas. Vocabulário geométrico introduzido gradualmente. Fórmulas raras, sempre com exemplo numérico imediato. Sem bloco "Fórmulas do capítulo".
- **8º–9º ano EF II:** propriedades com demonstrações intuitivas. Congruência, semelhança, Pitágoras, áreas e volumes. Fórmulas com passo a passo. Bloco "Fórmulas do capítulo" obrigatório.
- **1ª–2ª série EM:** geometria plana e espacial com formalismo. Relações métricas, trigonometria, geometria analítica. Desenvolvimento algébrico completo. Demonstrações quando pertinente.
- **3ª série EM:** síntese, articulação plana × espacial × analítica, problemas vestibular/ENEM.

## Pass de precisão matemática (obrigatório antes de salvar)

Após escrever, varrer caçando erros conceituais comuns em Geometria:

- **Centros do triângulo:** incentro (bissetrizes, centro do círculo inscrito), circuncentro (mediatrizes, centro do circunscrito), baricentro (medianas, centro de gravidade), ortocentro (alturas). Trocar um pelo outro é o erro mais frequente.
- **Casos de congruência:** LAL, ALA, LLL, LAAo. Cada exemplo deve aplicar o caso correto.
- **Casos de semelhança:** AA, LAL, LLL.
- **Relações métricas no triângulo retângulo:** altura, projeções dos catetos sobre a hipotenusa, hipotenusa.
- **Fórmulas de área e volume:** conferir se a fórmula bate com a figura/sólido descrito.

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe na estrutura padrão de Geometria:

1. **Estrutura:** segue o `prompt-autor.md` (2-4 tópicos numerados + 4-5 blocos pós-conteúdo na ordem fixa).
2. **Conteúdo factual** (matemático específico, fato histórico, dado): embute na introdução, em box `> 💡 **Você sabia?**` ou no parágrafo de conexão de `E A BÍBLIA NISSO?`.
3. **Exercícios pedidos pelo blueprint:** **descartados** desta saída. Ficam no caderno de atividades separado.
4. **Conexão bíblica explícita:** vai sempre em `E A BÍBLIA NISSO?` — nunca em outros blocos.

## Como rodar

```bash
cd /Users/feliperosa/conteudos-prontos
Geometria/_autor/scripts/criar_capitulos.sh
Geometria/_autor/scripts/criar_capitulos.sh -a "1serie" -u "unidade-1"
Geometria/_autor/scripts/criar_capitulos.sh -a "9ano"   -u "unidade-3" --dry-run
Geometria/_autor/scripts/criar_capitulos.sh -a "8ano"   -u "unidade-2" --yes
```

Por padrão, o script grava os capítulos em `Geometria/<ano>/<unidade>/` e não faz commit nem push. Para publicar automaticamente após validação, execute com `AUTO_PUBLISH=1`.

## Validações pós-geração

O script `criar_capitulos.sh` valida cada capítulo gerado contra:

1. **Sem `## Sua Parte`** ou heading similar com exercícios.
2. **Sem emoji em heading `##` ou `###`** (boxes com emoji são `>`, não headings).
3. **Headings/blocos pós-conteúdo presentes** na ordem correta:
   - `NA VIDA REAL`
   - `E A BÍBLIA NISSO?`
   - `Simplificando`
   - `Para não esquecer`
   - `Fórmulas do capítulo` (apenas a partir do 8º ano — verificado pelo nome do diretório `ANO`)
4. **`Para não esquecer` tem 3 a 5 bullets** — não 2, não 6+.
5. **`E A BÍBLIA NISSO?` contém `> 💬 **Para Conversar:**`** — bloco obrigatório.
6. **`E A BÍBLIA NISSO?` contém versículo em blockquote itálico** (heurística: linha começando com `> *"`).
7. **LaTeX limpo** dentro de cada bloco `$$ ... $$`:
   - sem `\text{}` (proibido — usar `\mathrm{}`)
   - sem `\;` nem `\,` (renderizam como pontuação literal)
   - sem `°` literal (usar `^{\circ}`)
   - sem caracteres acentuados (á, ã, é, ó, ç, …) dentro do bloco
8. **Figura TikZ em uso** — pelo menos uma figura referenciada como URL raw do GitHub ou marcador `[TikZ N]` intermediário (heurística para Geometria; alerta, não erro).
9. **Sem dois boxes (`>`) consecutivos** dentro do mesmo subtópico.

Falhas listam violações e param o pipeline antes do commit.

## Referências

- `Geometria/_autor/prompt-autor.md` — manual editorial completo
- `Geometria/_autor/memoria-autor.md` — memória/contexto adicional do autor
- `Geometria/_blueprints/<ano>/<unidade>/` — blueprints de unidade e capítulos
- `Geometria/_autor/referencias/tikz-geometria.md` — padrão local para figuras TikZ
- `Geometria/_autor/referencias/pgf/` — clone local do PGF/TikZ oficial
