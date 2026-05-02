# AUTOR — Matemática 1

> **Disciplina coberta (Blueprint):** `Matematica` (aritmética, álgebra, conjuntos e funções — 4º ano EF1 → 2ª série EM)
> **Pasta de prompt:** `PRODUCAO/Prompts Criador de Conteudo/Matematica 1/`
> **Modelo editorial:** `prompt-autor.md` da pasta acima — **fonte de verdade absoluta para forma**.

---

## Regra global para TikZ didático

Antes de criar ou alterar qualquer imagem TikZ, aplicar o padrão de `_tools/CONVENCAO_TIKZ.md`: pesquisar referência visual para o tipo de diagrama, usar fonte sans-serif, manter acentuação correta em português, organizar a leitura em fluxo único, evitar setas cruzadas/sobreposição e revisar o PNG renderizado antes de considerar a figura pronta.

## Identidade editorial de Matemática 1

Material **expositivo-aplicado** — conceito → explicação → exemplo resolvido. O capítulo apresenta o conceito de forma direta, mostra a fórmula em LaTeX (quando houver) e resolve **exercícios passo a passo** integrados ao fluxo. Não é caderno de exercícios livres — os exercícios resolvidos servem para o aluno **ver a progressão do cálculo**, não para praticar (a prática mora em outro material).

A leitura é **direta**: vai ao ponto. Conceito sintético, frase de transição, lista, fórmula, exemplo resolvido linha-a-linha. Sem aquecimento, sem rodeios, sem "neste capítulo vamos…".

## Estrutura fixa do capítulo (do `prompt-autor.md`)

```
# CAPÍTULO X — TEMA

## INTRODUÇÃO
[máximo 3 frases — direto ao ponto]

> 💭 **Pense um pouco:**  
> [pergunta conectando o tema ao aluno]

---

## 1. [TÓPICO]
### [Conceito / Subtópico]
[Explicação direta — máx. 2 frases antes de lista]

Veja o exemplo abaixo. / Olhe o exemplo abaixo. / Veja só:

[Enunciado]

**Resolução:**

- **Passo 1:** [...]
[cada etapa em linha separada]

- **Passo 2:** [...]

**Resposta:** [...]

## 2. [TÓPICO]
## 3. [TÓPICO]
[até quantos tópicos a unidade pedir — sem teto rígido em Matemática]

---

## NA VIDA REAL
[Máximo 2 frases]

---

## E A BÍBLIA NISSO?
<center>
**"versículo." — Referência**
</center>

[1-2 frases conectando]

> 💬 **Para Conversar:** [pergunta]

---

## Simplificando
[Máximo 2 frases densas]

---

## Fórmulas do capítulo   (apenas 8º ano em diante)
```

## Regras invioláveis (Matemática 1)

### LaTeX (inegociável — renderização CodeCogs/AutoLaTeX)

- ❌ **NUNCA** usar `\text{}` dentro de `$$ ... $$`. Usar `\mathrm{}` para texto em modo matemático.
- ❌ **NUNCA** usar `\;`, `\,` (espaços médio/fino) — renderizam como ponto e vírgula/vírgula literal. Número colado à unidade: `$$1\mathrm{km} = 1000\mathrm{m}$$`.
- ❌ **NUNCA** usar caracteres acentuados ou cedilha (ç, ã, é, ó, ê) **dentro** de `$$ ... $$`. Apenas ASCII + comandos LaTeX. Rótulos com acento ficam fora do bloco.
- ❌ **NUNCA** usar `\begin{array}...\end{array}` ou qualquer estrutura multilinha dentro de `$$ ... $$` — o renderizador captura linha a linha e quebra. Use sempre expressão em linha única.
- ❌ **NUNCA** usar `\qquad` ou comandos que coloquem duas matrizes/fórmulas lado a lado. Cada fórmula em seu próprio `$$ $$`.

### Estrutura e estilo

- ❌ **NUNCA** usar `### EXERCÍCIO RESOLVIDO` como rótulo. Introduzir com frase natural: "Veja o exemplo abaixo.", "Olhe o exemplo abaixo.", "Veja só:".
- ❌ **NUNCA** usar `*` (asterisco/bolinha) como marcador de lista — sempre `-` (hífen).
- ❌ **NUNCA** abrir a introdução com "Neste capítulo vamos…".
- ❌ **NUNCA** ultrapassar 3 frases na `## INTRODUÇÃO`.
- ❌ **NUNCA** ultrapassar 2 frases em `## NA VIDA REAL` ou `## Simplificando`.
- ❌ **NUNCA** compactar múltiplas operações na mesma linha em exemplo resolvido (EF II / EM): cada etapa do cálculo em linha separada, uma operação por linha.
- ❌ **NUNCA** colocar mais de 2 boxes por seção principal `## N.` — e somente quando um for 🔢 Padrão e outro for ⚠️ Atenção.
- ❌ **NUNCA** criar bloco "Praticando" com lista de exercícios para o aluno resolver — esta disciplina não tem `## Praticando` no capítulo do aluno (a prática vive em outro material).
- ❌ **NUNCA** colocar `> 💬 **Para Conversar:**` fora de `## E A BÍBLIA NISSO?`.

