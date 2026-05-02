# AUTOR — Química

> **Disciplinas cobertas (Blueprint):** `Quimica`
> **Pasta de prompt:** `PRODUCAO/Prompts Criador de Conteudo/Quimica/`
> **Modelo editorial:** `prompt-autor.md` da pasta acima — **fonte de verdade absoluta para forma**.

---

## Identidade editorial de Química

Material **expositivo-conceitual** para EF II (6º–9º ano) e Ensino Médio (1ª, 2ª e 3ª séries). O capítulo apresenta conceitos químicos com rigor científico, ancorando-os no cotidiano e em fenômenos observáveis, e fecha com aplicações práticas, conexão bíblica e síntese tabular. **Não é material de exercícios** — exercícios resolvidos aparecem **dentro** dos subtópicos quando a complexidade exige cálculo, mas não há bloco "Sua Parte" nem listas de exercícios ao final.

A escrita opera implicitamente nos três níveis do **triângulo de Johnstone** — **macroscópico** (fenômeno observável, exemplos do cotidiano), **microscópico** (modelo atômico/molecular subjacente) e **simbólico** (fórmulas químicas, equações balanceadas em LaTeX e Unicode no texto corrido). Esse princípio é editorial e herdado do framework; não é validado mecanicamente, mas guia a escolha de exemplos, boxes e analogias.

## Estrutura fixa do capítulo (do `prompt-autor.md`)

```
# Capítulo X: TEMA
---
## Introdução
***Pergunta-problema em itálico-negrito***
[2-3 frases narrativas, sem antecipar conteúdo]
---
## 1. [Tópico principal]
[1 frase de abertura direta]
### 1.1 [Subtópico]
### 1.2 [Subtópico]
## 2. [Tópico principal]
...
## X. Aplicações Práticas
---
## O que a Bíblia diz sobre [assunto do capítulo]
---
## Síntese do Capítulo
```

**Não há "Sua Parte" nem nenhum bloco de exercícios separado no capítulo do aluno.** Exercícios resolvidos vivem dentro dos subtópicos (rotulados pelo nome da substância/situação em negrito, **nunca** como `📝 **Exemplo resolvido N:**`).

## Regras invioláveis (Química)

- ❌ **NUNCA** criar seção `## Sua Parte` ou bloco de exercícios pós-conteúdo.
- ❌ **NUNCA** usar `\text{}` dentro de `$$...$$` — sempre `\mathrm{}`. (Incompatibilidade com CodeCogs/Auto LaTeX Equations.)
- ❌ **NUNCA** usar caracteres acentuados dentro de `$$...$$`.
- ❌ **NUNCA** usar `\;` ou `\,` dentro de `$$...$$` — renderizam como pontuação literal.
- ❌ **NUNCA** rotular exemplos resolvidos como `📝 **Exemplo resolvido 1:**` (rótulo numerado abolido) — usar **nome da substância ou situação em negrito** como cabeçalho.
- ❌ **NUNCA** colocar bloco "Atenção" em negrito no corpo do texto — sempre converter para box `> ⚠️ **Atenção:**` com quebra de linha interna.
- ❌ **NUNCA** colocar emoji em heading `##` ou `###` — emojis aparecem **somente** em boxes (`>`) e na pergunta `💬 **Para Conversar:**`.
- ❌ **NUNCA** abrir introdução com "Neste capítulo vamos…" ou "vamos estudar…" ou listar conteúdos das seções.
- ❌ **NUNCA** usar mais de **2 boxes** por seção principal `## N.`.
- ❌ **NUNCA** incluir boxes de **experimento, atividade prática ou procedimento laboratorial** — apenas curiosidade, fenômeno, reflexão e atenção.
- ❌ **NUNCA** usar frases-preparação ("As principais características são:", "A seguir veremos…") — entregar a informação direta.

## Regras estruturais (Química)

