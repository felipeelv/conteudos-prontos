# Progresso da Disciplina — Geografia (Ensino Médio)

> Arquivo de memória de trabalho. Sempre que abrir uma nova sessão para esta disciplina, **leia este arquivo primeiro**, depois `_autor/CLAUDE.md` e `_autor/prompt-autor.md`.

**Última atualização:** 2026-05-01 (skill criada — 0/24 unidades produzidas)
**Skill responsável:** `autor-eleve:autor-geografia` (em `plugins/autor-eleve/skills/autor-geografia/SKILL.md`, plugin v0.7.0)

---

## Escopo

Geografia do **Ensino Médio (1ª, 2ª e 3ª séries)** apenas. Conteúdo geográfico do Ensino Fundamental (1º–9º ano) é coberto por `autor-eleve:autor-estudos-sociais` (que integra Geografia + História + cidadania).

---

## Status atual

**0 capítulos validados pela skill.** A skill foi criada em 2026-05-01 a partir do template `autor-estudos-sociais`, com adaptações específicas de Geografia (estrutura com `## Explorando os Conceitos`, `## Você já pensou nisso?` como heading, `#### 📚 Curiosidade Geográfica` como H4, boxes de ancoragem espacial obrigatórios).

A pasta `_autor/` já vem com config consolidada de produções anteriores (fora do fluxo desta skill):

- `prompt-autor.md` — manual editorial completo (estrutura fixa, estilo, blocos pós-conteúdo)
- `CLAUDE.md` — regras invioláveis e validações
- `_shared/lib_common.sh` — funções compartilhadas
- `scripts/criar_capitulos.sh` — script local de produção (legado)

---

## Histórico das atualizações

| Data | Capítulos | Marco |
|---|---|---|
| 2026-05-01 | 0 (setup) | Skill `autor-geografia` criada no plugin `autor-eleve` (bump v0.6.0 → v0.7.0); validador ganhou bloco GEO1–GEO9; revisor-editorial.md ganhou seção Geografia; `_PROGRESSO.md` inicial gravado |

---

## Mapa de unidades (24 unidades — 8 por série)

### 1ª série EM (Geografia física e cartografia)

| Unidade | Título | Status |
|---|---|---|
| 1 | Introdução à Geografia | ⏳ |
| 2 | Cartografia | ⏳ |
| 3 | Geologia | ⏳ |
| 4 | Relevo e Hidrosfera | ⏳ |
| 5 | Clima | ⏳ |
| 6 | Hidrografia, Vegetação e Biomas | ⏳ |
| 7 | Questões Socioambientais Contemporâneas | ⏳ |
| 8 | População Mundial e Brasileira | ⏳ |

### 2ª série EM (Geografia humana e econômica)

| Unidade | Título | Status |
|---|---|---|
| 1 | Migrações Internacionais | ⏳ |
| 2 | População Brasileira (Aprofundamento) | ⏳ |
| 3 | Urbanização Mundial e Brasileira | ⏳ |
| 4 | Espaço Agrário e Conflitos | ⏳ |
| 5 | Geopolítica Mundial | ⏳ |
| 6 | Comércio Internacional | ⏳ |
| 7 | Indústria e Globalização | ⏳ |
| 8 | Energia, Transportes e Redes | ⏳ |

### 3ª série EM (Síntese — geopolítica e Brasil regional)

| Unidade | Título | Status |
|---|---|---|
| 1 | Região Norte | ⏳ |
| 2 | Regiões Nordeste e Centro-Oeste | ⏳ |
| 3 | Regiões Sudeste e Sul | ⏳ |
| 4 | Desigualdades Regionais e Integração Nacional | ⏳ |
| 5 | Geopolítica do Brasil | ⏳ |
| 6 | Desenvolvimento e Subdesenvolvimento | ⏳ |
| 7 | Ordem Mundial e Conflitos Atuais | ⏳ |
| 8 | Questões Ambientais Globais e Desafios do Século XXI | ⏳ |

---

## Padrões editoriais consolidados

> Esta seção cresce a cada capítulo aprovado. Após cada validação, capturar correções/calibrações novas (em `_autor/CLAUDE.md` se inviolável testável) e mover regras consolidadas para esta lista.

