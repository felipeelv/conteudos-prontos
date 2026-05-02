# AUTOR — Física

> **Disciplinas cobertas (Blueprint):** `Fisica`
> **Pasta de prompt:** `PRODUCAO/Prompts Criador de Conteudo/Fisica/`
> **Modelo editorial:** `prompt-autor.md` da pasta acima — **fonte de verdade absoluta para forma**.

---

## Identidade editorial de Física

Material **fenomenológico-matemático** para EF II (6º–9º) e Ensino Médio (1ª–3ª séries). O capítulo articula fenômeno observável → modelo físico → formalismo matemático, com nível de matematização progressivo por série (qualitativo no 6º–7º, fórmulas simples a partir do 8º, formalismo completo no EM).

A leitura sai da **pergunta-problema do cotidiano**, percorre 4 tópicos numerados com subtópicos e fecha com 5 blocos pós-conteúdo (incluindo "Fórmulas do capítulo" do 8º ano em diante). Cada conceito é apresentado como **conceito → explicação → exemplo**, com fórmulas em LaTeX delimitado por `$$ ... $$`.

## Estrutura fixa do capítulo (do `prompt-autor.md`)

```
# Capítulo X — TEMA
## Pergunta-problema (pergunta aberta do cotidiano)
[Introdução narrativa — Cena → Tensão → Ponte (3 elementos, nesta ordem)]
> 💭 **Pense um pouco:**
> [pergunta conectando o tema ao aluno]
---
## 1. [Tópico principal]
[Abertura: 2-3 frases]
### 1.1 [Pergunta orientadora]
### 1.2 [Pergunta orientadora]
## 2. [Tópico principal]
### 2.1 [Pergunta orientadora]
### 2.2 [Pergunta orientadora]
## 3. [...]
## 4. [Aplicação / cotidiano]
---
## NA VIDA REAL
[Exemplo direto: situação concreta → conceito em ação → por que importa. Máx 3-4 frases.]
---
## E A BÍBLIA NISSO?
[Versículo em blockquote → conexão tema-princípio curta → 1 aplicação em bullet → 💬 Para Conversar]
---
## Simplificando
[1-2 parágrafos curtos, conceitos centrais.]
---
## Para não esquecer
- [Termo: explicação breve em uma frase]
- ...
(2 a 3 itens)
---
## Fórmulas do capítulo
[Lista das fórmulas apresentadas, com nome e grandezas — apenas para 8º ano em diante.]
```

**Não há "Sua Parte" nem qualquer bloco de exercícios no capítulo do aluno.** As atividades vivem em outro material.

## Escopo operacional atual

- ✅ Produzir **somente Unidade 4** até Felipe concluir todos os anos/séries.
- ✅ Avançar ano a ano: ao trocar de ano, manter o foco em `unidade-4`.
- ✅ Se a pasta ou blueprint da unidade 4 ainda não existir, criar a estrutura coerente com a sequência curricular local antes de produzir o conteúdo.
- ✅ Ao concluir e validar uma unidade completa, fazer **commit e push** do escopo da unidade para liberar os links raw das imagens no GitHub.
- ✅ Nunca incluir arquivos locais não relacionados no commit da unidade.

## Regras invioláveis (Física)

- ❌ **NUNCA** criar seção `## Sua Parte` ou similar com exercícios.
- ❌ **NUNCA** criar tópico numerado depois do `## 4.` — capítulo de Física tem **no máximo** 4 tópicos numerados.
- ❌ **NUNCA** colocar dois boxes (`>`) seguidos no mesmo subtópico — sempre separar por pelo menos um parágrafo de conteúdo.
- ❌ **NUNCA** usar `\text{}` dentro de `$$ ... $$` — usar `\mathrm{}` (CodeCogs/AutoLaTeX no Google Docs não suporta `\text{}`).
- ❌ **NUNCA** usar caracteres acentuados ou cedilha (`ç ã é ó ê á â í ú`) dentro de `$$ ... $$` — palavras com acento ficam **fora** do bloco LaTeX.
- ❌ **NUNCA** abrir a introdução com "Neste capítulo vamos…" ou listar termos antes de explicar.
- ❌ **NUNCA** apresentar mais de 1 exemplo resolvido por seção/subtópico — escolher o mais didático.
- ❌ **NUNCA** compactar múltiplas operações na mesma linha do exemplo resolvido — uma operação por linha (dados → fórmula com símbolos → substituição → simplificação → resultado com unidade).
- ❌ **NUNCA** usar "Lei de Charles" para a transformação isobárica — a tradição brasileira chama de **"Lei de Gay-Lussac (1ª lei)"** (isobárica) e **"Lei de Gay-Lussac (2ª lei)"** (isocórica).
- ❌ **NUNCA** usar link relativo `](figuras/...)` para imagem TikZ no Markdown final — usar URL absoluta do GitHub raw.

