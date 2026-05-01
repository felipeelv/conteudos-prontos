# AUTOR — Ciências


> Este arquivo é genérico para qualquer executor LLM compatível com chamada via terminal.
> Use [`scripts/criar_capitulos.sh`](scripts/criar_capitulos.sh) com `--executor claude`, `--executor codex`, `--executor gemini` ou outro comando disponível no PATH. Se os blueprints estiverem fora deste repositório, informe `BLUEPRINT_ROOT=/caminho/para/Blueprint`.

> **Disciplinas cobertas (Blueprint):** `Ciencias`
> **Cobertura por ano (Blueprint atual):** 1º a 8º ano (EF I + EF II). O `prompt-autor.md` cobre 4º ano EF I até 3ª série EM — quando aparecerem blueprints de 9º ano ou EM, este AUTOR já os atende sem mudanças.
> **Pasta do autor:** `autores/autor_ciencias/`
> **Modelo editorial:** `prompt-autor.md` nesta pasta — **fonte de verdade absoluta para forma**.

---

## Identidade editorial de Ciências

Material **expositivo-investigativo** que parte do **fenômeno observável** ou da **cena concreta** para construir o conceito científico. Não é material de exercícios isolados — a `## 🤝 Sua Parte` é aplicação prática + ação concreta, não bateria de questões.

A leitura é **narrativa-científica**: abre com cena → tensão → ponte (storytelling), atravessa 4 tópicos numerados com subtópicos guiados por perguntas, e fecha com blocos pós-conteúdo que aplicam, ancoram na fé e sintetizam.

## Estrutura fixa do capítulo (do `prompt-autor.md`)

```
# Capítulo X — TEMA
## Pergunta-problema
[Introdução em storytelling: Cena → Tensão → Ponte (extensão por série; ver §2.1)]
> 💭 **Pense um pouco:** [pergunta conectando o tema ao aluno]
---
## 1. [Tópico principal]
[Abertura: 2-3 frases]
### 1.1 [Pergunta orientadora]
### 1.2 [Pergunta orientadora]
## 2. [Tópico principal]
## 3. [...]
## 4. [Aplicação / cotidiano]
---
## 🤝 Sua Parte
[Aplicação prática + ação concreta que o aluno possa fazer.]
---
## O que a Bíblia diz sobre [tema]
[Prosa conectando tema à visão bíblica.]
[Versículo em destaque (itálico/negrito + referência).]
[Parágrafo ligando descoberta a valores cristãos.]
**Olhe como você pode fazer:**
- Ação prática 1 ligada ao tema e valor cristão;
- Ação prática 2 ligada ao tema e valor cristão.
---
## Simplificando
[Resumo em 1-2 parágrafos, linguagem acessível.]
---
## Para não esquecer
- Conceito 1: explicação em uma frase;
- Conceito 2: explicação em uma frase;
- Conceito 3: explicação em uma frase;
(3 a 4 itens — formato "Termo: explicação breve")
```

## Regras invioláveis (Ciências)

- ❌ **NUNCA** criar tópico numerado depois do `## 4.` — capítulo de Ciências tem **no máximo 4 tópicos numerados**.
- ❌ **NUNCA** abrir a introdução com "Neste capítulo vamos estudar…" ou listar termos/conteúdos antecipadamente.
- ❌ **NUNCA** omitir o **gancho experimental** na introdução: a abertura tem que ser **fenômeno observável** ou **cena concreta** que o aluno possa imaginar/reproduzir mentalmente. Definição enciclopédica de partida está proibida.
- ❌ **NUNCA** centrar a história da ciência apenas em cientistas europeus/norte-americanos quando houver alternativa pertinente: priorizar **diversidade científica** (mulheres, cientistas brasileiros e latino-americanos, africanos, asiáticos) sempre que o tema admitir, sem forçar inclusão fora de contexto histórico.
- ❌ **NUNCA** usar tabelas ou blocos de código (a menos que o blueprint peça explicitamente).
- ❌ **NUNCA** transformar `## 🤝 Sua Parte` em lista de exercícios/questões — é aplicação prática com ação concreta.
- ❌ **NUNCA** desenvolver/explicar dentro de um box: box é "drop" de **1-2 frases no máximo**, direto ao ponto.
- ❌ **NUNCA** iniciar lista em subtópico sem **frase de transição** (ex.: "Três coisas são essenciais:", "Isso acontece porque:").

## Regras estruturais (Ciências)

- ✅ **`## Pergunta-problema`** é **heading literal**, não placeholder. A pergunta-problema do blueprint vai como título do bloco; abaixo vem o storytelling.
- ✅ **Introdução em 3 elementos na ordem:** Cena → Tensão → Ponte. Extensão máxima por série: 4º–5º: 3-4 frases | 6º–7º: 4-5 | 8º–9º: 5-7 | EM: 6-8.
- ✅ **Box `> 💭 **Pense um pouco:**`** vem **logo após a introdução**, separado dela, antes do `---` que abre os tópicos numerados.
- ✅ Cada **tópico principal `##`** tem abertura sintética de **2-3 frases** + subtópicos `###` numerados (1.1, 1.2…) com perguntas orientadoras.
- ✅ Cada **subtópico** tem: prosa curta → frase de transição → lista com marcadores e `;` no fim. Quando couber, exemplo prático após a lista.
- ✅ **Boxes obrigatoriamente em blockquote (`>`)**, com **1-2 frases**, escolhidos entre 5 tipos:
  - `> 💭 **Pense um pouco:**` — pergunta curta de reflexão
  - `> ⏸️ **Pare e Pense:**` — pergunta sobre causa, efeito ou decisão
  - `> 💡 **Você sabia?**` — fato curioso em uma frase
  - `> 📏 **Medidas Interessantes:**` — dado numérico surpreendente
  - `> 🔬 **Ciência do Dia a Dia:**` — exemplo do cotidiano em uma frase
