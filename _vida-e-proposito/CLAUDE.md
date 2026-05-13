# CLAUDE.md — Projeto Vida e Propósito

Este arquivo é a memória central do projeto. Leia-o antes de qualquer tarefa.

---

## Identidade do Projeto

**Apostila:** Vida e Propósito  
**Escola:** Colégio Eleve — escola cristã evangélica, Ribeirão Preto (SP)  
**Público:** Ensino Fundamental I (1º ao 5º ano) até Ensino Médio (1ª a 3ª série)  
**Disciplina:** Educação Cristã  
**Responsável:** Felipe Rosa (administrador e coordenador pedagógico)

---

## Estrutura do Projeto

```
projeto/
├── CLAUDE.md                      ← este arquivo (leia primeiro)
├── guia-do-autor.md               ← estrutura completa, regras e workflow
│
├── unidades-por-ano/
│   ├── 1ano.md
│   ├── 2ano.md
│   ├── 3ano.md
│   ├── 4ano.md
│   ├── 5ano.md
│   ├── 6ano.md
│   ├── 7ano.md
│   ├── 8ano.md
│   ├── 9ano.md
│   ├── 1serie-medio.md
│   ├── 2serie-medio.md
│   └── 3serie-medio.md
│
├── frameworks/
│   ├── 1ano/
│   ├── 2ano/
│   ├── 3ano/
│   ├── 4ano/
│   ├── 5ano/
│   ├── 6ano/
│   ├── 7ano/
│   ├── 8ano/
│   ├── 9ano/
│   ├── 1serie-medio/              ← u1-proposito.md, u2-honra.md ... u8-uniao.md
│   ├── 2serie-medio/
│   └── 3serie-medio/
│
└── conteudos-prontos/             ← unidades produzidas, organizadas por ano
    ├── 1ano/
    ├── 4ano/
    ├── 1serie-medio/              ← ex: u4-integridade.md
    └── ... (pasta criada automaticamente ao salvar)
```

---

## Naming Convention dos Frameworks

```
frameworks/[ano]/u[número]-[slug-do-tema].md
```

Exemplos reais da `1serie-medio/`:

| Arquivo | Tema |
|---|---|
| `u1-proposito.md` | Propósito |
| `u2-honra.md` | Honra |
| `u3-identidade.md` | Identidade |
| `u4-integridade.md` | Integridade |
| `u5-dignidade.md` | Dignidade |
| `u6-lealdade.md` | Lealdade |
| `u7-mordomia.md` | Mordomia |
| `u8-uniao.md` | União |

---

## Para Que Serve Cada Arquivo

| Arquivo / Pasta | O que contém | Quando ler |
|---|---|---|
| `guia-do-autor.md` | Estrutura da unidade, padrões de cada seção, boxes, estilo, workflow das 7 etapas | Antes de produzir qualquer unidade |
| `unidades-por-ano/[ano].md` | Resumo de todas as unidades do ano: temas, versículos, personagens, progressão | Quando receber solicitação de ano completo ou precisar de visão geral |
| `frameworks/[ano]/u[N]-[slug].md` | Framework detalhado: âncora pedagógica, tópicos, personagem, versículos, conexões | Antes de executar a etapa [3] conceito-didatico de cada unidade |

---

## Como Localizar o Framework da Unidade

O Claude Projects usa busca por relevância, não navegação direta de pasta. Se o caminho direto não funcionar, use esta sequência:

```
1. Pelo caminho:      frameworks/[ano]/u[N]-[slug].md
2. Pelo nome:         buscar arquivo cujo nome contém u[N]-[slug]
3. Pelo metadado:     buscar arquivo com  ano: [ano] + unidade: [N] + tema: [slug]
4. Pelo título:       buscar FRAMEWORK — [TEMA]  ou  U[N]: [TEMA]
```

Se após todas as tentativas não localizar, avisar o usuário e pedir o nome exato do arquivo.

**Template de cabeçalho obrigatório em todos os frameworks:**
```
---
tipo: framework
ano: [ano]
unidade: [N]
tema: [slug-do-tema]
arquivo: u[N]-[slug-do-tema]
---
```

Exemplos reais:
```
---
tipo: framework
ano: 1serie-medio
unidade: 4
tema: integridade
arquivo: u4-integridade
---
```

---

## Como Navegar para Encontrar o Arquivo Certo

```
1. Qual ano/série foi solicitado?
   → Identifica a pasta correta em frameworks/

2. Solicitação de ano completo ou unidade avulsa?
   → Ano completo: leia primeiro unidades-por-ano/[ano].md
   → Unidade avulsa: vá direto ao framework

3. Qual unidade dentro do ano?
   → Leia frameworks/[ano]/u[N]-[slug].md antes da etapa [3]
```

**Exemplos:**

```
"Produzir Unidade 4 — Integridade, 1ª série EM"
→ frameworks/1serie-medio/u4-integridade.md

"Todas as unidades do 7º ano"
→ unidades-por-ano/7ano.md → lista → aguarda aprovação
→ para cada unidade: frameworks/7ano/u[N]-[slug].md antes da etapa [3]

"Unidade 2 — Honra, 1ª série EM"
→ frameworks/1serie-medio/u2-honra.md
```

---

## Ordem de Leitura por Tarefa

### Unidade avulsa
1. `CLAUDE.md`
2. `guia-do-autor.md`
3. `frameworks/[ano]/u[N]-[slug].md`

### Ano completo
1. `CLAUDE.md`
2. `guia-do-autor.md`
3. `unidades-por-ano/[ano].md`
4. `frameworks/[ano]/u[N]-[slug].md` — para cada unidade, antes da etapa [3]

---

## Regra de Salvamento

Após produzir cada unidade:
1. Verificar se a pasta `conteudos-prontos/[ano]/` existe
2. Se não existir, criar a pasta antes de salvar
3. Salvar o arquivo como `conteudos-prontos/[ano]/u[N]-[slug-do-tema].md`

Exemplos:
- `conteudos-prontos/1serie-medio/u4-integridade.md`
- `conteudos-prontos/7ano/u2-honra.md`

---

## Regras Críticas

- **Workflow obrigatório:** declare o nome da etapa antes de executar — [1] pesquisa-atual → [2] gancho-narrativo → [3] conceito-didatico → [4] narrativa-personagem → [5] aplicacao-pratica → [6] conclusao-capitulo → [7] revisao-capitulo
- **Uma unidade por vez:** aguardar aprovação antes de avançar para a próxima
- **Âncora pedagógica:** o `## 1` do Explorando o Tema sempre abre com a conexão à disciplina escolar definida no framework da unidade
- **Personagem:** 5 headings fixos obrigatórios em ordem — `### Quem era [nome]?` / `### O que ele fez?` / `### Como isso se conecta com [tema]?` / `### O que isso tem a ver comigo?` / `### 🤝 Da história para a minha vida`
- **Sem seção standalone:** o conteúdo de aplicação prática vive dentro de `### 🤝 Da história para a minha vida` — nunca como seção separada
- **Entregar só o Markdown:** sem comentários sobre a estrutura ao final

---

## Contexto Pedagógico

- A apostila segue **progressão espiral** — cada ano aprofunda os mesmos valores centrais com complexidade crescente
- Conteúdo cristão **integrado ao fluxo** do texto — versículos como parte da argumentação, nunca como citação decorativa
- Cada unidade tem uma **âncora pedagógica** — disciplina escolar que serve de fio condutor entre o conteúdo acadêmico e o tema de Educação Cristã
- O personagem bíblico é definido no framework da unidade — não escolher outro sem verificar
