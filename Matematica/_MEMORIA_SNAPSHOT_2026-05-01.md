# SNAPSHOT DE MEMÓRIA — Matemática 1

> **Gerado em:** 2026-05-01
> **Por que existe:** Felipe está continuando a produção em outra máquina/sessão. Este arquivo é o estado completo do projeto até este ponto, autocontido, para ser lido em qualquer ambiente sem depender de memória externa do Claude Code.
> **Como usar:** abrir este arquivo na nova máquina/sessão antes de produzir qualquer capítulo. Ele substitui (em portabilidade) a leitura de `_PROGRESSO.md` + `_autor/memoria-autor.md` + `_autor/CLAUDE.md`.

---

## 1. Onde paramos

- **Disciplina:** Matemática 1 (aritmética, álgebra, conjuntos, funções) — 4º ano EF1 → 2ª série EM.
- **NÃO cobre:** Estatística e Educação Financeira (essa é Matemática 3 — `autor-estatistica`).
- **Capítulos validados nesta máquina:** **1**
  - `4ano/unidade-4-fracoes-decimais-e-plano-cartesiano/capitulo_01_propriedades-das-operacoes.md` (Propriedades das Operações)
- **Próximo planejado:** Cap 2 da Un 4 do 4º ano — **Frações Unitárias**.
- **Disciplina inteira:** 8 unidades × 9 séries — produção dependente dos blueprints disponíveis em `_blueprints/`.

### Blueprints presentes para a Un 4 do 4º ano

```
_blueprints/4ano/unidade-4-fracoes-decimais-e-plano-cartesiano/
├── blueprint_unidade.md
├── blueprint_capitulo_01_propriedades-das-operacoes.md   ✅ produzido
├── blueprint_capitulo_02_fracoes-unitarias.md            ⏳ próximo
├── blueprint_capitulo_03_numeros-decimais.md
├── blueprint_capitulo_04_malha-quadriculada.md
├── blueprint_capitulo_05_introducao-ao-plano-cartesiano.md
└── blueprint_capitulo_06_representacoes-e-trajetos.md
```

### Pastas de saída já criadas (vazias até aqui)

```
4ano  5ano  6ano  7ano  8ano  9ano  1serie  2serie  3serie
```

---

## 2. Como retomar a produção

### Pipeline normal (com skill)

```
/autor-matematica-1 4ano unidade-4-fracoes-decimais-e-plano-cartesiano
```

A skill `autor-matematica-1` (em `~/.claude/skills/autor-matematica-1/SKILL.md`) e o sub-agente `validador-matematica-1` (em `~/.claude/agents/validador-matematica-1.md`) precisam estar disponíveis na máquina.

### Pipeline manual (sem a skill, fallback)

1. Ler `_autor/prompt-autor.md` (forma) + `_autor/CLAUDE.md` (regras invioláveis) + este snapshot.
2. Ler `_blueprints/4ano/unidade-4.../blueprint_unidade.md` e o blueprint do capítulo-alvo.
3. Produzir capítulo seguindo as regras da §3 deste snapshot.
4. Validar contra as 16 regras da §6.
5. Salvar em `4ano/unidade-4-fracoes-decimais-e-plano-cartesiano/capitulo_NN_<slug>.md`.
6. Atualizar a §1 e a §5 deste snapshot e o `_PROGRESSO.md`.

---

## 3. Identidade editorial (resumo executivo)

Material **expositivo-aplicado**: conceito → explicação → exemplo resolvido. Os exercícios resolvidos servem para o aluno **ver a progressão do cálculo**, não para praticar (a prática vive em outro material — não há `## Praticando`).

### Estrutura fixa de cada capítulo

```
# CAPÍTULO X — TEMA

## INTRODUÇÃO
[máx. 3 frases — direto ao ponto, NUNCA "Neste capítulo vamos…"]

> 💭 **Pense um pouco:**
> [pergunta conectando o tema ao aluno]

---

## 1. [TÓPICO]
### [Conceito / Subtópico]
[explicação direta — máx. 2 frases antes de lista]

[frase de transição] (ex.: "Veja o exemplo abaixo.", "Olhe o exemplo abaixo.", "Veja só:")

[Enunciado]

**Resolução:**
- **Passo 1:** ...
- **Passo 2:** ...

**Resposta:** ...

## 2. [TÓPICO]
## 3. [TÓPICO]
[sem teto rígido em Matemática]

---

## NA VIDA REAL
[máx. 2 frases]

---

## E A BÍBLIA NISSO?
<center>
**"versículo." — Referência**
</center>

[1-2 frases conectando — SEM analogia explícita "assim como X, Y"]

> 💬 **Para Conversar:** [pergunta]

---

## Simplificando
[máx. 2 frases densas — bloco final, NÃO incluir "Para não esquecer"]

---

## Fórmulas do capítulo   (apenas 8º ano em diante)
```

