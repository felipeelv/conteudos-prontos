# AUTOR — Estudos Sociais e História

> **Disciplinas cobertas (Blueprint):** `Estudos Sociais` (1º–9º ano EF), `Historia` (1ª–3ª série EM)
> **Pasta de prompt:** `PRODUCAO/Prompts Criador de Conteudo/Estudos Sociais/`
> **Modelo editorial:** `prompt-autor.md` da pasta acima — **fonte de verdade absoluta para forma**.

---

## Regra global para TikZ didático

Antes de criar ou alterar qualquer imagem TikZ, aplicar o padrão de `_tools/CONVENCAO_TIKZ.md`: pesquisar referência visual para o tipo de diagrama, usar fonte sans-serif, manter acentuação correta em português, organizar a leitura em fluxo único, evitar setas cruzadas/sobreposição e revisar o PNG renderizado antes de considerar a figura pronta.

## Identidade editorial de Estudos Sociais e História

Material **expositivo-narrativo** integrando História + Geografia + cidadania (Estudos Sociais, EF I e EF II) e História formal (EM). O capítulo conta um arco narrativo, contextualiza personagens históricos e ancora a leitura cristã do mundo — **não é material de exercícios**. As atividades vivem em outro material.

A leitura é **storytelling didático**: parte de cena de abertura curta, percorre 4 tópicos numerados com subtópicos perguntativos, e fecha com 8 blocos especiais (Sua Parte, Curiosidade, Enquanto isso..., E para hoje..., Esse foi o "cara", Você já pensou nisso?, Simplificando, Para não esquecer).

**Atenção:** este AUTOR cobre DUAS disciplinas com cadências distintas:

- `Estudos Sociais` — pasta `PRODUCAO/Blueprint/Estudos Sociais/` com anos `1ano` … `9ano` (EF I integrado + EF II).
- `Historia` — pasta `PRODUCAO/Blueprint/Historia/` com séries `1serie`, `2serie`, `3serie` (História formal do EM). *Geografia do EM tem AUTOR próprio (`autores/geografia/`), não usar este.*

## Estrutura fixa do capítulo (do `prompt-autor.md`)

```
# Capítulo X — TEMA
## Pergunta-problema (pergunta aberta)
[Texto introdutório narrativo: cena de abertura + tensão central + chamada ao aluno (com 💭). Extensão por série — ver §6.]

> 💬 **Para Conversar:**
> [pergunta reflexiva em segunda pessoa, adaptada ao tema]

---
## 1. [Nome da fase/processo]
[Abertura sintética: 2-3 frases]
### 1.1 [Pergunta orientadora]
### 1.2 [Pergunta orientadora]
## 2. [...]
## 3. [...]
## 4. [Legados / consequências / impactos hoje]
---

## 🤝 Sua Parte
[Aplicação prática + cidadania — máximo 1 frase]
---
#### 📚 Curiosidade dos Estudos Sociais
[Fato que amplia o tema — máximo 2 frases]
---
## Enquanto isso...
[Conexão histórica com a trajetória cristã + lista "O que estava em jogo:"]

## E para hoje...
[Versículo bíblico (itálico/negrito + referência) + comentário cristão + transição narrativa + bullets de aprendizados + síntese + 💬 Para Conversar]
---
## Esse foi o "cara"
[Personagem histórico — 3 bullets biográficos focados + 🏛️ **Legado:** uma linha curta]
---
## Você já pensou nisso?
[Problematização — máximo 2-3 frases]
---
## Simplificando
[EM: 1 parágrafo denso. EF: máximo 2 frases.]
---
## Para não esquecer
- gatilho 1
- gatilho 2
- gatilho 3
(3-4 bullets, estilo "memory triggers" — palavras-chave, não frases completas)
```

**Não há "Explorando os Conceitos" entre a introdução e `## 1.`** — fluxo direto.
**Não há bloco de exercícios no capítulo do aluno** — exercícios vão para o caderno separado.

## Regras invioláveis (Estudos Sociais e História)

- ❌ **NUNCA** criar bloco de exercícios (lista de questões numeradas para o aluno responder) no capítulo final.
- ❌ **NUNCA** criar tópico numerado depois do `## 4.` — capítulo tem **exatamente** 4 tópicos numerados.
- ❌ **NUNCA** usar o heading `## Explorando os Conceitos` — fluxo direto da introdução para `## 1.`.
- ❌ **NUNCA** abrir a introdução com "Neste capítulo vamos…" ou listar datas/nomes/conceitos.
- ❌ **NUNCA** ultrapassar a extensão da introdução por série (1º-3º: 2-3 frases | 4º-5º: 3-4 | 6º-7º: 3-4 | 8º-9º: 4-5 | EM: 5-6).
- ❌ **NUNCA** usar rótulos genéricos como `**Valores para nossa vida:**` no bloco `## E para hoje...` — usar transição narrativa contextual (ex.: "Com esse versículo, podemos aprender que:").
- ❌ **NUNCA** colocar mais de 2 tabelas no capítulo. Tabelas **substituem** prosa/lista, **nunca acrescentam** conteúdo novo.
- ❌ **NUNCA** colocar mais de 2 boxes por seção principal `##` numerada.
- ❌ **NUNCA** usar boxes (`💭 Pense um pouco`, `⏸️ Pare e Pense`, `💡 Você sabia?`, `💬 Para Conversar`) sem o `>` à frente — formatação obrigatoriamente em blockquote com quebra de linha interna (título com 2 espaços ao final + conteúdo na linha seguinte, ambos dentro de `>`).