Pontos já fixados (do material editorial preexistente em `_autor/prompt-autor.md` e `_autor/CLAUDE.md`):

1. **Ancoragem espacial é não-negociável** — todo conceito vem amarrado a topônimo, escala ou paisagem real. Geografia que não localiza vira teoria abstrata.
2. **Tensão dado × leitura crítica integrada** — todo dado cartográfico aparece a serviço de uma leitura espacial; toda leitura crítica é ancorada em dado/lugar concreto.
3. **`## Explorando os Conceitos` é obrigatório** — diferente de Estudos Sociais, em Geografia esse heading separa a introdução narrativa do desenvolvimento conceitual.
4. **`## Você já pensou nisso?` permanece como heading** (não vira box `> 🤔` como em Estudos Sociais).
5. **`#### 📚 Curiosidade Geográfica` é H4** (não H2, não box) — único H4 do capítulo.
6. **Boxes de ancoragem espacial** (`📍 No Mapa`, `🌍 Em Escala`, `📊 Em Números`) — pelo menos 1 por capítulo.
7. **Geógrafo do `## Esse foi o "cara"`** = literal do blueprint (preferir Ratzel, Vidal de la Blache, Milton Santos, Aziz Ab'Sáber, Josué de Castro, Yi-Fu Tuan, Jean Tricart).
8. **Versículo de `## E para hoje...`** = literal do blueprint (preferir versículos sobre criação, mordomia da terra, justiça territorial, povos e nações).

---

## Validações automáticas (9 regras GEO — ver `_autor/CLAUDE.md` + skill + `bin/validar-capitulo`)

| # | Regra |
|---|---|
| GEO1 | Sem `## 5.` ou superior (max 4 tópicos numerados) |
| GEO2 | Sem emoji em `##`/`###` exceto `## 🤝 Sua Parte` (H2) e `#### 📚 Curiosidade Geográfica` (H4) |
| GEO3 | 8 headings pós-conteúdo na ordem fixa |
| GEO4 | `## Para não esquecer` com 3 a 4 bullets |
| GEO5 | `## E para hoje...` contém `> 💬 **Para Conversar:**` |
| GEO6 | Introdução contém `> 💬 **Para Conversar:**` antes de `## Explorando os Conceitos` |
| GEO7 | `## Esse foi o "cara"` contém `🏛️ **Legado:**` |
| GEO8 | `## Em outros lugares do mundo...` contém `Diferenças relevantes:` |
| GEO9 | Pelo menos 1 box de ancoragem espacial (`📍 No Mapa`, `🌍 Em Escala` ou `📊 Em Números`) |

---

## Estrutura de pastas

```
/Users/feliperosamini/conteudos-prontos/Geografia/
├── _PROGRESSO.md                     ← este arquivo (memória de continuidade)
├── _autor/                           ← config editorial
│   ├── prompt-autor.md
│   ├── CLAUDE.md
│   ├── _shared/lib_common.sh
│   └── scripts/criar_capitulos.sh
├── _blueprints/                      ← origem (puxado manualmente)
│   ├── 1serie/<unidade>/
│   ├── 2serie/<unidade>/
│   └── 3serie/<unidade>/
└── <serie>/<unidade>/                ← SAÍDA (gerar aqui)
    └── capitulo_NN_<slug>.md
```

---

## Como rodar

```
/autor-eleve:gerar-capitulo "Geografia" "<serie>" "<unidade>"
```

**Exemplos:**
- `/autor-eleve:gerar-capitulo "Geografia" "1serie" "unidade-1-introducao-a-geografia"`
- `/autor-eleve:gerar-capitulo "Geografia" "2serie" "unidade-3-urbanizacao-mundial-e-brasileira"`

Ou em linguagem natural: "gera o capítulo 1 da unidade 1 de Geografia da 1ª série".

---

## Próximos passos

1. Decidir qual série/unidade iniciar a produção.
2. Após cada capítulo aprovado, capturar correções/calibrações novas em `_autor/CLAUDE.md` (se inviolável testável) e atualizar este arquivo (incrementar contador, atualizar data, adicionar linha no histórico).
3. Ao fechar uma unidade inteira, marcar como ✅ na tabela de unidades.
