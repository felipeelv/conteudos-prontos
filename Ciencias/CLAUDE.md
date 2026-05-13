# CLAUDE.md — Ciências (Unidade 4 — síntese em andamento)

Contexto operacional para retomar o trabalho de síntese da **Unidade 4 de Ciências** em outra sessão.

---

## Status atual (atualizado 2026-05-12)

**Pipeline:** síntese editorial dos capítulos da U4 — reduzir volume, aplicar novas regras, manter estrutura do autor.

**5 capítulos POC concluídos** (1 cap por ano, todos `capitulo_01_*.md`):

| Ano | Tema | Original | Final | Redução |
|---|---|---|---|---|
| 4º | Microrganismos / Fungos e Bactérias | 8.186 | 4.823 | **−41%** |
| 5º | Corpo Humano / Nutrição | 7.030 | 5.515 | **−22%** |
| 6º | Transformações da Matéria | 10.369 | 7.116 | **−31%** |
| 7º | Ecossistemas / Biomas do Brasil | 10.171 | 8.008 | **−21%** |
| 8º | Ligações Químicas / Por que Átomos se Ligam | 11.355 | 7.566 | **−33%** |

Já em `origin/main` (commits `4a6bccf` → `0774178` → `fe67bad`).

**11 capítulos restantes na U4** (ainda no formato pré-síntese — aguardando aplicação das regras):

- 4º ano: `capitulo_02_microrganismos-uteis.md`, `capitulo_03_prevencao-de-doencas.md`
- 5º ano: `capitulo_02_circulacao-e-distribuicao.md`, `capitulo_03_sistema-imunologico.md`, `capitulo_04_reproducao-humana.md`
- 6º ano: `capitulo_02_materiais-sinteticos.md`, `capitulo_03_impactos-ambientais-e-sustentabilidade.md`
- 7º ano: `capitulo_02_adaptacoes-e-biodiversidade.md`
- 8º ano: `capitulo_02_ligacao-ionica.md`, `capitulo_03_ligacao-covalente.md`, `capitulo_04_ligacao-metalica.md`

---

## Regras editoriais aplicadas na síntese (use em todos os caps futuros)

### Estrutura canônica revisada (sem "Sua Parte")

```
# Capítulo X — TEMA
## Pergunta-problema
   → pergunta em itálico
   → introdução narrativa (Cena → Tensão → Ponte)
      • EF1: 3–4 frases
      • 6º–7º: 4–5 frases
      • 8º–9º: 5–7 frases
   → 💭 Pense um pouco
---
## 1. Título da Seção
   ### 1.1 Subtopico em forma de pergunta
   ### 1.2 Subtopico em forma de pergunta
   (cada seção tem 1 box pedagógico em blockquote)
---
## 2. ...
---
## 3. ...
---
## 4. ...
---
## O que a Bíblia diz sobre [tema]
## Simplificando
## Para não esquecer
```

**Bloco "🤝 Sua Parte" foi REMOVIDO da estrutura** a partir de 2026-05-12 (decisão registrada em `_autor/memoria-autor.md`).

### 7 regras editoriais da síntese

1. **Bullets:** máximo 3 por lista. Se 2 dizem o mesmo, vira 1.
2. **Frases:** 15–20 palavras. Quebrar se tiver 2 conectivos seguidos.
3. **Boxes pedagógicos** (`💭 ⏸️ 💡 📏 🔬`): 1 frase só (regra "drops"). Eliminar boxes de 2+ frases.
4. **Intro narrativa:** respeitar limite por faixa etária acima.
5. **"O que a Bíblia diz":** versículo + 1 parágrafo curto de aplicação + 2 ações práticas. SEM parágrafo de abertura quando o versículo já serve de gancho. SEM terceiro parágrafo filosófico.
6. **"Simplificando":** 1 parágrafo de 2–3 frases. SEM segundo parágrafo.
7. **"Para não esquecer":** 4 bullets máx, cada um em 1 linha.

### Tipos de blockquote (4 tipos)

| Tipo | Sintaxe | Quando usar |
|---|---|---|
| **Versículo bíblico** | `> *"texto..."* — **Referência**` | Citação bíblica (com aspas e itálico) |
| **Box pedagógico** | `> 💡 **Título:** texto` | Boxes `💭 ⏸️ 💡 📏 🔬` (com emoji + título em negrito) |
| **Exemplo aterrissado** | `> texto puro` (sem emoji, sem aspas, sem título) | **Retomada do caso narrativo da introdução** como exemplo concreto. Máx 1–2 frases. Aplicar **1× por capítulo**, no momento certo (após uma definição abstrata, na transição para o concreto). |
| **(parágrafo comum)** | sem `>` | Explicação conceitual padrão |

**Limite do aterrissado:** só em trechos de texto puro (1–2 frases) ou frase de "ponte" antes de cálculos. Em blocos com `$$...$$` embutidos, manter parágrafo normal.

### Volume-alvo por ano

| Faixa | Alvo (KB) | Estratégia principal |
|---|---|---|
| 4º | 5–6 | EF1 simples: frases curtas, redundâncias cortadas |
| 5º | 5–6 | Mesmo de 4º + cortar repetições com intro |
| 6º | 7–8 | Reduzir listas-critério (4→2-3 bullets) |
| 7º | 7–9 | Descrições de bioma/região em 3 bullets max |
| 8º | 7–9 | Definições concentradas, bloco bíblico sóbrio |

---

## Backups

Cada capítulo POC tem o original preservado em:

```
Ciencias/<ano>/unidade-4-*/_backup_pre_sintese/capitulo_01_*.md
```

(não estão versionados no git — backup local de auditoria).

---

## Fluxo recomendado para continuar

1. **Ler primeiro:** este `CLAUDE.md`, depois `Ciencias/_autor/memoria-autor.md`.
2. **Backup do capítulo a sintetizar** antes de mexer: criar pasta `_backup_pre_sintese/` na unidade se não existir, copiar original lá.
3. **Aplicar as 7 regras + 4 tipos de blockquote** acima.
4. **Identificar o caso narrativo da introdução** e planejar onde entra o blockquote aterrissado (1× por capítulo).
5. **Verificar volume final** com `wc -c` e comparar com o alvo da faixa.
6. **Atualizar `_PROGRESSO.md`** (se existir) com data e contagem.
7. **Commit + push** seguindo padrão dos commits anteriores.

---

## Worktree obrigatório

Background sessions exigem `EnterWorktree` antes de editar arquivos. Worktrees ativas atuais (em `.claude/worktrees/`):

- `ciencias-u4-sintese-v2` (mergeada na main, branch preservada)
- `ciencias-u4-remove-sua-parte` (mergeada na main, branch preservada)

Para retomar trabalho novo, criar um worktree fresco com nome descritivo.

---

## Push para main

O classificador automático do Claude Code **bloqueia push direto para `main`** mesmo com autorização interna. Após commit + fast-forward merge para main, o usuário precisa rodar manualmente:

```
! cd ~/conteudos-prontos && git push origin main
```

(Liberação permanente possível via `update-config` adicionando regra de Bash permission para `git push origin main` neste repo.)

---

## Referências cruzadas

- **Regras editoriais base da disciplina:** `Ciencias/_autor/memoria-autor.md` (atualizada 2026-05-12)
- **Prompt da disciplina:** `~/autores-material/autores/autor_ciencias/prompt-autor.md`
- **Blueprints:** `~/material-blueprints/Ciencias/<ano>/<unidade>/`
- **Pipeline geral:** `~/CLAUDE.md` seção "Produção de Conteúdo Didático"
