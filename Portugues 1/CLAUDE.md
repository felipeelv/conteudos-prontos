# CLAUDE.md — Português 1 (Língua Portuguesa)

> Contexto de projeto carregado automaticamente pelo Claude Code quando aberto nesta pasta.
> Sempre que iniciar uma nova sessão aqui, **leia também `_PROGRESSO.md`** (estado atual) e **`_autor/memoria-autor.md`** (correções editoriais aprovadas) antes de produzir qualquer capítulo.

---

## 1. O que é este projeto

Pipeline de produção de **capítulos finais** de **Língua Portuguesa (Análise Linguística)** para o material didático do Colégio Eleve. Cobre **9 séries**: 4º ao 9º ano EF + 1ª, 2ª e 3ª série EM.

- **Disciplina:** Português 1 — Língua Portuguesa
- **Sub-disciplina:** P1 (Análise Linguística — gramática, sintaxe, ortografia, variação)
- **NÃO cobre:** Literatura (P2). Para Literatura, use a futura skill `autor-portugues-2`.
- **Identidade editorial:** material **expositivo** (definição → exemplos → tabela). Exercícios moram em **outro material** (caderno de atividades, plataforma).

## 2. Como rodar

```
/autor-portugues-1 <ano> <unidade>
```

**Exemplos:**
- `/autor-portugues-1 4ano unidade-4-verbos` → gera os capítulos da Un 4 do 4º ano
- `/autor-portugues-1 6ano` → lista unidades disponíveis e pergunta qual

**Skill responsável:** `~/.claude/skills/autor-portugues-1/SKILL.md`

## 3. Estrutura de pastas

```
/Users/feliperosamini/conteudos-prontos/Portugues 1/
├── CLAUDE.md                                ← este arquivo (contexto de projeto)
├── _PROGRESSO.md                            ← memória de continuidade entre sessões (LER PRIMEIRO)
├── _autor/                                  ← config editorial (NÃO ALTERAR estrutura)
│   ├── prompt-autor.md                     ← fonte de verdade absoluta para forma
│   ├── CLAUDE.md                           ← regras invioláveis específicas da disciplina
│   ├── memoria-autor.md                    ← correções factuais aprovadas + diretrizes
│   ├── modelo-ef2.md                       ← capítulo-modelo (4º–9º ano)
│   ├── modelo-em.md                        ← capítulo-modelo (1ª–3ª série EM)
│   ├── referencia-regras-ortograficas.md
│   └── referencia-exemplos-linguagem.md
├── _blueprints/                             ← origem (puxado manualmente)
│   └── <ano>/<unidade>/
│       ├── blueprint_unidade.md
│       └── blueprint_capitulo_NN_*.md
└── <ano>/<unidade>/                         ← SAÍDA (capítulos finais)
    └── capitulo_NN_<slug>.md
```

**Convenção de naming na saída:** `capitulo_NN_<slug>.md` — mesmo slug do blueprint, sem o prefixo `blueprint_`.

## 4. Estado atual (2026-05-01)

**23 capítulos validados pela skill `autor-portugues-1`** — Unidade 4 completa em todas as 9 séries.

| Série | Unidade | Caps |
|---|---|---|
| 4º ano | Verbos | 2 |
| 5º ano | Preposições, Interjeições, Conjunções | 3 |
| 6º ano | Adjetivo, Numeral, Coesão | 3 |
| 7º ano | Verbo: Classificação e Modos | 4 |
| 8º ano | Introdução à Sintaxe | 2 |
| 9º ano | Período Composto | 3 |
| 1ª EM | Estrutura/Formação de Palavras | 2 |
| 2ª EM | Crase | 2 |
| 3ª EM | Or. Subordinadas Adverbiais | 2 |

**Pendente:** Unidades 1, 2, 3, 5-8 em todas as séries (dependem de blueprints upstream em `~/material-blueprints/`).

Histórico completo em `_PROGRESSO.md`.

## 5. Hierarquia de fontes (ordem de consulta antes de produzir)

A skill já automatiza isso, mas o ordering é importante:

1. **`_PROGRESSO.md`** — estado atual, padrões aprovados acumulados
2. **`_autor/prompt-autor.md`** — forma, estrutura, estilo (fonte de verdade)
3. **`_autor/CLAUDE.md`** — regras invioláveis específicas
4. **`_autor/memoria-autor.md`** — correções factuais já aplicadas (evitar repetir erros)
5. **`_autor/modelo-ef2.md`** (4º–9º) ou **`modelo-em.md`** (1ª–3ª EM) — referência de tom
6. **`_autor/referencia-exemplos-linguagem.md`** — calibração por série
7. **`_autor/referencia-regras-ortograficas.md`** — validação ortográfica
8. **`_blueprints/<ano>/<unidade>/`** — blueprint da unidade + blueprints dos capítulos

