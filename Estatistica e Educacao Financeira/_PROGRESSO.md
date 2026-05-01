# Progresso da Disciplina — Estatística e Educação Financeira

> Arquivo de memória de trabalho. Sempre que abrir uma nova sessão para esta disciplina, **leia este arquivo primeiro**, depois `_autor/memoria-autor.md`.

**Última atualização:** 2026-05-01 (Unidade 4 fechada em 100% das séries — 20 capítulos)
**Skill responsável:** `autor-estatistica` (em `~/.claude/skills/autor-estatistica/SKILL.md`)

---

## Status atual

**20 capítulos validados em 10/10** — Unidade 4 fechada em **todas as 7 séries** (100% do que está disponível para produção no repositório `material-blueprints`).

```
✅ 6º ano — unidade-4-media-aritmetica-e-probabilidade (3 caps)
✅ 7º ano — unidade-4-construcao-e-interpretacao-de-graficos (4 caps)
✅ 8º ano — unidade-4-escalas-e-aplicacoes-praticas (3 caps)
✅ 9º ano — unidade-4-educacao-financeira-credito-e-consumo (4 caps)
✅ 1ª série EM — unidade-4-medidas-de-tendencia-central-e-educacao-financeira (2 caps)
✅ 2ª série EM — unidade-4-educacao-financeira-juros-compostos (2 caps)
✅ 3ª série EM — unidade-4-sistemas-de-amortizacao-e-analise-de-investimentos (2 caps)
```

**Pendente:** as outras 49 unidades inteiras (unidades 1, 2, 3, 5-8 em todas as séries) **ainda não têm blueprints escritos** no repositório `material-blueprints` — produção dependente da escrita dos blueprints upstream.

---

## Histórico das atualizações

| Data | Capítulos | Marco |
|---|---|---|
| 2026-05-01 (manhã) | 13 capítulos (5 séries) | Skill consolidada com 8 regras editoriais |
| 2026-05-01 (tarde) | +4 capítulos (7º ano) | Capítulos do plugin `autor-eleve` integrados após correção de acentos |
| 2026-05-01 (tarde) | +3 capítulos (8º ano) | **Unidade 4 fechada em 100% — todas as 7 séries** |

---

## Cobertura por faixa pedagógica

| Faixa | Séries | Característica formal | Tipo de exemplo |
|---|---|---|---|
| **A — EF2 inicial** | 6º, 7º | regras próprias (parágrafos curtos, exemplo antes do conceito) | cotidiano construído (mesada, jogo, rifa, boletim) |
| **B — EF2 final + EM básico/avançado** | 8º, 9º, 1ª, 2ª, 3ª série | **estrutura unificada** (mesma forma) | dado real adequado à idade (Perplexity) |

A diferenciação entre 8º e 3ª série está no **tipo de exemplo/notícia**, não na estrutura formal. Profundidade matemática vem do blueprint, não da skill.

---

## 8 regras editoriais consolidadas

Documentadas com exemplos em `_autor/memoria-autor.md` (seção "Diretrizes editoriais aprovadas"). Resumo:

1. **Introdução narrativa** — tempo + ação + interlocutor (não só descrição)
2. **`## E A BÍBLIA NISSO?` compacta** — versículo + transição (2 frases) + 1 bullet (frase de caráter) + Para Conversar — em ≤6 linhas
3. **Validação matemática do exemplo** — verificar sequência numérica do blueprint contra a tensão narrativa antes de produzir
4. **Padrão por subtópico** — passos numerados / definição+exemplo / afirmação+bullets / cálculo / checklist (UM padrão por subtópico, nunca misturar)
5. **Aterrissamento em blockquote** — retomada do caso narrativo central em `>` simples (sem emoji/título)
6. **Estrutura unificada 8º-3ª série** — diferenciação por idade do exemplo, não por estrutura formal
7. **Validação via Perplexity** — `mcp__perplexity__perplexity_ask` antes de produzir capítulos do 8º+ (NA VIDA REAL, box `📊 Nos Números`, dados de introdução)
8. **Concisão geral** — Simplificando 1 frase, Para não esquecer com drops mnemônicos com sentido (não secos), explicações dos blocos sem rodeio

