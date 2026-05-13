# CLAUDE.md — Ciências (Unidade 4 — síntese em andamento)

Contexto operacional para retomar o trabalho de síntese da **Unidade 4 de Ciências** em outra sessão.

---

## Status atual (atualizado 2026-05-13)

**Pipeline:** síntese editorial dos capítulos da U4 — reduzir volume, aplicar regras v2 (linguagem mais simples + entrada+bullets), manter estrutura do autor.

### Unidades 100% finalizadas (regras v2)

| Ano | Tema | Caps | Tamanhos finais | Status |
|---|---|---|---|---|
| 7º | Ecossistemas / Biomas do Brasil | 1 e 2 | 6.689 B + 5.430 B | ✅ revisor sem violações |

### Capítulos POC concluídos (regras v1 — pode precisar reaplicar v2)

| Ano | Tema | Original | v1 | Redução v1 |
|---|---|---|---|---|
| 4º | Microrganismos / Fungos e Bactérias | 8.186 | 4.823 | −41% |
| 5º | Corpo Humano / Nutrição | 7.030 | 5.515 | −22% |
| 6º | Transformações da Matéria | 10.369 | 7.116 | −31% |
| 8º | Ligações Químicas / Por que Átomos se Ligam | 11.355 | 7.566 | −33% |

> Esses 4 capítulos estão em regras v1 (frases 15-20 palavras, prosa em alguns pontos onde caberia bullet). Se for reabrir a unidade, vale reaplicar regras v2.

### Capítulos restantes na U4 (formato pré-síntese)

- **4º ano:** `capitulo_02_microrganismos-uteis.md`, `capitulo_03_prevencao-de-doencas.md`
- **5º ano:** `capitulo_02_circulacao-e-distribuicao.md`, `capitulo_03_sistema-imunologico.md`, `capitulo_04_reproducao-humana.md`
- **6º ano:** `capitulo_02_materiais-sinteticos.md`, `capitulo_03_impactos-ambientais-e-sustentabilidade.md`
- **8º ano:** `capitulo_02_ligacao-ionica.md`, `capitulo_03_ligacao-covalente.md`, `capitulo_04_ligacao-metalica.md`

---

## Regras editoriais v2 (use em todos os caps futuros)

### Estrutura canônica (sem "Sua Parte")

