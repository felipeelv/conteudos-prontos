# AUTOR — Matemática 3 (Estatística e Educação Financeira)

> **Disciplinas cobertas (Blueprint):** `Estatistica e Educacao Financeira`
> **Pasta de prompt:** `autores/autor_estatistica-e-educacao-financeira/`
> **Modelo editorial:** `prompt-autor.md` da pasta acima — **fonte de verdade absoluta para forma**.

---

## Regra global para TikZ didático

Antes de criar ou alterar qualquer imagem TikZ, aplicar o padrão de `_tools/CONVENCAO_TIKZ.md`: pesquisar referência visual para o tipo de diagrama, usar fonte sans-serif, manter acentuação correta em português, organizar a leitura em fluxo único, evitar setas cruzadas/sobreposição e revisar o PNG renderizado antes de considerar a figura pronta.

## Identidade editorial de Matemática 3

Material **didático-referencial** (apostila) para alunos de 6º ano EF II até 3ª série EM. O capítulo apresenta conceitos de **Estatística** e **Educação Financeira** com rigor matemático, dados reais e desenvolvimento algébrico apropriado à série. **Não é material de exercícios** — atividades vivem em outro material.

A leitura é **direta e densa**: parte de pergunta-problema do cotidiano (dados, escolhas financeiras, incerteza), percorre tópicos numerados com fórmulas em LaTeX e exemplos resolvidos passo a passo, e fecha com blocos pós-conteúdo enxutos (NA VIDA REAL, E A BÍBLIA NISSO?, Simplificando, Para não esquecer, Fórmulas do capítulo).

## Estrutura fixa do capítulo (do `prompt-autor.md`)

```
# Capítulo X — TEMA
## Pergunta-problema (pergunta aberta do cotidiano)
[Introdução narrativa — Cena → Tensão → Ponte (3-6 frases por série)]
> 💭 **Pense um pouco:**
> [pergunta conectando o tema ao aluno]
---
## 1. [Tópico principal]
[1 frase direta de abertura]
[conteúdo, exemplos, tabelas]
## 2. [Tópico principal]
## 3. [...]
---
## NA VIDA REAL
---
## E A BÍBLIA NISSO?
---
## Simplificando
---
## Para não esquecer
---
## Fórmulas do capítulo   (apenas 8º ano em diante)
```

**Não há "Sua Parte" nem nenhum bloco de exercícios no capítulo do aluno.** Esse bloco pertence a outras disciplinas.

## Regras invioláveis (Matemática 3)

- ❌ **NUNCA** criar seção `## Sua Parte` ou similar com exercícios.
- ❌ **NUNCA** usar `\text{}` dentro de LaTeX — sempre `\mathrm{}` (CodeCogs/AutoLaTeX não suporta `\text{}`).
- ❌ **NUNCA** usar caracteres acentuados (ç, ã, é, ó, ú, í, etc.) **dentro** de blocos `$$ ... $$`. Mover palavras acentuadas para fora do bloco LaTeX.
- ❌ **NUNCA** encadear etapas de cálculo numa única linha. Cada etapa em sua própria linha (exceção: boxes 📐 **Fazendo as Contas:** com 2 etapas simples).
- ❌ **NUNCA** inventar dados estatísticos. Toda estatística citada precisa ser dado real e verificável (IBGE, Banco Central, OMS, ONU, pesquisas referenciadas) — sem citar fonte no corpo, mas sem fabricar números.
- ❌ **NUNCA** abrir parágrafo com "Neste capítulo vamos…" ou listar termos antecipadamente.
- ❌ **NUNCA** usar rótulos mecânicos como "Exemplo resolvido:" — usar frases naturais ("Veja só:", "Veja o exemplo abaixo", "Olhe o exemplo abaixo").
- ❌ **NUNCA** criar bloco `NA PRÁTICA` — removido do projeto.
- ❌ **NUNCA** usar a frase fixa "Lembre-se de:" como rótulo do tópico bíblico — o rótulo deve emergir do tema do capítulo (frase de ação contextualizada em negrito).
- ❌ **NUNCA** colocar emoji em heading `##` ou `###`.
- ❌ **NUNCA** colocar mais de 1 box por seção principal `##`.

## Regras estruturais (Matemática 3)