**Regra:** quando blueprint conflitar com `prompt-autor.md` ou `CLAUDE.md`, vence o documento editorial. Blueprint é insumo, não autoridade.

## 6. Estrutura fixa do capítulo (resumo)

```
# CAPÍTULO X — TEMA
---
## ESTUDO DA LÍNGUA
## ***[Pergunta-problema]***
[Parágrafo de abertura — 2 frases, sem antecipação]
## 1. … ## 2. … ## 3. … ## 4. (máximo 4 tópicos numerados)
---
## A LÍNGUA NO DIA A DIA   (≤2 frases)
---
## E A BÍBLIA NISSO?         (1 versículo + 1-2 frases + > 💬 Para Conversar)
---
## Simplificando            (≤2 frases)
## Para não esquecer         (exatamente 3 bullets)
```

## 7. Aprendizados-chave da produção

Princípios consolidados durante a sessão de produção da Un 4 (2026-05-01):

1. **Verificação Linguística (Passo 4.5) é obrigatória** — Perplexity capturou erros factuais em **16 de 23 capítulos (70%)**: datas erradas de gramáticos, vínculos institucionais, ano de obras, até existência de personagens. Sem o passo, esses erros iriam para a publicação.

2. **Blueprints não são fonte autoritativa para fatos biográficos.** A seção 9 (Distribuição dos capítulos) e a 12 (Referências) precisam de validação cruzada via Perplexity antes da produção.

3. **Padrão de abertura varia por faixa:**
   - **4º–7º ano:** narrativa concreta (cena curta com personagem)
   - **8º–9º ano:** mista (cena breve OU afirmação direta)
   - **1ª–3ª série EM:** analítica direta (sem narrativa)

4. **Conflito blueprint × estrutura:** quando o blueprint pede 5+ tópicos numerados (limite da skill é 4) ou seções extras ("Sua Parte", "Esse foi o cara", "Curiosidade"), aplicar a hierarquia de autoridade — embute, descarta ou compacta. Estrutura editorial sempre vence.

5. **Apresentar mudanças antes de aplicar** (regra do Felipe): mesmo em modo auto, mostrar diff/lista antes de sincronizar skill ou deletar paths.

6. **Captura iterativa de padrões:** após cada capítulo aprovado, perguntar se há padrão a registrar em `_autor/memoria-autor.md`. A skill cresce a cada produção.

## 8. Idioma

Sempre em **português brasileiro**. Material é em pt-BR; nomenclatura gramatical segue tradição brasileira (Bechara, Cunha & Cintra).

## 9. Antes de cada produção (checklist mínimo)

- [ ] Li `_PROGRESSO.md` para conhecer o estado atual
- [ ] Li `_autor/memoria-autor.md` para evitar erros já corrigidos
- [ ] Li o `blueprint_unidade.md` da unidade-alvo
- [ ] Li o `blueprint_capitulo_NN_*.md` específico
- [ ] Identifiquei a faixa do aluno e o modelo de tom (`modelo-ef2.md` ou `modelo-em.md`)
- [ ] Tenho lista de capítulos para produção aprovada pelo usuário (modo padrão = 1 por vez)

## 10. Após cada produção (atualização de memória)

- Atualizar **`_PROGRESSO.md`** (nova linha em "Histórico das atualizações" + status atual + data)
- Atualizar **`_autor/memoria-autor.md`** se houve correção factual ou regra editorial nova
- Se a regra é **inviolável**, atualizar também **`_autor/CLAUDE.md`** (regras invioláveis)
- Sempre **confirmar antes de gravar** alterações em `memoria-autor.md` ou `CLAUDE.md`

## 11. Quando NÃO usar a skill `autor-portugues-1`

- **Literatura (Português 2)** → futura skill `autor-portugues-2`
- **Frameworks de unidade** (estrutura curricular antes do blueprint) → skill `framework-unidade-portugues`
- **Outras disciplinas** → skill `autor-<disciplina>` correspondente
- **Listas de exercícios** → esta skill produz capítulo conceitual expositivo, não exercícios

## 12. Referências

- **Skill:** `~/.claude/skills/autor-portugues-1/SKILL.md`
- **Repo de blueprints:** `~/material-blueprints/` (sincronização manual sob demanda)
- **Skill de framework:** `~/.claude/skills/framework-unidade-portugues/SKILL.md`
- **CLAUDE.md global do home:** `~/CLAUDE.md` (contexto multi-projeto)