- ✅ **Pergunta-problema** em `***itálico-negrito***`, ligada ao cotidiano, abre cada capítulo.
- ✅ Texto introdutório de **2-3 frases no máximo**, narrativo direto, sem antecipar conteúdo.
- ✅ **Abertura de seção `##`:** **1 frase direta**, sem desenvolvimento.
- ✅ **Subtópico `###`:** definição em **1 frase curta**; máximo 2 frases seguidas antes de bullets/tabela; tabela comparativa quando houver 2+ itens a contrastar.
- ✅ **Boxes** sempre em blockquote (`>`) com **quebra de linha interna obrigatória** (título na 1ª linha com 2 espaços ao final, conteúdo na 2ª linha) e **1 frase única** por box. Tipos:
  - `> 💡 **Você sabia?**` — curiosidade química (dado/fato/aplicação inesperada)
  - `> 🔎 **Curiosidade:**` — fenômeno, aplicação industrial, conexão
  - `> 🌍 **Fenômeno:**` — fenômeno do cotidiano/natureza explicado pelo conceito
  - `> 💭 **Pense um pouco:**` — pergunta curta de reflexão
  - `> ⏸️ **Pare e Pense:**` — pergunta sobre causa, efeito ou aplicação
  - `> ⚠️ **Atenção:**` — ponto contraintuitivo ou erro comum
- ✅ **Fórmulas em LaTeX** entre `$$...$$`, sem `\text{}`, sem acentos, sem `\;`/`\,`. Vírgula decimal `{,}`. Unidades em `\mathrm{}`.
- ✅ **Fórmulas químicas em texto corrido** podem usar Unicode (H₂O, NaCl, CO₂, Cu²⁺) — apenas fora de `$$...$$`.
- ✅ **Tabelas** sempre que houver dados comparativos, propriedades contrastantes ou classificações. Máximo 5 colunas.
- ✅ **Ilustrações TikZ** quando o conceito ficar mais didático com apoio visual: partículas, colisões, energia de ativação, relações massa-mol-partículas, etapas de reação, fatores cinéticos e reconhecimento de grupos funcionais. Usar imagem como apoio à explicação, não como enfeite.
- ✅ **Padrão de imagem TikZ no Markdown:** inserir link bruto do GitHub (`https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/.../figuras/capXX_tikz-1.png`) para funcionar ao copiar para Google Docs; nunca usar caminho relativo `figuras/...` nem link `blob/main`.
- ✅ **Padrão de arquivos TikZ:** fonte em `figuras_capXX_<slug>.tex`; PNG final em `Quimica/<ano>/<unidade>/figuras/`; não versionar `.aux`, `.log` ou `.pdf`.
- ✅ `## X. Aplicações Práticas` é lista de **5-6 itens**, cada item em **1 linha direta**: `- **Aplicação:** descrição curta`.
- ✅ `## O que a Bíblia diz sobre [assunto]` segue **estrutura fixa** (5 elementos):
  1. **1-2 frases** conectando conteúdo científico ao tema bíblico
  2. **Versículo** em blockquote: `> *"texto"*` + `> — **Referência X:Y**`
  3. **1 parágrafo** conectando ciência e Bíblia, direto, sem introdução genérica
  4. `- **Na prática:** [1 ação comportamental concreta]`
  5. `💬 **Para Conversar:** [1 pergunta reflexiva aberta]`
- ✅ `## Síntese do Capítulo` traz **tabela** com colunas **Conceito** e **Ideia Central**, 4-8 linhas, cada linha em 1 frase.

## Adaptação por série

