# AUTOR — História (Ensino Médio)

> **Disciplinas cobertas (Blueprint):** `Historia` (Ensino Médio: 1ª, 2ª e 3ª séries)
> **Modelo editorial:** `_autor/PADRAO_EDITORIAL_v2.md` (canônico, vigente desde 2026-05-02; **revisão v2.1 — 2026-05-02**).

> **Distinção importante:** este AUTOR cobre **somente História do Ensino Médio**. Conteúdo histórico do Ensino Fundamental (1º–9º ano, integrado com Geografia e cidadania) é responsabilidade do AUTOR de Estudos Sociais.

> **⚠️ Padrão editorial v2.1 vigente (2026-05-02):** o padrão atual segue o template de Geografia v2 com adaptações para disciplina narrativo-cristã. **Refinamentos da v2.1** (validados no piloto Cap 3 — Sócrates):
> - **Densidade enxuta:** 1.700-2.000 palavras / cap; mínimo 50 bullets; parágrafos de 1-2 frases (não 2-3); definições e exemplos sempre como bullets, nunca em prosa.
> - **Imagens em HTML** com `<p align="center"><img></p>` + legenda em `<sub><em>` (uma linha). Markdown `![]()` é proibido — não cola no Google Docs.
> - **Pós-conteúdo sintético:** Enquanto isso = 1 parágrafo de 2-3 frases + 4 bullets (sem meta-síntese); E para hoje = 3 frases (ação histórica + paralelo bíblico em 1 frase + princípio universal) + 2 bullets; Esse foi o cara = 4 bullets (não 5) + Legado em 1 frase única.
>
> Antes de produzir qualquer capítulo, leia `_autor/PADRAO_EDITORIAL_v2.md` na íntegra.

---

## Regra global para TikZ didático

Antes de criar ou alterar qualquer imagem TikZ, aplicar o padrão de `_tools/CONVENCAO_TIKZ.md`: pesquisar referência visual para o tipo de diagrama, usar fonte sans-serif, manter acentuação correta em português, organizar a leitura em fluxo único, evitar setas cruzadas/sobreposição e revisar o PNG renderizado antes de considerar a figura pronta.

## Identidade editorial de História

Material **narrativo-cristão** para Ensino Médio. O capítulo conta um arco histórico, ancora a leitura cristã do mundo (sem cristianização forçada da história), explora múltiplos fios temporais e provoca o aluno a pensar criticamente sobre causa, consequência e conexão entre passado e presente — **não é material de exercícios**. As atividades vivem em outro material.

A leitura é **storytelling histórico**: parte de uma cena de abertura concreta (com lugar, data, pessoa), percorre 4 tópicos numerados com subtópicos, e fecha com 8 blocos pós-conteúdo que ampliam o olhar, traçam paralelos temporais com a tradição cristã, conectam à VMC e provocam o aluno.

## Estrutura fixa do capítulo (v2 — canônica)

> Para a estrutura completa com exemplos, consulte `_autor/PADRAO_EDITORIAL_v2.md`. Versão resumida abaixo.

```
# Capítulo X — TEMA

## [Pergunta provocativa ancorada na tensão central do conteúdo histórico]

[Prelúdio em estilo crônica seca — lugar+data/horário concretos, frases curtas, repetição como recurso, frase-ponte ao final.]

> 💬 **Para Conversar:**
> [pergunta reflexiva em segunda pessoa, fecha o prelúdio]

---

## 1. [Conceito/processo histórico]
[Abertura sintética: 1-2 frases]

> [Synthesis blockquote — frase-síntese sem emoji que arremata]

### 1.1 [Subtópico]
[Parágrafo curto: 2-3 frases] → [synthesis blockquote opcional] → [transição + lista] → [box interativo]

### 1.2 [Subtópico]

## 2. [...]
## 3. [...]
## 4. [Aplicação atual / impactos / legados / conexão com a vida do aluno]

---

## 🤝 Sua Parte
[1 parágrafo curto.]

---

> 📚 **Curiosidade:** [1-2 frases. NÃO é heading.]

---

## Enquanto isso...
[1-2 parágrafos de paralelo histórico-cristão da MESMA ÉPOCA + lista "O que estava em jogo:".]

---

## E para hoje...
[Versículo + 1 parágrafo curto + 1-2 bullets de aplicação + box `> 💬 Para Conversar`.]

---

## Esse foi o "cara"
[**Nome (datas)** + bullets biográficos + box `> 🏛️ **Legado:**`]

---

> 🤔 **Você já pensou nisso?** [1-2 frases. NÃO é heading.]

---

## Simplificando
[Parágrafo 1: síntese factual. Parágrafo 2: synthesis blockquote sem emoji.]

---

## Para não esquecer
- **Termo:** definição em uma linha;
- **Termo:** definição em uma linha;
- **Termo:** definição em uma linha;
(3 a 4 bullets, formato `**Termo:** def`. SEM segunda frase, SEM exemplo.)
```