- ✅ **Mínimo 1 box por seção principal** (`## 1.` … `## 4.`).
- ✅ **`## 🤝 Sua Parte`** é **obrigatório** e abre os blocos pós-conteúdo (emoji em H2 é exceção autorizada — não confundir com a regra das outras disciplinas).
- ✅ **`## O que a Bíblia diz sobre [tema]`** tem 4 elementos: prosa de conexão (1 parágrafo) + versículo em destaque (com referência) + parágrafo de aplicação + bloco `**Olhe como você pode fazer:**` com 2 bullets de ação prática.
- ✅ **`## Simplificando`** tem **1-2 parágrafos curtos** (não bullets).
- ✅ **`## Para não esquecer`** tem **3 a 4 bullets** no formato `Termo: explicação breve;`.
- ✅ **Diversidade científica** declarada: ao citar pesquisador/descobridor, varrer o leque (gênero, origem, época) — não default Europa-EUA.

## Adaptação por série (resumo operacional)

- **4º–5º ano EF I:** linguagem simples, frases curtas, analogias do universo da criança (cozinhar, montar, brincar). Conceitos concretos e observáveis. Sem termo técnico sem explicação.
- **6º–7º ano EF II:** exemplos concretos, analogias do cotidiano. Vocabulário científico introduzido gradualmente.
- **8º–9º ano EF II:** conceitos com explicações claras. Fenômenos intrigantes como gancho.
- **1ª–2ª série EM:** articulação entre disciplinas, modelos científicos e suas limitações.
- **3ª série EM:** síntese, conexões com vestibulares/ENEM, interpretação científica complexa.

> Atualmente o Blueprint só tem material de 1º a 8º ano, mas o `prompt-autor.md` e este AUTOR já estão prontos para EM quando os blueprints chegarem.

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe na estrutura padrão de Ciências:

1. **Estrutura:** segue o `prompt-autor.md` (4 tópicos numerados + 4 blocos pós-conteúdo na ordem fixa).
2. **Conteúdo factual** (cientista específico, fenômeno, dado numérico): embute no bloco mais natural — corpo do tópico, box `💡 Você sabia?`, `📏 Medidas Interessantes`, ou no parágrafo de conexão de `## O que a Bíblia diz sobre [tema]`.
3. **Exercícios pedidos pelo blueprint:** **descartados** desta saída. Ficam no caderno de atividades separado. `## 🤝 Sua Parte` é **aplicação prática**, não exercício.
4. **Conexão bíblica explícita:** vai sempre em `## O que a Bíblia diz sobre [tema]` — nunca em outros blocos.

## Como rodar com qualquer executor compatível

```bash
cd autores/autor_ciencias
./scripts/criar_capitulos.sh                                              # interativo, executor padrão: claude
./scripts/criar_capitulos.sh -d "Ciencias" -a "4ano" -u "unidade-4-microrganismos"
./scripts/criar_capitulos.sh -d "Ciencias" -a "8ano" -u "unidade-4" --dry-run
./scripts/criar_capitulos.sh -d "Ciencias" -a "6ano" -u "unidade-4" --yes
./scripts/criar_capitulos.sh --executor codex -d "Ciencias" -a "6ano" -u "unidade-4" --yes
./scripts/criar_capitulos.sh --executor gemini -d "Ciencias" -a "6ano" -u "unidade-4" --yes
BLUEPRINT_ROOT="/caminho/para/Blueprint" ./scripts/criar_capitulos.sh --executor codex -d "Ciencias" -a "6ano" -u "unidade-4" --yes
```

> Atenção ao formato dos anos: `1ano`, `2ano`, …, `8ano` (sem `serie`/`ano-`/separador).

## Validações pós-geração

O script [`criar_capitulos.sh`](scripts/criar_capitulos.sh) valida cada capítulo gerado contra:

1. **Sem `## 5.`** (ou `## 6.`, etc.) — Ciências tem no máximo 4 tópicos numerados.
2. **`## Pergunta-problema` presente** — heading literal de abertura.
3. **Box `> 💭 **Pense um pouco:**` presente** logo após a introdução (existência mínima).
4. **`## 🤝 Sua Parte` presente** — primeiro bloco pós-conteúdo, obrigatório.
5. **`## O que a Bíblia diz sobre …` presente** — heading começa com esse prefixo (regex tolerante a tema variável).
6. **`## Simplificando` presente.**
7. **`## Para não esquecer` presente** com **3 a 4 bullets** (não 2, não 5+).
8. **Sem tabelas Markdown** (`|---|`) e **sem blocos de código** (` ``` `) — a menos que o blueprint do capítulo peça.

Falhas listam violações e param o pipeline antes do commit.

> O script **não** valida a ordem fixa dos blocos pós-conteúdo nem "diversidade científica" / "gancho experimental" — essas regras vão para o prompt enviado ao executor e ficam sob revisão humana.

## Referências

- `prompt-autor.md` — manual editorial completo local do autor
- `memoria-autor.md` — memória/contexto adicional local do autor
- `PLANEJAMENTO/Referencias/series.md`, `PLANEJAMENTO/Referencias/niveis_profundidade.md`, `PLANEJAMENTO/Referencias/niveis.md`, `PLANEJAMENTO/Referencias/objetivos_aprendizagem.md`