### Notação brasileira (intervalos)

- ✅ Intervalo aberto usa **colchetes invertidos**: `$$]a, b[$$` (não `(a, b)`).
- ✅ Semi-aberto à direita: `$$[a, b[$$`. Semi-aberto à esquerda: `$$]a, b]$$`. Fechado: `$$[a, b]$$`.

## Regras estruturais (Matemática 1)

- ✅ Cada conceito segue o fluxo **conceito → explicação → exemplo resolvido**.
- ✅ Abertura de seção `## N.` tem **1 frase** direta, sem desenvolvimento.
- ✅ Conceito tem definição clara em **no máximo 1 frase curta**.
- ✅ Explicação tem **no máximo 2 frases** antes de uma lista. Prefira 1 frase densa + bullets a 3 frases corridas.
- ✅ Lista sempre precedida por **frase de transição** (ex.: "Três propriedades são essenciais:", "Isso acontece porque:"). Nunca iniciar lista sem frase.
- ✅ Boxes formatados com `>` (blockquote), título na 1ª linha com **dois espaços finais**, conteúdo na 2ª linha. Tipos:
  - `> 💭 **Pense um pouco:**` — pergunta de conexão (obrigatório após introdução)
  - `> 🔢 **Padrão:**` — regularidade numérica/algébrica (1 frase única)
  - `> ⚠️ **Atenção:**` — erro comum (1 frase única)
- ✅ Em exemplos resolvidos do **EF I (4º–5º)**: formato Opção B — apenas expressão e resultado em LaTeX simples (ex.: `$$14{,}60 + 3{,}47 = 18{,}07$$`), sem detalhamento coluna a coluna.
- ✅ Em exemplos resolvidos do **EF II e EM**: cada etapa em linha separada, uma operação por linha. Sequência: dados → fórmula com símbolos → substituição → cada simplificação → resultado.
- ✅ `## E A BÍBLIA NISSO?` tem **3 elementos**: versículo centralizado em `<center>...</center>` + 1-2 frases diretas (sem analogia explícita "assim como X, Y") + `> 💬 **Para Conversar:** [pergunta]`.
- ✅ `## Fórmulas do capítulo` aparece **apenas a partir do 8º ano** — lista das fórmulas com nome e elementos.

## Adaptação por série

- **4º–5º ano EF I:** linguagem simples e concreta, frases curtas, exemplos com objetos do cotidiano. Fórmulas só quando muito simples. Exemplos resolvidos em **formato Opção B** (expressão + resultado, sem coluna a coluna). **SEM** bloco `## Fórmulas do capítulo`.
- **6º–7º ano EF II:** transição do concreto para o abstrato. Vocabulário matemático introduzido gradualmente. Fórmulas com exemplo numérico imediato. **SEM** bloco `## Fórmulas do capítulo`.
- **8º–9º ano EF II:** álgebra consolidada. Desenvolvimento passo a passo com cada operação em linha separada. Demonstrações intuitivas. **COM** bloco `## Fórmulas do capítulo`.
- **1ª–2ª série EM:** formalismo matemático completo. Conexões com vestibulares/ENEM. **COM** bloco `## Fórmulas do capítulo`.

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe na estrutura padrão de Matemática 1:

1. **Estrutura:** segue o `prompt-autor.md` (fluxo conceito → exemplo + 4 blocos pós-conteúdo: NA VIDA REAL, E A BÍBLIA NISSO?, Simplificando, Fórmulas do capítulo).
2. **Conteúdo factual** (fórmula específica, propriedade, classificação, dado histórico): embute no tópico numerado correspondente ou em `## NA VIDA REAL`.
3. **Exercícios "para o aluno praticar" pedidos pelo blueprint:** **descartados** — esta disciplina não tem bloco `## Praticando` no capítulo do aluno. Os exercícios **resolvidos** integrados ao fluxo permanecem.
4. **Conexão bíblica explícita:** vai sempre em `## E A BÍBLIA NISSO?` — nunca em outros blocos.
5. **Marcador de lista:** sempre `-` (hífen), mesmo que blueprint use `*`.