---

## 10 validações automáticas (rodadas em todo capítulo)

1. Sem `## Sua Parte` (proibido — fica em outro material)
2. Sem emoji em headings `##` ou `###`
3. Sem `\text{}` em LaTeX (usar `\mathrm{}`)
4. Sem caracteres acentuados dentro de `$$...$$`
5. Headings pós-conteúdo presentes na ordem: `NA VIDA REAL` → `E A BÍBLIA NISSO?` → `Simplificando` → `Para não esquecer`
6. `Para não esquecer` com exatamente 3 bullets
7. `E A BÍBLIA NISSO?` contém `> 💬 **Para Conversar:**`
8. `Simplificando` com ≤ 2 frases (preferencialmente 1)
9. Sem `## NA PRÁTICA` (removido do projeto)
10. **Sem `## Fórmulas do capítulo`** (removido do projeto, vale para todas as séries)

---

## Estrutura de pastas

```
~/conteudos-prontos/Estatistica e Educacao Financeira/
├── _PROGRESSO.md                 ← este arquivo
├── _autor/
│   ├── prompt-autor.md           ← manual editorial (estrutura, estilo, LaTeX)
│   ├── CLAUDE.md                 ← regras invioláveis
│   └── memoria-autor.md          ← 8 regras editoriais aprovadas + decisões
├── _blueprints/                  ← origem dos blueprints (cópia manual sob demanda)
│   ├── 6ano/.../blueprint_capitulo_*.md
│   ├── 7ano/...
│   ├── 8ano/...
│   ├── 9ano/...
│   ├── 1serie/...
│   ├── 2serie/...
│   └── 3serie/...
├── 6ano/<unidade>/capitulo_NN_*.md   ← capítulos finais (saída)
├── 9ano/<unidade>/...
├── 1serie/<unidade>/...
├── 2serie/<unidade>/...
└── 3serie/<unidade>/...
```

---

## Histórico breve da sessão (2026-05-01)

A skill `autor-estatistica` foi criada do zero nesta sessão a partir do prompt original do Felipe (testado no Workbench). A produção dos 13 capítulos consolidou as 8 regras editoriais — cada regra emergiu de uma observação de qualidade do Felipe sobre um capítulo gerado:

| Regra | Origem |
|---|---|
| 1 (introdução narrativa) | "introdução muito ruim, parece descrição" |
| 2 (Bíblia compacta) | "refazer mais condicionado, manter o formato" |
| 3 (validação matemática) | erro detectado pelo Felipe: notas 7,8,6,9,5 com média 7 contradizem "você nunca tirou 7" |
| 4 (padrão por subtópico) | "subtópico ficou solto, padronizar passos/bullets/parágrafo" |
| 5 (blockquote aterrissado) | "exemplo em blockquote como os boxes para diferenciar do explicativo" |
| 6 (estrutura unificada 8º-3ª) | "estrutura pode ser igual 8º até 3ª, muda só o tipo de notícia" |
| 7 (Perplexity) | "eu usava Perplexity para validar dados, não acha que seria necessário?" |
| 8 (concisão) | "Para não esquecer mais drop, Simplificando mais curto, Bíblia compacta" |

**Refinamento da regra 8** (drops com sentido) veio depois: drops nem secos demais ("**Mínimo:** 15% da fatura") nem descritivos demais — frases mínimas que carregam o ensinamento essencial ("**Mínimo:** pagar 15% acalma o mês mas alimenta a dívida").

**Decisão estrutural**: a seção `## Fórmulas do capítulo` foi **removida do projeto** (regra atualizada no SKILL.md, prompt-autor.md, CLAUDE.md). Fórmulas aparecem ao longo do texto.

---

## Como continuar (próxima sessão)

### Caminho A — produzir mais capítulos da disciplina

**Unidade 4 já está 100% completa** (20 capítulos em todas as 7 séries). Próximas unidades produzíveis dependem da escrita dos blueprints upstream no repositório `material-blueprints`.

**Quando novos blueprints forem publicados:** Felipe baixa manualmente os desejados em `_blueprints/<ano>/<unidade>/` e invoca a skill.

```
/autor-estatistica <ano> <unidade>
```