## Regra LaTeX — formalismo matemático (inviolável)

Toda fórmula vai em LaTeX delimitado por `$$ ... $$`, compatível com **AutoLaTeX Equations** (renderizador CodeCogs no Google Docs):

- ✅ Texto em modo matemático: `\mathrm{}` (nunca `\text{}`).
- ✅ Unidades do SI: `\mathrm{}` precedido de `\;`. Ex.: `$$ E = 240\;\mathrm{kJ} $$`.
- ✅ Graus Celsius: `^{\circ}\mathrm{C}`. Ângulos: `^{\circ}`.
- ✅ Espaços dentro da fórmula: `\;` (médio) ou `\,` (fino), nunca espaço literal.
- ✅ Quebra de linha em equação multilinha: `\\` dentro de um único `$$ ... $$`.
- ✅ Após cada fórmula nova, definir cada grandeza e sua unidade no SI no formato: "onde `$$ x $$` é a descrição (unidade)".
- ✅ Palavras com acento (área, posição, distância) ficam **no texto corrido**, fora do bloco LaTeX.

## Regras estruturais (Física)

- ✅ **Introdução narrativa em 3 elementos na ordem:** Cena (fenômeno concreto) → Tensão (mistério em 1-2 frases) → Ponte (analogia breve sem antecipar conteúdo). Após a introdução, box `> 💭 **Pense um pouco:**` separado.
- ✅ **Extensão da introdução:** 6º–7º: 4-5 frases | 8º–9º: 5-7 | EM: 6-8.
- ✅ **Tópico principal `##`:** abertura de **2-3 frases**, direto ao ponto.
- ✅ **Subtópico `###`:** prosa curta → **frase de transição** ("Três coisas são essenciais:", "Isso acontece porque:") → lista com marcadores. Nunca lista sem frase de transição.
- ✅ **Boxes** sempre em blockquote (`>`) com **título na 1ª linha terminada em 2 espaços** + conteúdo na 2ª linha. Máximo 1-2 frases por box. Mínimo 1 box por seção principal.
- ✅ **Tipos de box:** `💭 Pense um pouco:`, `⏸️ Pare e Pense:`, `💡 Você sabia?`, `📏 Medidas Impressionantes:`, `⚡ Física no Dia a Dia:`, `📐 Fazendo as Contas:`, `🧪 Experimente:`.
- ✅ **Exemplo resolvido:** título exato `📝 **Exemplo:**` (sem numeração, sem "resolvido"). Uma operação por linha. Apenas 1 exemplo por seção/subtópico.
- ✅ **`## E A BÍBLIA NISSO?`** tem 4 elementos na ordem: **(1) versículo em blockquote** → **(2) conexão tema-princípio em 1-2 frases** → **(3) exatamente 1 aplicação em bullet** com título curto → **(4) `> 💬 **Para Conversar:**` 1 pergunta**.
- ✅ **`## Simplificando`** tem **1-2 parágrafos curtos** (não bullets).
- ✅ **`## Para não esquecer`** tem **2 a 3 bullets**, preferencialmente 3, no formato "Termo: explicação breve em uma frase".
- ✅ **`## Fórmulas do capítulo`** existe **apenas do 8º ano em diante** — lista das fórmulas apresentadas com nome e grandezas. Em 6º/7º, este bloco é omitido.

## Regras TikZ para Física

- ✅ Quanto mais visual o contexto, melhor para o aluno: usar ilustrações TikZ sempre que elas deixarem o fenômeno mais concreto.
- ✅ Para 6º–7º ano, priorizar diagramas simples: setas, cenas, fluxos, escalas, comparações antes/depois, trajetórias e esquemas de energia/calor.
- ✅ Manter o código das figuras em arquivo separado `figuras_capXX_<slug>.tex`, no mesmo diretório do capítulo.
- ✅ Renderizar PNGs em `Fisica/<ano>/<unidade>/figuras/capXX_tikz-N.png`.
- ✅ Referenciar no Markdown final com URL raw:
  `https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/<ano>/<unidade>/figuras/capXX_tikz-N.png`.