- **6º-7º ano EF II:** linguagem simples, frases curtas, conceitos macroscópicos observáveis (cozinha, natureza). Sem abstrações atômicas complexas. Introdução com cena do dia a dia.
- **8º-9º ano EF II:** modelos atômicos introdutórios, reações químicas, classificação de substâncias. Representações simbólicas (fórmulas, equações simples). Introdução com fenômeno intrigante.
- **1ª série EM:** estrutura atômica, tabela periódica, ligações químicas, funções inorgânicas. Tom direto e denso — conceito → explicação → exemplo, sem aquecimento. Introdução com cenário experimental ou problema químico real.
- **2ª série EM:** físico-química — soluções, termoquímica, cinética, equilíbrio. Cálculos estequiométricos. Introdução com contraste entre fenômenos ou dados experimentais.
- **3ª série EM:** química orgânica, polímeros, bioquímica, química ambiental. Síntese de conceitos, ENEM/vestibular. Introdução com contrastes entre modelos ou provocações analíticas.

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe na estrutura padrão de Química:

1. **Estrutura:** segue o `prompt-autor.md` (introdução + N seções numeradas + Aplicações Práticas + Bíblia + Síntese, nesta ordem).
2. **Conteúdo factual** (descobridor, fato histórico, dado experimental): embute como exemplo dentro do subtópico apropriado, ou como box `> 💡 **Você sabia?**`.
3. **Exercícios** pedidos pelo blueprint: **descartados** desta saída — exercícios resolvidos vivem dentro de subtópicos quando o conteúdo exige cálculo (rotulados pela substância/situação em negrito).
4. **Conexão bíblica explícita:** vai sempre em `## O que a Bíblia diz sobre [assunto]` — nunca em outros blocos.

## Como rodar

```bash
cd PRODUCAO/PIPELINE_CONTEUDO/autores/quimica
./scripts/criar_capitulos.sh                                              # interativo
./scripts/criar_capitulos.sh -d "Quimica" -a "1serie" -u "unidade-1"
./scripts/criar_capitulos.sh -d "Quimica" -a "2serie" -u "unidade-3" --dry-run
./scripts/criar_capitulos.sh -d "Quimica" -a "3serie" -u "unidade-2" --yes
```

## Validações pós-geração

O script `criar_capitulos.sh` valida cada capítulo gerado contra:

1. **Sem `\text{}` dentro de `$$...$$`** — incompatível com CodeCogs.
2. **Sem `\;` ou `\,` dentro de `$$...$$`** — renderizam como pontuação literal.
3. **Sem `📝 **Exemplo resolvido N:**`** — rótulo numerado abolido.
4. **Sem emoji em heading `##` ou `###`** — emojis só em boxes e em `💬 **Para Conversar:**`.
5. **Headings pós-conteúdo presentes** na ordem correta:
   - `^## .*Aplicações Práticas`
   - `^## O que a Bíblia diz sobre`
   - `^## Síntese do Capítulo`
6. **`## O que a Bíblia diz sobre` contém `**Na prática:**`** — elemento obrigatório.
7. **`## O que a Bíblia diz sobre` contém `💬 **Para Conversar:**`** — elemento obrigatório.
8. **`## Síntese do Capítulo` contém tabela markdown** (linha com `|---|`).
9. **Pergunta-problema em itálico-negrito** (`***pergunta***`) presente após `## Introdução`.

Falhas listam violações e param o pipeline antes do commit. **Nota:** o triângulo de Johnstone (macro/micro/simbólico) é princípio editorial herdado do framework; não é validado mecanicamente porque exige análise semântica. É responsabilidade do AUTOR e do revisor manter os três níveis equilibrados.

## Referências

- `PRODUCAO/Prompts Criador de Conteudo/Quimica/prompt-autor.md` — manual editorial completo
- `PRODUCAO/Prompts Criador de Conteudo/Quimica/memoria-autor.md` — memória/contexto de produção (ler antes de escrever)
- `PLANEJAMENTO/Referencias/series.md`, `PLANEJAMENTO/Referencias/niveis_profundidade.md`, `PLANEJAMENTO/Referencias/niveis.md`, `PLANEJAMENTO/Referencias/objetivos_aprendizagem.md`
