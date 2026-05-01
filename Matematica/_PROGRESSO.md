# Progresso da Disciplina — Matemática 1

> ⚠️ **PAUSA — TROCA DE COMPUTADOR (2026-05-01)**
> Felipe vai trocar de máquina. Continuidade da produção será na nova máquina.
> **Próximo capítulo:** Cap 2 da Un 4 do 4º ano — Frações Unitárias.
> **Checklist de migração** (skills, sub-agente, memórias) em `~/.claude/projects/-Users-feliperosamini-conteudos-prontos/memory/project_pausa_troca_computador.md`.
> Para retomar na nova máquina: confirmar que `autor-matematica-1` (skill) e `validador-matematica-1` (agente) estão disponíveis, depois rodar `/autor-matematica-1 4ano unidade-4-fracoes-decimais-e-plano-cartesiano`.

> Arquivo de memória de trabalho. Sempre que abrir uma nova sessão para esta disciplina, **leia este arquivo primeiro**, depois `_autor/memoria-autor.md` (especialmente a seção `## Cache de validações`).

**Última atualização:** 2026-05-01 (skill `autor-matematica-1` criada + Cap 1 da Un 4 do 4º ano entregue + **PAUSA para troca de computador**)
**Skill responsável:** `autor-matematica-1` (em `~/.claude/skills/autor-matematica-1/SKILL.md`)
**Validador:** `validador-matematica-1` (em `~/.claude/agents/validador-matematica-1.md`)

---

## Status atual

**1 capítulo validado pela skill** — Cap 1 da Un 4 do 4º ano (Propriedades das Operações).

```
✅ 4º ano — Un 4 (Frações, Decimais e Plano Cartesiano) — 1/6 caps
   └─ Cap 1: Propriedades das Operações
```

**Pendentes na Un 4 do 4º ano:** Cap 2 (Frações Unitárias), Cap 3 (Números Decimais), Cap 4 (Malha Quadriculada), Cap 5 (Introdução ao Plano Cartesiano), Cap 6 (Representações e Trajetos).

**Disciplina inteira:** 8 unidades por série × 9 séries (4º ano EF1 → 2ª série EM) — produção dependente dos blueprints disponíveis em `_blueprints/`.

---

## Histórico das atualizações

| Data | Capítulos | Marco |
|---|---|---|
| 2026-05-01 | 0 (setup) | Skill `autor-matematica-1` criada; sub-agente `validador-matematica-1` criado; cache de validações inicializado em `_autor/memoria-autor.md` |
| 2026-05-01 | +1 (4º ano, Un4, Cap1) | Propriedades das Operações. Robert Recorde confirmado via Perplexity (c. 1510–1558, *Whetstone of Witte* 1557). Provérbios 10:9 ARA validado. 12 cálculos passo-a-passo verificados manualmente. **Todas as entradas adicionadas ao Cache de validações.** |

---

## Cobertura por faixa pedagógica

| Faixa | Anos/Séries | Característica | Modelo de referência |
|---|---|---|---|
| **EF1 anos finais** | 4º, 5º | Linguagem simples, exemplos cotidianos, **Opção B** (expressão + resultado em LaTeX simples). SEM bloco "Fórmulas do capítulo" | `_autor/modelo-ef2.md` (calibração mais simples) |
| **EF2 inicial** | 6º, 7º | Transição concreto → abstrato; vocabulário matemático introduzido gradualmente. SEM bloco "Fórmulas do capítulo" | `_autor/modelo-ef2.md` |
| **EF2 final** | 8º, 9º | Álgebra consolidada; passo a passo completo. **COM** bloco "Fórmulas do capítulo" | `_autor/modelo-ef2.md` |
| **EM** | 1ª, 2ª série | Formalismo matemático; conexões com vestibulares/ENEM. **COM** bloco "Fórmulas do capítulo" | `_autor/modelo-em.md` |

---

## Cache de validações (resumo)

> Detalhe completo em `_autor/memoria-autor.md` § "Cache de validações". Atualize sempre que o validador retornar novas entradas.

| Categoria | Itens em cache |
|---|---|
| Fórmulas e identidades | 0 |
| Cálculos passo-a-passo | 12 (do Cap 1) |
| Personagens / dados históricos | 1 (Robert Recorde) |
| Versículos confirmados (ARA) | 1 (Provérbios 10:9) |

**Cache cresce a cada capítulo** — quanto mais validado, menos chamadas Perplexity nos próximos. Provérbios 10:9 e Robert Recorde já não precisam de re-pesquisa em capítulos futuros.

---

## Validações automáticas (16 regras — ver skill + `_autor/CLAUDE.md`)

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
16. **Validador `validador-matematica-1` rodado e aprovado**

---

## Estrutura de pastas

```
/Users/feliperosamini/conteudos-prontos/Matematica/
├── CLAUDE.md                                ← contexto de projeto
├── _PROGRESSO.md                            ← este arquivo (memória de continuidade)
├── _autor/                                  ← config editorial
│   ├── prompt-autor.md
│   ├── CLAUDE.md
│   ├── memoria-autor.md                    ← inclui Cache de validações
│   ├── modelo-ef2.md
│   ├── modelo-em.md
│   └── scripts/criar_capitulos.sh
├── _blueprints/<ano>/<unidade>/             ← origem (puxado manualmente)
└── <ano>/<unidade>/                         ← SAÍDA
    └── capitulo_NN_<slug>.md
```

---

## Como rodar

```
/autor-matematica-1 <ano> <unidade>
```

**Exemplos:**
- `/autor-matematica-1 4ano unidade-4-fracoes-decimais-e-plano-cartesiano`
- `/autor-matematica-1 9ano` → lista unidades disponíveis

---

## Próximos passos

1. Cap 2 da Un 4 do 4º ano (Frações Unitárias) — em sequência
2. Após cada capítulo aprovado, validador roda e cache é atualizado
3. Ao fechar a Un 4 do 4º ano (6/6), avaliar próximo: Un 5 do 4º ano ou Un 4 do 5º ano (paridade entre séries)