## Como rodar

```bash
cd PRODUCAO/PIPELINE_CONTEUDO/autores/matematica-1
./scripts/criar_capitulos.sh                                              # interativo
./scripts/criar_capitulos.sh -d "Matematica" -a "1serie" -u "unidade-1-teoria-dos-conjuntos"
./scripts/criar_capitulos.sh -d "Matematica" -a "9ano"   -u "unidade-3" --dry-run
./scripts/criar_capitulos.sh -d "Matematica" -a "1serie" -u "unidade-2" --yes
```

## Validações pós-geração

O script `criar_capitulos.sh` valida cada capítulo gerado contra:

1. **Sem `\text{}`** dentro de blocos LaTeX.
2. **Sem `\;` ou `\,`** dentro de blocos LaTeX.
3. **Sem `\qquad`** ou `\begin{array}` dentro de blocos LaTeX.
4. **Sem caracteres acentuados** dentro de `$$ ... $$` (ç, ã, é, í, ó, ú, â, ê, ô, à, õ, Ç, etc.).
5. **Sem heading `### EXERCÍCIO RESOLVIDO`** ou similar.
6. **Sem heading `## Praticando`** (ou `## 🤝 Sua Parte`, `## Atividades`).
7. **Sem marcador `*`** em listas (apenas `-`).
8. **Headings pós-conteúdo presentes** na ordem correta: `## NA VIDA REAL` → `## E A BÍBLIA NISSO?` → `## Simplificando`.
9. **`## E A BÍBLIA NISSO?` contém `> 💬 **Para Conversar:**`** — bloco obrigatório.
10. **`## E A BÍBLIA NISSO?` contém versículo em `<center>`** — abertura obrigatória.
11. **Box `> 💭 **Pense um pouco:**`** presente após `## INTRODUÇÃO`.
12. **`## Fórmulas do capítulo`** presente quando a série for `8ano`, `9ano`, `1serie` ou `2serie`; ausente em `4ano`/`5ano`/`6ano`/`7ano`.

Falhas listam violações e param o pipeline antes do commit.

## Referências

- `PRODUCAO/Prompts Criador de Conteudo/Matematica 1/prompt-autor.md` — manual editorial completo
- `PRODUCAO/Prompts Criador de Conteudo/Matematica 1/memoria-autor.md` — memória/contexto adicional do autor
- `PRODUCAO/Prompts Criador de Conteudo/Matematica 1/modelo-ef2.md` — capítulo-modelo aprovado para EF II
- `PRODUCAO/Prompts Criador de Conteudo/Matematica 1/modelo-em.md` — capítulo-modelo aprovado para EM
- `PLANEJAMENTO/Referencias/series.md`, `PLANEJAMENTO/Referencias/niveis_profundidade.md`, `PLANEJAMENTO/Referencias/niveis.md`, `PLANEJAMENTO/Referencias/objetivos_aprendizagem.md`

## Gráficos, eixos e diagramas (TikZ pré-renderizado)

Quando o capítulo precisar de **eixo cartesiano, gráfico de função, diagrama geométrico, plano cartesiano com pontos, fluxograma ou árvore**, **NÃO inserir TikZ inline em `$$...$$`** — CodeCogs (AutoLaTeX) não compila TikZ.

**Fluxo correto** (regras completas em `_tools/CONVENCAO_TIKZ.md`):

1. Criar fonte TikZ em `Matematica/_tikz/<ano>/<unidade>/<slug>.tex` — apenas o conteúdo TikZ (`\begin{tikzpicture}...`), sem preâmbulo.
2. Rodar `./_tools/tikz-render.sh Matematica` (ou só `./_tools/tikz-render.sh` para tudo). Gera o PNG em `Matematica/_tikz/build/<ano>/<unidade>/<slug>.png`.
3. Referenciar a imagem no `.md` do capítulo: `![alt descritivo](../../_tikz/build/<ano>/<unidade>/<slug>.png)`.
4. No Google Docs: arrastar o PNG na posição correta (não usa AutoLaTeX para a figura).

**Cores institucionais** já definidas no preâmbulo: `eleveBlue` (#1F4E79) e `eleveAccent` (#C00000).

**Regras editoriais**:
- Use TikZ apenas quando o conceito exige representação visual (não para enfeite ou tabelas que cabem em markdown).
- Mantenha a figura mínima — eixos, marcações, 1–2 cores, sem grid excessivo.
- Sempre forneça `alt text` descritivo no `![alt](...)` para acessibilidade e busca.
- O hook git `.git/hooks/pre-commit` bloqueia commits com `.tex` sem `.png` correspondente atualizado.