## Regra do personagem-chave + ponteiro VP/cristão (Visão de Mundo Cristã)

**Inviolável** em `## Esse foi o "cara"` e em `## E para hoje...`:

- ✅ **Personagem do bloco "Esse foi o 'cara'" = exatamente o do blueprint.** Não substituir, não inventar, não compor com outro. Se o blueprint indica Aristóteles, é Aristóteles. Personagem histórico do tema do capítulo (líder, pensador, descobridor, figura emblemática), com 3 bullets biográficos focados (origem/contexto, contribuição central, marco) + `🏛️ **Legado:**` em uma linha.
- ✅ **Versículo de "E para hoje..." = exatamente o do blueprint.** Não trocar referência, não parafrasear. Quando o blueprint indica Eclesiastes 3:1, é Eclesiastes 3:1. O versículo aparece em itálico/negrito com referência completa.
- ✅ **Conexão cristã sem suavização nem moralismo barato.** O bloco `## E para hoje...` faz a ponte entre o tema histórico/social e a Visão de Mundo Cristã (VMC) — ancorada na Escritura, não em opinião do autor. Comentário breve, transição narrativa específica ao tema, bullets de aprendizados e fecha com `> 💬 **Para Conversar:**`.
- ✅ **Não confundir conexão cristã com cristianização forçada da história.** Quando o tema é não-cristão (Atenas pagã, Roma imperial, civilizações pré-colombianas, Iluminismo), preserve a integridade histórica antes de apontar paralelos com a Escritura. A VMC ilumina, não distorce.
- ✅ **`## Enquanto isso...` é distinto de `## E para hoje...`.** "Enquanto isso..." mostra a contemporaneidade entre o evento estudado e a trajetória cristã (ex.: "enquanto Atenas debatia democracia, os profetas em Israel..."). "E para hoje..." aplica a Escritura ao aluno hoje.

## Regras estruturais (Estudos Sociais e História)

- ✅ Introdução narrativa (§2.1 do prompt-autor): cena → tensão → chamada ao aluno com 💭, seguida obrigatoriamente de `> 💬 **Para Conversar:**` no formato blockquote com quebra interna.
- ✅ Cada **tópico principal `##`** abre com 2-3 frases sintéticas + subtópicos `###` com perguntas orientadoras. Nada de explicação no `##` — explicação vai nos `###`.
- ✅ Cada **subtópico `###`** tem: prosa direta (conceito → explicação → exemplo) + frase de transição + lista com marcadores. **Mín. 1, máx. 2 boxes por seção principal `##`.**
- ✅ Boxes interativos (todos em blockquote `>` com quebra interna):
  - `> 💭 **Pense um pouco:**` — reflexão individual curta
  - `> ⏸️ **Pare e Pense:**` — dilema ético/político/decisão histórica
  - `> 💡 **Você sabia?**` — curiosidade histórica em uma frase
  - `> 💬 **Para Conversar:**` — pergunta reflexiva em segunda pessoa (usado na introdução e em "E para hoje...")
- ✅ `## 🤝 Sua Parte` — 1 frase aplicando o tema ao cotidiano do aluno (cidadania).
- ✅ `#### 📚 Curiosidade dos Estudos Sociais` — H4 com emoji, 1-2 frases ampliando o tema.
- ✅ `## Enquanto isso...` — prosa de contemporaneidade histórico-cristã + lista "O que estava em jogo:" com bullets.
- ✅ `## E para hoje...` — versículo (itálico/negrito + ref) → comentário curto → transição narrativa contextual → bullets de aprendizados → frase de síntese → `> 💬 **Para Conversar:**`.
- ✅ `## Esse foi o "cara"` — 3 bullets biográficos focados + `🏛️ **Legado:**` em uma linha.
- ✅ `## Você já pensou nisso?` — 2-3 frases problematizando julgamentos simplistas.
- ✅ `## Simplificando` — EM: 1 parágrafo denso; EF: máx. 2 frases.
- ✅ `## Para não esquecer` — **3 a 4 bullets** estilo "memory triggers" (palavras-chave, não frases completas).

## Adaptação por série (EF e EM)