- ✅ Cada figura deve ser compilável em `standalone`, com `\documentclass[tikz,border=3mm,multi=tikzpicture]{standalone}`, `\usepackage{tikz}` e `\begin{tikzpicture}...\end{tikzpicture}`.

## Adaptação por série

- **6º–7º ano EF II:** conceitos qualitativos, exemplos cotidianos, vocabulário científico gradual. Fórmulas raras e sempre com exemplo numérico imediato. **Sem `## Fórmulas do capítulo`.**
- **8º–9º ano EF II:** fórmulas simples com unidades, exemplos resolvidos passo a passo, fenômenos como gancho. **Inclui `## Fórmulas do capítulo`.**
- **1ª–2ª série EM:** formalismo matemático completo, modelos físicos e suas limitações, articulação grandezas/gráficos/equações.
- **3ª série EM:** síntese, articulação entre temas, problemas de vestibular/ENEM.

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe na estrutura padrão de Física:

1. **Estrutura:** segue o `prompt-autor.md` (4 tópicos numerados + 5 blocos pós-conteúdo na ordem fixa).
2. **Conteúdo factual** (físico-personagem, fenômeno motivador, valor numérico): embute no bloco mais natural — `📝 Exemplo`, `💡 Você sabia?`, `📏 Medidas Impressionantes`, `⚡ Física no Dia a Dia` ou `## NA VIDA REAL`.
3. **Exercícios pedidos pelo blueprint:** **descartados** desta saída. Ficam no caderno de atividades separado.
4. **Conexão bíblica explícita:** vai sempre em `## E A BÍBLIA NISSO?` — nunca em outros blocos.
5. **Nomenclatura brasileira:** quando blueprint e tradição internacional divergirem (ex.: Lei de Charles vs. Lei de Gay-Lussac), seguir a tradição **brasileira** (Ramalho, Bonjorno, ENEM).

## Como rodar

```bash
cd PRODUCAO/PIPELINE_CONTEUDO/autores/fisica
./scripts/criar_capitulos.sh                                                 # interativo
./scripts/criar_capitulos.sh -d "Fisica" -a "1serie" -u "unidade-1"
./scripts/criar_capitulos.sh -d "Fisica" -a "9ano"   -u "unidade-3" --dry-run
./scripts/criar_capitulos.sh -d "Fisica" -a "2serie" -u "unidade-5" --yes
```

## Validações pós-geração

O script `criar_capitulos.sh` valida cada capítulo gerado contra:

1. **Sem `## 5.`** (ou superior) — Física tem no máximo 4 tópicos numerados.
2. **Sem `## Sua Parte`** ou heading similar com exercícios.
3. **`## Pergunta-problema` presente** logo no início.
4. **Box `> 💭 **Pense um pouco:**` presente** após a introdução.
5. **Headings pós-conteúdo presentes** na ordem correta:
   - `## NA VIDA REAL`
   - `## E A BÍBLIA NISSO?`
   - `## Simplificando`
   - `## Para não esquecer`
   - `## Fórmulas do capítulo` (somente se ANO ∉ {6ano, 7ano}).
6. **`## Para não esquecer` tem 2 a 3 bullets** — não 1, não 4+.
7. **`## E A BÍBLIA NISSO?` contém versículo em blockquote, 1 bullet de aplicação e `> 💬 **Para Conversar:**`** — formato obrigatório.
8. **LaTeX `\text{` proibido dentro de `$$ ... $$`** — usar `\mathrm{`.
9. **Caracteres acentuados/cedilha proibidos dentro de `$$ ... $$`** (`ç ã é ó ê á â í ú`).
10. **Sem dois boxes (`>`) consecutivos** (heurística: bloco `>` seguido de linha em branco seguida de novo bloco `>`).
11. **Links TikZ em Markdown por URL raw**, nunca `](figuras/...)`.

Falhas listam violações e param o pipeline antes do commit.

## Referências

- `PRODUCAO/Prompts Criador de Conteudo/Fisica/prompt-autor.md` — manual editorial completo
- `PRODUCAO/Prompts Criador de Conteudo/Fisica/memoria-autor.md` — memória/contexto adicional do autor
- `PLANEJAMENTO/Referencias/series.md`, `PLANEJAMENTO/Referencias/niveis_profundidade.md`, `PLANEJAMENTO/Referencias/niveis.md`, `PLANEJAMENTO/Referencias/objetivos_aprendizagem.md`