## Regras invioláveis (História v2)

- ❌ **NUNCA** criar bloco de exercícios (lista de questões numeradas) — exercícios vão em outro material.
- ❌ **NUNCA** criar tópico numerado depois do `## 4.` — capítulo de História tem **exatamente** 4 tópicos numerados.
- ❌ **NUNCA** colocar emoji em heading `##` ou `###`. **Única exceção:** `## 🤝 Sua Parte`. `📚 Curiosidade` e `🤔 Você já pensou nisso?` são **blockquotes**, não headings.
- ❌ **NUNCA** abrir o prelúdio com "Neste capítulo vamos…" ou listar conceitos/datas/nomes.
- ❌ **NUNCA** escrever frase com mais de 25 palavras. Ideal: 8-16 palavras. Cada frase faz uma única função.
- ❌ **NUNCA** parágrafo com mais de 4 linhas. Agrupar 2-3 frases relacionadas; quebrar quando o foco mudar.
- ❌ **NUNCA** usar frases proibidas: "É importante destacar que", "Podemos compreender que", "De maneira geral", "Em grande parte", "De forma direta".
- ❌ **NUNCA** confundir conexão cristã com cristianização forçada da história. Quando o tema é não-cristão (Atenas pagã, Roma imperial, civilizações pré-colombianas, Iluminismo), preserve a integridade histórica antes de apontar paralelos. A VMC ilumina, não distorce.
- ❌ **NUNCA** usar `## Enquanto isso...` como repetição do tema central — é outro fio narrativo da mesma época.
- ❌ **NUNCA** usar tabelas e blocos de código por padrão. Máximo 2 tabelas por capítulo, e tabelas substituem prosa/lista (não acrescentam conteúdo).
- ❌ **NUNCA** usar boxes interativos sem `>` (blockquote). Exceção formato inline: `📚 Curiosidade` e `🤔 Você já pensou nisso?` (título + texto na mesma linha).
- ❌ **NUNCA** colocar `🏛️ Legado` como linha solta — sempre como box `> 🏛️ **Legado:**` com quebra de linha interna.
- ❌ **NUNCA** usar rótulo proibido `**Valores para nossa vida:**` em `## E para hoje...` — usar transição narrativa contextual ("Com isso, podemos aprender que:", "A partir desse versículo, fica claro que:").
- ❌ **NUNCA** colocar segunda frase, exemplo ou desenvolvimento em `## Para não esquecer` — só `**Termo:** def em uma linha`.
- ❌ **NUNCA** omitir o `> 💬 **Para Conversar:**` do prelúdio **ou** o do bloco `## E para hoje...`. São **dois** "Para Conversar" diferentes.
- ❌ **NUNCA** trocar o personagem do `## Esse foi o "cara"` ou o versículo do `## E para hoje...` — vêm literais do blueprint.

## Adaptação por série

- **1ª série EM:** História antiga e medieval (Antiguidade Oriental e Clássica, Idade Média, Renascimento). Análise contextual e narrativa. Texto introdutório: 5-6 frases. Sem interpretações historiográficas complexas.
- **2ª série EM:** História Moderna e Contemporânea inicial (Iluminismo, Revoluções, Brasil colonial e imperial, século XIX). Análise de processos, contradições e perspectivas múltiplas. Texto introdutório: 5-6 frases.
- **3ª série EM:** História Contemporânea recente (séculos XX-XXI: guerras mundiais, Guerra Fria, descolonizações, globalização, Brasil republicano). Síntese, interpretações historiográficas complexas, conexões com vestibulares/ENEM, posicionamento argumentativo. Texto introdutório: 6-8 frases.

