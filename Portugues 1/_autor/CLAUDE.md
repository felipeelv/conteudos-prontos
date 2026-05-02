# AUTOR — Português

> **Disciplinas cobertas (Blueprint):** `Portugues 1`, `Portugues 2`
> **Pasta de prompt:** `PRODUCAO/Prompts Criador de Conteudo/Portugues/`
> **Modelo editorial:** `prompt-autor.md` da pasta acima — **fonte de verdade absoluta para forma**.

---

## Regra global para TikZ didático

Antes de criar ou alterar qualquer imagem TikZ, aplicar o padrão de `_tools/CONVENCAO_TIKZ.md`: pesquisar referência visual para o tipo de diagrama, usar fonte sans-serif, manter acentuação correta em português, organizar a leitura em fluxo único, evitar setas cruzadas/sobreposição e revisar o PNG renderizado antes de considerar a figura pronta.

## Identidade editorial de Português

Material **expositivo** — definição → exemplos → tabela. Não é material de exercícios. Os exercícios moram em **outro material** (caderno de atividades, plataforma), nunca dentro do capítulo do aluno.

## Estrutura fixa do capítulo (do `prompt-autor.md`)

```
# CAPÍTULO X — TEMA
---
## ESTUDO DA LÍNGUA
## ***[Pergunta-problema]***
[parágrafo de abertura — 2 frases]
## 1. [Tópico]
## 2. [Tópico]
## 3. [Tópico]
## 4. [Tópico]
---
## A LÍNGUA NO DIA A DIA
---
## E A BÍBLIA NISSO?
---
## Simplificando
## Para não esquecer
```

**Não há mais blocos pós-conteúdo.** Não há "Sua Parte", "Curiosidade", "Enquanto isso...", "Esse foi o cara", "Você já pensou nisso?", "Praticando", "Atividades". Esses blocos pertencem a outras disciplinas.

## Regras invioláveis (Português)

- ❌ **NUNCA** criar seção `## 5. Sua Parte` ou similar com exercícios.
- ❌ **NUNCA** criar tópico numerado depois do `## 4.` — capítulo de Português tem no máximo 4 tópicos numerados.
- ❌ **NUNCA** colocar emoji em heading `##` ou `###`.
- ❌ **NUNCA** abrir parágrafo com "Neste capítulo vamos…".
- ❌ **NUNCA** introduzir `## A LÍNGUA NO DIA A DIA` com mais de 2 frases.
- ❌ **NUNCA** duplicar versículo em `## E A BÍBLIA NISSO?` — exatamente 1 versículo.
- ❌ **NUNCA** usar analogia explícita ("Assim como X, Y…") na conexão bíblica.
- ❌ **NUNCA** criar bullet com título dinâmico dentro de `## E A BÍBLIA NISSO?`.

## Regras estruturais (Português)

- ✅ Cada conceito tem **2 exemplos** com análise na linha seguinte (entre parênteses).
- ✅ **Máximo 1 box** por tópico `##`, independente de quantos `###` o tópico tenha.
- ✅ Cada box tem **exatamente 1 frase** (com 2 espaços ao final da primeira linha para forçar quebra).
- ✅ Box começa com emoji + título em negrito: `> ✅ **Título:**` ou `> 💡 **Dica:**` ou `> ⚠️ **Atenção:**` ou `> 📌 **Aplicação prática:**` ou `> 🤔 **Pergunta:**`.
- ✅ Tabelas para classificações, paradigmas e comparações (não duplicar em lista).
- ✅ `## Simplificando` tem no máximo **2 frases** densas.
- ✅ `## Para não esquecer` tem exatamente **3 bullets** com gatilhos de memória (fragmentos, não frases completas).
- ✅ `## E A BÍBLIA NISSO?` tem **3 elementos exatos**: versículo (blockquote) + 1-2 frases diretas + `> 💬 **Para Conversar:** [pergunta]`.

## Hierarquia de autoridade (resolução de conflito)

Quando o **blueprint** pedir conteúdo que não cabe nos 4 blocos pós-conteúdo de Português:

1. **Estrutura:** segue o `prompt-autor.md` (4 blocos pós-conteúdo, nada mais).
2. **Conteúdo factual** (personagem da curiosidade, versículo, frase-âncora, insight de "Você já pensou nisso?"): **embute** nos blocos existentes:
   - "Curiosidade da Língua" / "Esse foi o cara" → vai para `## A LÍNGUA NO DIA A DIA` (frase 2 de 2 disponíveis).
   - "Você já pensou nisso?" → vai para `## A LÍNGUA NO DIA A DIA` (frase 1) ou para o parágrafo conector de `## E A BÍBLIA NISSO?` (entre versículo e Para Conversar).
   - "Enquanto isso..." → vai para o parágrafo conector de `## E A BÍBLIA NISSO?`.
3. **Exercícios pedidos pelo blueprint:** **descartados** desta saída. Ficam no caderno de atividades separado.

## Como rodar

```bash
cd PRODUCAO/PIPELINE_CONTEUDO/autores/portugues
./scripts/criar_capitulos.sh                                    # interativo
./scripts/criar_capitulos.sh -d "Portugues 1" -a "4ano" -u "unidade-4-verbos"
./scripts/criar_capitulos.sh -d "Portugues 1" -a "4ano" -u "unidade-4" --dry-run
./scripts/criar_capitulos.sh -d "Portugues 1" -a "4ano" -u "unidade-4" --yes
```

## Validações pós-geração

O script `criar_capitulos.sh` valida cada capítulo gerado contra:

1. **Sem `## 5.`** (ou `## 6.`, etc.) — se houver, falha imediatamente.
2. **Sem heading com emoji** — busca `^##.*[🤝📚⏰⏰💭✏️]` e similares.
3. **Headings pós-conteúdo presentes** na ordem correta (LDD, Bíblia, Simplificando, Para não esquecer).
4. **`## Para não esquecer` tem 3 bullets** — não 2, não 4.
5. **`## Simplificando` tem ≤ 2 frases** — conta pontos finais.

Falhas listam violações e param o pipeline antes do commit.

## Referências

- `PRODUCAO/Prompts Criador de Conteudo/Portugues/prompt-autor.md` — manual editorial completo
- `PRODUCAO/Prompts Criador de Conteudo/Portugues/referencia-regras-ortograficas.md` — validação ortográfica
- `PRODUCAO/Prompts Criador de Conteudo/Portugues/referencia-exemplos-linguagem.md` — calibração por série
- `PLANEJAMENTO/Referencias/series.md`, `PLANEJAMENTO/Referencias/niveis_profundidade.md`, `PLANEJAMENTO/Referencias/niveis.md`, `PLANEJAMENTO/Referencias/objetivos_aprendizagem.md`