### Adaptação por série

| Faixa | Linguagem | Exemplos resolvidos | Bloco "Fórmulas do capítulo" |
|---|---|---|---|
| **4º–5º ano EF I** | Simples e concreta | **Opção B** — expressão + resultado em LaTeX simples (ex.: `$$14{,}60 + 3{,}47 = 18{,}07$$`), sem coluna a coluna | ❌ NÃO incluir |
| **6º–7º ano EF II** | Transição concreto → abstrato | Passo a passo com cada operação em linha separada | ❌ NÃO incluir |
| **8º–9º ano EF II** | Álgebra consolidada | Passo a passo: dados → fórmula → substituição → simplificações → resultado | ✅ INCLUIR |
| **1ª–2ª série EM** | Formalismo completo | Passo a passo com justificativa por etapa; conexões ENEM/vestibulares | ✅ INCLUIR |

---

## 4. Regras invioláveis (extrato)

### LaTeX (renderização CodeCogs/AutoLaTeX no Google Docs)

- ❌ Sem `\text{}` — usar `\mathrm{}`.
- ❌ Sem `\;`, `\,` (espaços fino/médio) — colar valores: `$$1\mathrm{km} = 1000\mathrm{m}$$`.
- ❌ Sem caracteres acentuados ou cedilha dentro de `$$...$$`. Apenas ASCII + comandos LaTeX. Rótulos com acento ficam fora do bloco.
- ❌ Sem `\begin{array}` ou estrutura multilinha em `$$...$$` — quebra renderização linha-a-linha.
- ❌ Sem `\qquad`, sem matrizes lado a lado.
- ❌ Sem `\left\{...\right\}` — usar `\{...\}` ou `\lbrace...\rbrace`.
- ✅ Vírgula decimal: `14{,}60` (com chaves).
- ✅ Intervalo aberto brasileiro: `]a, b[` (não `(a, b)`).

### Estrutura/estilo

- ❌ Nunca usar `### EXERCÍCIO RESOLVIDO` como rótulo — introduzir com frase natural.
- ❌ Nunca usar `*` em listas — sempre `-`.
- ❌ Nunca abrir introdução com "Neste capítulo vamos…".
- ❌ Nunca ultrapassar 3 frases na `## INTRODUÇÃO`, 2 frases em `## NA VIDA REAL` ou `## Simplificando`.
- ❌ Nunca compactar múltiplas operações na mesma linha em exemplo resolvido (EF II / EM).
- ❌ Nunca mais de 2 boxes por seção — e só quando um for 🔢 Padrão e outro for ⚠️ Atenção.
- ❌ Nunca criar `## Praticando` — esta disciplina não tem.
- ❌ Nunca colocar `> 💬 **Para Conversar:**` fora de `## E A BÍBLIA NISSO?`.

---

## 5. Cache de validações (REUSÁVEL — não pesquisar de novo)

> Itens já validados nesta produção. Em capítulos futuros, **reuse sem repetir chamada Perplexity**.

### Versículos confirmados (ARA — Almeida Revista e Atualizada)

| Referência | Tradução exata | Onde foi usado | Data |
|---|---|---|---|
| Provérbios 10:9 | "Quem anda em integridade anda seguro, mas o que perverte os seus caminhos será conhecido." | 4ano/Un4/Cap1 | 2026-05-01 |

### Personagens / dados históricos validados

| Item | Fato validado | Fonte | Onde | Data |
|---|---|---|---|---|
| Robert Recorde | Matemático galês, c. 1510–1558. Inventou o sinal de igualdade `=` em *The Whetstone of Witte* (1557). | Perplexity (Wikipedia EN/PT, MacTutor, Britannica) | 4ano/Un4/Cap1 | 2026-05-01 |

### Cálculos passo-a-passo verificados (4ano/Un4/Cap1)

| Cálculo | Status |
|---|---|
| `(2+3) · 4 = 5 · 4 = 20` | ✅ |
| `(8-3) · 2 = 5 · 2 = 10` | ✅ |
| `(4+2) · 3 = 6 · 3 = 18` | ✅ |
| `4 + 2 · 3 = 4 + 6 = 10` | ✅ (precedência: × antes de +) |
| `3 · (2+5) = 3 · 7 = 21` | ✅ |
| `3 · 2 + 3 · 5 = 6 + 15 = 21` | ✅ (distributiva) |
| `4 · (3+2) = 4 · 5 = 20` | ✅ |
| `4 · 3 + 4 · 2 = 12 + 8 = 20` | ✅ (distributiva) |
| `5 · (10+4) = 5 · 14 = 70` | ✅ |
| `5 · 10 + 5 · 4 = 50 + 20 = 70` | ✅ (distributiva) |
| `2 · (6+3) = 2 · 9 = 18` | ✅ |
| `2 · 6 + 2 · 3 = 12 + 6 = 18` | ✅ (distributiva) |