A skill carrega `_autor/memoria-autor.md` automaticamente — todas as 8 regras já estão ativas.

### Caminho B — replicar para outras 13 disciplinas

A skill `autor-estatistica` é template para criar `autor-matematica`, `autor-fisica`, `autor-quimica`, etc. Cada disciplina tem regras editoriais específicas (Português 2 não tem fórmulas LaTeX, Filosofia/Sociologia trabalham bimestres em vez de unidades, etc.). Replicar:

1. Criar `~/.claude/skills/autor-<disciplina>/SKILL.md` (copiar autor-estatistica como base)
2. Criar `~/conteudos-prontos/<Disciplina>/_autor/` com prompt-autor.md, CLAUDE.md, memoria-autor.md específicos
3. Copiar blueprints da disciplina para `_autor/_blueprints/`
4. Adaptar regras específicas (LaTeX só para exatas, ENEM em literatura, etc.)

### Caminho C — testar editorialmente os 13 capítulos prontos

Felipe pode revisar capítulo a capítulo, marcar ajustes finos (escolha de palavras, tom, exemplos alternativos). Os arquivos em `_autor/memoria-autor.md` capturam os padrões; refinamentos passam por lá.

---

## Particularidades operacionais

- **Blueprints sincronizados manualmente**: Felipe puxa do repositório `material-blueprints` (GitHub) só o que precisa produzir. Decisão deliberada — evita ter "conteúdo muito à frente" e mantém só o necessário.
- **Pasta `_blueprints/` (com underscore)** dentro de cada disciplina: cópia local dos blueprints da unidade que está sendo produzida.
- **Saída** vai em `<ano>/<unidade>/capitulo_NN_<slug>.md` (mesmo slug do blueprint, sem o prefixo `blueprint_`).
- **`autores-material/`** (em `~/`) tem a versão original dos prompts/CLAUDE de cada autor — é a fonte autoritativa que pode ser sincronizada para `_autor/` se houver atualização editorial.

---

## Modelo de capítulo (referência rápida)

Estrutura completa, em ordem:

```
# Capítulo X — TEMA
## [Pergunta-problema do cotidiano]
[Introdução narrativa — Cena → Tensão → Ponte (3-6 frases por série)]

> 💭 **Pense um pouco:**  [box de abertura, fora dos blocos numerados]
> [pergunta]

---

## 1. [Tópico principal]
[abertura: 1 frase direta]

### 1.1 [Subtópico]
[padrão único: passos / definição+exemplo / afirmação+bullets / cálculo / checklist]

### 1.2 [Subtópico]
[mesmo critério]

> [BOX 1 por seção principal — máximo: 1 box em ## 1]

---

## 2. [Tópico principal]
...
> [BOX 2]

## 3. ...
> [BOX 3]

## 4. ...
> [BOX 4]

---

## NA VIDA REAL
[2 frases — aplicação direta sem introdução nem conclusão]

---

## E A BÍBLIA NISSO?
> "[versículo curto]" (Referência)

[Transição em 2 frases — declara princípio VP, não descreve cálculo]

- **[Frase de caráter em negrito.]** [explicação 1 frase + (referência)]

> 💬 **Para Conversar:**
> [pergunta amarrada na vida real do aluno]

---

## Simplificando
[1 frase comprimida — síntese do arco do capítulo]

---

## Para não esquecer
- **[Termo]:** [drop com sentido — frase mínima com ensinamento essencial];
- **[Termo]:** ...;
- **[Termo]:** ...
```

---

## Lembrete crítico para próxima sessão

Antes de produzir qualquer capítulo, **leia em ordem**:
1. Este arquivo (`_PROGRESSO.md`)
2. `_autor/memoria-autor.md` (8 regras com exemplos)
3. `_autor/prompt-autor.md` (manual editorial completo)
4. `_autor/CLAUDE.md` (regras invioláveis)
5. `_blueprints/<ano>/<unidade>/blueprint_unidade.md`
6. `_blueprints/<ano>/<unidade>/blueprint_capitulo_NN_*.md`

A skill `autor-estatistica` faz isso automaticamente quando invocada — o workflow está documentado em `~/.claude/skills/autor-estatistica/SKILL.md`.