```
# Capítulo X — TEMA
## Pergunta-problema (em pergunta)
   → introdução narrativa (Cena → Tensão → Ponte)
      • EF1: 3–4 frases
      • 6º–7º: 4–5 frases
      • 8º–9º: 5–7 frases
   → 💭 Pense um pouco
---
## 1. Título da Seção (pode virar pergunta se cair natural)
   ### 1.1 Subtopico (preferencialmente pergunta; descrição se for "card")
   ### 1.2 Subtopico
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

**Bloco "🤝 Sua Parte" foi REMOVIDO** da estrutura a partir de 2026-05-12.

### 8 regras editoriais v2

1. **Bullets:** máximo 3 por lista. Se a lista natural tiver mais itens (ex: 6 biomas, 4 componentes), **agrupar em 2 listas curtas de ≤3** em vez de empurrar tudo em prosa. Parágrafo longo com muitos itens é pior que duas listas pedagógicas.

2. **Frases:**
   - 4º–5º ano: 8–12 palavras
   - 6º–7º ano: **10–14 palavras**
   - 8º–9º ano: 13–17 palavras
   - Quebrar se tiver 2 conectivos seguidos. Evitar ponto-e-vírgula longo.

3. **Vocabulário concreto por idade.** Evitar palavras "de adulto": *pressões, compatíveis, prosperam, drasticamente, diante de, mediante, sobretudo, ademais, abundantes*. Preferir: *problema, que combinam com, vivem melhor, muito, quando, com, principalmente, e, com muita*.

4. **Subtópico = entrada curta + bullets.** Padrão preferencial:
   - 1 frase de definição/contexto (≤14 palavras)
   - **abertura curta** ("Três pontos:", "Onde ela é grande:", "Atividades que reduzem habitats:")
   - bullets ≤3 carregando o conteúdo (negrito para rótulo quando útil)
   - Prosa só quando não há lista natural.

5. **Boxes pedagógicos** (`💭 ⏸️ 💡 📏 🔬`): **1 frase só** (regra "drops"). Eliminar boxes de 2+ frases.

6. **Introdução narrativa:** respeitar limite por faixa etária acima. Cena → Tensão → Ponte.

7. **"O que a Bíblia diz":** versículo + 1 parágrafo curto de aplicação + 2 ações práticas. SEM parágrafo de abertura quando o versículo já serve de gancho. SEM terceiro parágrafo filosófico.

8. **"Simplificando" + "Para não esquecer":**
   - Simplificando: 1 parágrafo de 2–3 frases. Sem segundo parágrafo.
   - Para não esquecer: 4 bullets máx, cada um em 1 linha.

### 4 tipos de blockquote

| Tipo | Sintaxe | Quando usar |
|---|---|---|
| **Versículo bíblico** | `> *"texto..."* — **Referência**` | Citação bíblica (com aspas e itálico) |
| **Box pedagógico** | `> 💡 **Título:** texto` | Boxes `💭 ⏸️ 💡 📏 🔬` (com emoji + título em negrito) |
| **Exemplo aterrissado** | `> texto puro` (sem emoji, sem aspas, sem título) | **Retomada do caso narrativo da introdução** como exemplo concreto. Máx 1–2 frases. Aplicar **1× por capítulo**, no momento certo (após uma definição abstrata, na transição para o concreto). |
| **(parágrafo comum)** | sem `>` | Explicação conceitual padrão |

**Limite do aterrissado:** só em trechos de texto puro (1–2 frases). Em blocos com `$$...$$` embutidos, manter parágrafo normal.

**ATENÇÃO:** frases sentenciosas tipo "Não há bioma melhor ou pior..." que NÃO retomam o caso narrativo NÃO devem ser blockquote — ficam como parágrafo comum.

### Volume-alvo por ano (v2)

| Faixa | Alvo (KB) | Estratégia principal |
|---|---|---|
| 4º | 4–5 | Frases curtas, redundâncias cortadas |
| 5º | 4–5 | Cortar repetições com a intro |
| 6º | 5–6 | Reduzir listas-critério (4→2 listas de 2-3 bullets) |
| 7º | 5–7 | Agrupar listas naturais; descrições de bioma em 3 bullets max |
| 8º | 6–8 | Definições concentradas, bloco bíblico sóbrio |

> Esses alvos refletem o que foi efetivamente entregue na U4 do 7º ano (6.6 KB cap 01, 5.4 KB cap 02). Se um capítulo passar muito do alvo, há mordida a fazer; se ficar muito abaixo, conferir se não está raso demais.

---

## Backups

Cada capítulo POC tem o original preservado em:

```
Ciencias/<ano>/unidade-4-*/_backup_pre_sintese/capitulo_X_*.md
```

Capítulos que recebem segunda passagem (v1 → v2) ganham backup adicional:

```
Ciencias/<ano>/unidade-4-*/_backup_pre_sintese_v2/capitulo_X_*.md
```

(não estão versionados no git — backup local de auditoria).

---

## Fluxo recomendado para continuar

1. **Ler primeiro:** este `CLAUDE.md`, depois `Ciencias/_autor/memoria-autor.md`.
2. **Backup do capítulo a sintetizar** antes de mexer: criar pasta `_backup_pre_sintese/` (ou `_v2/` se já é segunda passagem), copiar original lá.
3. **Aplicar as 8 regras v2 + 4 tipos de blockquote**. Lembrar: subtópico padrão é entrada curta + bullets.
4. **Identificar o caso narrativo da introdução** e planejar onde entra o blockquote aterrissado (1× por capítulo).
5. **Verificar listas com mais de 3 itens:** se for "lista natural", agrupar em 2 listas de ≤3 em vez de prosa longa.
6. **Rodar `autor-eleve:revisor-editorial`** após cada reescrita para validar violações.
7. **Verificar volume final** com `wc -c` e comparar com o alvo da faixa.
8. **Commit + push** seguindo padrão dos commits anteriores.

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