### Fórmulas e identidades validadas

(nenhuma ainda — primeiro capítulo do 4º ano não usa fórmulas)

---

## 6. Validações automáticas (16 regras)

Toda capítulo, antes de salvar:

1. Sem `\text{}` em LaTeX
2. Sem `\;` ou `\,` em LaTeX
3. Sem `\qquad` ou `\begin{array}` em LaTeX
4. Sem caracteres acentuados dentro de `$$...$$`
5. Sem `\left\{...\right\}` (preferir `\{...\}`)
6. Sem heading `### EXERCÍCIO RESOLVIDO`
7. Sem `## Praticando`, `## 🤝 Sua Parte`, `## Atividades`
8. Sem marcador `*` em listas (apenas `-`)
9. Headings pós-conteúdo na ordem: `## NA VIDA REAL` → `## E A BÍBLIA NISSO?` → `## Simplificando`
10. `## E A BÍBLIA NISSO?` com versículo em `<center>` + `> 💬 **Para Conversar:**`
11. Box `> 💭 **Pense um pouco:**` presente após `## INTRODUÇÃO`
12. `## Fórmulas do capítulo` para 8ano/9ano/1serie/2serie; ausente em 4ano/5ano/6ano/7ano
13. Introdução com ≤ 3 frases
14. `## NA VIDA REAL` com ≤ 2 frases
15. `## Simplificando` com ≤ 2 frases
16. **Validador `validador-matematica-1` rodado e aprovado** (cálculos + fórmulas + dados históricos + versículo)

---

## 7. Hierarquia de fontes (ordem de consulta antes de produzir)

1. **Este snapshot** — visão portátil
2. **`_PROGRESSO.md`** — estado oficial atualizado nesta máquina
3. **`_autor/prompt-autor.md`** — fonte de verdade absoluta para forma
4. **`_autor/CLAUDE.md`** — regras invioláveis específicas
5. **`_autor/memoria-autor.md`** — contexto + Cache de validações detalhado
6. **`_autor/modelo-ef2.md`** (4º–9º) ou **`_autor/modelo-em.md`** (1ª–2ª EM) — referência de tom
7. **`_blueprints/<ano>/<unidade>/`** — blueprints (insumo, não autoridade — quando blueprint conflita com regra editorial, **vence a regra**)

---

## 8. Aprendizados-chave acumulados

1. **Validador `validador-matematica-1` é obrigatório** no Passo 4.5 — captura erros aritméticos e dados históricos errados antes da publicação.
2. **Cache de validações economiza tempo.** Provérbios 10:9, Robert Recorde — validados uma vez, reusados sempre nesta disciplina.
3. **Blueprints não são fonte autoritativa para fatos biográficos.** O validador frequentemente captura imprecisões biográficas vindas do blueprint.
4. **EF1 usa formato Opção B** — expressão e resultado em uma linha LaTeX, sem detalhamento coluna a coluna.
5. **EF2 e EM usam passo a passo** — cada operação em sua linha; sequência: dados → fórmula com símbolos → substituição → cada simplificação → resultado.
6. **Apresentar mudanças antes de aplicar** (regra do Felipe): mostrar diff/lista antes de adicionar entradas ao cache ou alterar `memoria-autor.md`/`CLAUDE.md`.

---

## 9. Quando voltar para esta máquina

Se a continuação foi feita em outro lugar:

1. **Trazer os capítulos novos** para `<ano>/<unidade>/capitulo_NN_<slug>.md`.
2. **Atualizar este snapshot** (§1 contagem + tabela de blueprints, §5 cache cresce com novas validações).
3. **Atualizar `_PROGRESSO.md`** (Histórico das atualizações + Status atual).
4. **Atualizar `_autor/memoria-autor.md`** § Cache de validações com qualquer entrada nova.
5. **Confirmar antes de gravar** cada uma dessas atualizações.

---

## 10. Referências externas

- Skill: `~/.claude/skills/autor-matematica-1/SKILL.md`
- Validador: `~/.claude/agents/validador-matematica-1.md`
- Plugin: `~/conteudos-prontos/plugins/autor-eleve/` (v0.7.0, 3 skills ativas — autor-matematica-1 não está no plugin ainda)
- Blueprints upstream: `~/material-blueprints/`
- CLAUDE.md global do home: `~/CLAUDE.md`