## Tensão central da disciplina (resolução cuidadosa)

História em chave cristã vive da tensão entre **fidelidade ao registro histórico** (datas, fontes, contextos, perspectivas múltiplas) e **leitura iluminada pela Visão de Mundo Cristã** (princípios bíblicos como chave de leitura, sem distorção do passado). Os dois lados são obrigatórios:

- **Sem fidelidade histórica**, o capítulo vira pregação travestida de aula.
- **Sem leitura cristã**, o capítulo vira história positivista sem o eixo pedagógico do colégio.

A regra é **integração**: o AUTOR respeita o registro histórico em sua complexidade e aponta paralelos cristãos onde fazem sentido — sem cristianizar o que não é cristão. A VMC ilumina, não distorce.

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe na estrutura padrão de História:

1. **Estrutura:** segue o `PADRAO_EDITORIAL_v2.md` (4 tópicos numerados + 8 blocos pós-conteúdo na ordem fixa).
2. **Conteúdo factual** (personagem específico, data, fato): embute no bloco mais natural — `## Esse foi o "cara"`, `## E para hoje...` (lista de aprendizados), `> 📚 Curiosidade` ou `## Enquanto isso...`.
3. **Exercícios pedidos pelo blueprint:** **descartados** desta saída. Ficam no caderno de atividades separado.
4. **Conexão bíblica explícita:** vai sempre em `## E para hoje...`. `## Enquanto isso...` é paralelo histórico-cristão TEMPORAL, não comentário escriturístico.
5. **Reflexão cidadã/cristã do aluno** (papel e postura diante do tema, NÃO atividade): vai sempre em `## 🤝 Sua Parte` — nunca dispersa pelo capítulo. Se o tema não tiver gancho honesto com a vida do aluno, omitir a seção.
6. **Personagem histórico do blueprint:** literal e inegociável em `## Esse foi o "cara"`.
7. **Versículo do blueprint:** literal e inegociável em `## E para hoje...`.

## Validações pós-geração (v2 — checklist HIST1-HIST12)

| # | Regra |
|---|---|
| HIST1 | Sem `## 5.` ou superior |
| HIST2 | Sem emoji em heading exceto `## 🤝 Sua Parte` |
| HIST3 | Sequência fixa pós-conteúdo: `## 🤝 Sua Parte` → `> 📚 **Curiosidade:**` (blockquote) → `## Enquanto isso...` → `## E para hoje...` → `## Esse foi o "cara"` → `> 🤔 **Você já pensou nisso?**` (blockquote) → `## Simplificando` → `## Para não esquecer` |
| HIST4 | `## Para não esquecer` tem 3-4 bullets no formato `**Termo:** def em uma linha` |
| HIST5 | `## E para hoje...` contém `> 💬 **Para Conversar:**` |
| HIST6 | Após o prelúdio (antes de `## 1.`) há `> 💬 **Para Conversar:**` |
| HIST7 | `## Esse foi o "cara"` termina com box `> 🏛️ **Legado:**` (blockquote, não linha solta) |
| HIST8 | `## Enquanto isso...` contém `O que estava em jogo:` |
| HIST9 | `## E para hoje...` NÃO contém o rótulo proibido `**Valores para nossa vida:**` |
| HIST10 | Frases ≤ 25 palavras, parágrafos com 2-3 frases, sem frases proibidas |
| HIST11 | Pergunta provocativa (H2) ancorada na tensão central do conteúdo |
| HIST12 | Prelúdio em estilo crônica seca (lugar+data, frases curtas, repetição) |

Falhas listam violações e param o pipeline antes do commit.

## Referências

- `_autor/PADRAO_EDITORIAL_v2.md` — manual editorial completo com exemplos canônicos
- `~/conteudos-prontos/plugins/autor-eleve/skills/autor-historia/SKILL.md` — skill de produção
- `~/conteudos-prontos/Historia/_PROGRESSO.md` — memória de continuidade entre sessões