| Faixa | Linguagem e abordagem |
|---|---|
| **1º–3º ano EF I** | Alfabetização em curso. Frases muito curtas, vocabulário do cotidiano, sem siglas, sem datas. Conteúdo concreto: família, casa, escola, vizinhança. História como narrativa simples (antes/depois). Geografia ancorada em lugares conhecidos. |
| **4º–5º ano EF I** | Ampliação para município, estado, Brasil. Linha do tempo simples, primeiras noções de mapa. Conceitos (cultura, trabalho, paisagem) sempre com exemplo concreto. Frases curtas. |
| **6º–7º ano EF II** | Frases curtas, exemplos concretos. Cena simples na introdução. História antiga/medieval com personagens identificáveis. Geografia integrada. |
| **8º–9º ano EF II** | Conceitos (revolução, império, nacionalismo) com explicação clara. Introdução com dilema/decisão histórica. Geografia política/econômica integrada à narrativa. |
| **1ª–2ª série EM** | Análises profundas, processos globais, contradições, perspectivas múltiplas. Introdução com cenário geopolítico ou tensão entre forças históricas. |
| **3ª série EM** | Síntese de processos, conexões com vestibulares/ENEM, interpretação historiográfica complexa. Introdução com contrastes historiográficos ou provocações analíticas. |

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe na estrutura padrão:

1. **Estrutura:** segue o `prompt-autor.md` (4 tópicos numerados + 8 blocos pós-conteúdo na ordem fixa).
2. **Conteúdo factual** (data, personagem, conceito, dado): embute no bloco mais natural — `## Esse foi o "cara"` (personagem), `#### 📚 Curiosidade` (fato pontual), `## Enquanto isso...` (paralelo histórico-cristão) ou dentro dos tópicos numerados.
3. **Exercícios pedidos pelo blueprint:** **descartados** desta saída. Ficam no caderno de atividades separado.
4. **Conexão bíblica explícita:** vai sempre em `## E para hoje...` — `## Enquanto isso...` é paralelo histórico-cristão, não comentário escriturístico.
5. **Personagem histórico do blueprint:** literal e inegociável em `## Esse foi o "cara"`.
6. **Versículo do blueprint:** literal e inegociável em `## E para hoje...`.

## Como rodar

```bash
cd PRODUCAO/PIPELINE_CONTEUDO/autores/estudos-sociais
./scripts/criar_capitulos.sh                                                                  # interativo
./scripts/criar_capitulos.sh -d "Estudos Sociais" -a "1ano"  -u "unidade-1-quem-sou-eu"
./scripts/criar_capitulos.sh -d "Historia"        -a "1serie" -u "unidade-4-apogeu-e-declinio-da-grecia-classica"
./scripts/criar_capitulos.sh -d "Estudos Sociais" -a "5ano"  -u "unidade-3" --dry-run
./scripts/criar_capitulos.sh -d "Historia"        -a "2serie" -u "unidade-3" --yes
```

## Validações pós-geração

O script `criar_capitulos.sh` valida cada capítulo gerado contra:

1. **Sem `## 5.`** (ou superior) — Estudos Sociais/História tem exatamente 4 tópicos numerados.
2. **Sem heading `## Explorando os Conceitos`** — fluxo é direto da introdução para `## 1.`.
3. **Headings pós-conteúdo presentes** na ordem correta:
   - `## 🤝 Sua Parte`
   - `#### 📚 Curiosidade dos Estudos Sociais`
   - `## Enquanto isso...`
   - `## E para hoje...`
   - `## Esse foi o "cara"`
   - `## Você já pensou nisso?`
   - `## Simplificando`
   - `## Para não esquecer`
4. **`## Para não esquecer` tem 3 a 4 bullets** — não 2, não 5+.
5. **`## E para hoje...` contém `> 💬 **Para Conversar:**`** — bloco obrigatório (segundo `Para Conversar` do capítulo, depois do da introdução).
6. **`## E para hoje...` NÃO contém o rótulo proibido `**Valores para nossa vida:**`** — usar transição narrativa contextual.
7. **`## Esse foi o "cara"` contém `🏛️ **Legado:**`** — elemento obrigatório.
8. **Introdução contém `> 💬 **Para Conversar:**`** — fechamento obrigatório do bloco de abertura.
9. **Máximo 2 tabelas no capítulo** (linhas começando com `|`, agrupadas).
10. **Boxes em blockquote** — heurística: `💭 **Pense um pouco`, `⏸️ **Pare e Pense`, `💡 **Você sabia`, `💬 **Para Conversar` precisam estar em linha que comece com `>`.

Falhas listam violações e param o pipeline antes do commit.

## Referências

- `PRODUCAO/Prompts Criador de Conteudo/Estudos Sociais/prompt-autor.md` — manual editorial completo
- `PRODUCAO/Prompts Criador de Conteudo/Estudos Sociais/memoria-autor.md` — memória/contexto adicional do autor
- `PRODUCAO/Prompts Criador de Conteudo/Estudos Sociais/modelo-ef2.md` — capítulo-modelo aprovado (referência de tom, ritmo, densidade — NÃO de estrutura literal; estrutura sempre vence pelo prompt-autor.md)
- `PLANEJAMENTO/Referencias/series.md`, `PLANEJAMENTO/Referencias/niveis_profundidade.md`, `PLANEJAMENTO/Referencias/niveis.md`, `PLANEJAMENTO/Referencias/objetivos_aprendizagem.md`