- ✅ **Introdução**: 3 elementos na ordem — Cena → Tensão → Ponte. Extensão: 6º-7º = 3-4 frases | 8º-9º = 4-5 frases | EM = 5-6 frases. Box `> 💭 **Pense um pouco:**` separado, logo após.
- ✅ **Abertura de cada `## N. Tópico`**: 1 frase direta — sem aquecimento.
- ✅ **Parágrafos**: para 6º-7º ano, máximo 2 linhas por parágrafo no Markdown e 1-2 frases curtas. Definições em 1 frase curta. Toda lista exige frase de transição.
- ✅ **Etapas de cálculo**: cada etapa em sua linha própria, dentro de `$$ ... $$`.
- ✅ **Padrões repetitivos**: mostrar 2 exemplos resolvidos + tabela-resumo com "os demais seguem o mesmo padrão". Não repetir o mesmo cálculo 5 vezes.
- ✅ **LaTeX**: delimitador `$$ ... $$`. Unidades/rótulos com `\mathrm{}` precedidos de `\;` (ex.: `$$ J = 500\;\mathrm{reais} $$`). Porcentagem com `\%`. Espaços com `\;` ou `\,`.
- ✅ **Tabelas**: usar sempre que houver dados, comparações ou distribuições de frequência. Markdown padrão.
- ✅ **Boxes**: máximo 1 por `## N. Tópico`. 1 frase única, formato — título na 1ª linha (com 2 espaços ao final), conteúdo na 2ª linha, ambos no blockquote (`>`). Tipos: `> 💭 **Pense um pouco:**`, `> ⏸️ **Pare e Pense:**`, `> 💡 **Você sabia?**`, `> 📊 **Nos Números:**`, `> 📈 **No Dia a Dia:**`, `> 📐 **Fazendo as Contas:**` (2-3 linhas), `> 🕵️ **Caso Real:**`.
- ✅ `## NA VIDA REAL`: máximo **2 frases**. Aplicação direta, sem introdução nem conclusão.
- ✅ `## E A BÍBLIA NISSO?`: 4 elementos exatos — versículo de abertura (blockquote) → parágrafo de transição (2-3 frases sem piedosismo) → **1 único bullet** com princípio contextualizado em negrito (rótulo varia por capítulo) + explicação em 1-2 frases + versículo de apoio entre parênteses → `> 💬 **Para Conversar:** [pergunta reflexiva]`. Cabe em menos de 10 linhas.
- ✅ `## Simplificando`: máximo **2 frases densas** — síntese do arco. Não repetir o que "Para não esquecer" diz.
- ✅ `## Para não esquecer`: exatamente **3 bullets** no formato `**Termo:** explicação brevíssima` — gatilhos de memória, não frases completas.
- ❌ `## Fórmulas do capítulo`: **REMOVIDA do projeto**. Não criar essa seção em nenhuma série.

## Adaptação por série

- **6º-7º ano EF II**: linguagem curta e direta, com exemplos do cotidiano antes do conceito (mesada, escola, esportes, compras). Tabelas/gráficos simples, probabilidade intuitiva. Educação financeira: escolhas, poupar vs gastar. Fórmulas raras, sempre com exemplo numérico imediato. **SEM** seção "Fórmulas do capítulo".
- **8º-9º ano EF II**: vocabulário técnico gradual. Medidas de tendência central, probabilidade com cálculos. Educação financeira: orçamento, juros simples, consumo consciente. Exemplos passo a passo. **COM** seção "Fórmulas do capítulo".
- **1ª-2ª série EM**: distribuições, desvio padrão, probabilidade condicional, juros compostos, investimentos, inflação. Desenvolvimento algébrico completo.
- **3ª série EM**: inferência, correlação, análise crítica de pesquisas reais. Educação financeira avançada (planejamento de longo prazo, comparação de investimentos). Foco ENEM/vestibular, interpretação crítica de dados em contexto social/econômico.

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe na estrutura padrão:

1. **Estrutura**: segue o `prompt-autor.md` (tópicos numerados + 4 ou 5 blocos pós-conteúdo na ordem fixa).
2. **Conteúdo factual** (dado real, exemplo cotidiano, fórmula): embute no tópico mais natural ou em `NA VIDA REAL`.
3. **Exercícios pedidos pelo blueprint**: **descartados** desta saída. Ficam no caderno de atividades separado.
4. **Conexão bíblica explícita**: vai sempre em `## E A BÍBLIA NISSO?` — nunca em outros blocos.
5. **Dados estatísticos**: priorizar rigor e fontes verificáveis (sem citar no corpo). Se o blueprint sugerir dado fictício, substituir por dado real equivalente.

## Como rodar

```bash
cd PRODUCAO/PIPELINE_CONTEUDO/autores/matematica-3
./scripts/criar_capitulos.sh                                                                  # interativo
./scripts/criar_capitulos.sh -d "Estatistica e Educacao Financeira" -a "1serie" -u "unidade-1"
./scripts/criar_capitulos.sh -d "Estatistica e Educacao Financeira" -a "8ano"  -u "unidade-2" --dry-run
./scripts/criar_capitulos.sh -d "Estatistica e Educacao Financeira" -a "3serie" -u "unidade-1" --yes
```

## Validações pós-geração

O script `criar_capitulos.sh` valida cada capítulo gerado contra:

1. **Sem `## Sua Parte`** ou heading similar com exercícios.
2. **Sem emoji em heading `##` ou `###`**.
3. **Sem `\text{}` em blocos LaTeX** — só `\mathrm{}` é permitido para texto/unidades.
4. **Sem caracteres acentuados (ç, ã, é, ó, ú, í, à, â, ê, ô, õ) dentro de blocos `$$ ... $$`**.
5. **Headings pós-conteúdo presentes** na ordem correta: `NA VIDA REAL` → `E A BÍBLIA NISSO?` → `Simplificando` → `Para não esquecer` (+ `Fórmulas do capítulo` para 8º ano em diante).
6. **`## Para não esquecer` tem exatamente 3 bullets**.
7. **`## E A BÍBLIA NISSO?` contém `> 💬 **Para Conversar:**`** — bloco obrigatório.
8. **`## Simplificando` tem ≤ 2 frases** — conta pontos finais.
9. **Sem bloco `NA PRÁTICA`** — removido do projeto.
10. **Para 8º ano em diante**: `## Fórmulas do capítulo` é obrigatório (e proibido para 6º/7º).

Falhas listam violações e param o pipeline antes do commit.

## Referências

- `autores/autor_estatistica-e-educacao-financeira/prompt-autor.md` — manual editorial completo
- `autores/autor_estatistica-e-educacao-financeira/memoria-autor.md` — memória/contexto histórico do projeto
- `PLANEJAMENTO/Referencias/series.md`, `PLANEJAMENTO/Referencias/niveis_profundidade.md`, `PLANEJAMENTO/Referencias/niveis.md`, `PLANEJAMENTO/Referencias/objetivos_aprendizagem.md`
