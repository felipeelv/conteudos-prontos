---
description: 'Gera um ou mais capitulos finais de uma unidade a partir do blueprint correspondente. Roteia para a skill do autor da disciplina. Uso = /autor-eleve gerar-capitulo "Disciplina" "ano" "unidade".'
---

# Gerar Capitulo

Argumentos: $ARGUMENTS

Espera-se 3 argumentos posicionais entre aspas: `<disciplina>` `<ano>` `<unidade>`.

## Layout de pastas (apos reorganizacao)

Cada disciplina tem sua propria pasta na raiz do repo conteudos-prontos, contendo:

- `_autor/` — config editorial (NAO ALTERAR): `prompt-autor.md`, `CLAUDE.md`, `memoria-autor.md`
- `_blueprints/<ano>/<unidade>/` — blueprints aprovados (origem)
- `<ano>/<unidade>/` — capitulos finais (saida)

Disciplinas que ainda nao migraram para esse layout continuam usando os caminhos legados (`Blueprints/<disciplina>/<ano>/<unidade>/` e `Conteudos Prontos/<Disciplina>/<Ano>/<Unidade>/`). Tente o layout novo primeiro; se nao existir, caia para o legado.

## Passos

1. **Validar argumentos**: se faltar algum, peca ao usuario para fornecer disciplina, ano e unidade.
2. **Localizar blueprint** (tente nesta ordem):
   - **Layout novo:** `<Disciplina>/_blueprints/<ano>/<unidade>/`
   - **Layout legado:** `Blueprints/<disciplina-slug>/<ano>/<unidade>/`
   - Se nao encontrar em nenhum, liste as opcoes disponiveis em ambos e pare.
3. **Identificar destino** (mesmo layout do blueprint encontrado):
   - **Layout novo:** `<Disciplina>/<ano>/<unidade>/`
   - **Layout legado:** `Conteudos Prontos/<Disciplina>/<Ano>/<Unidade>/`
   - Crie a pasta se nao existir.
4. **Selecionar autor**: roteie para a skill do plugin correspondente:
   - `Estatistica e Educacao Financeira` -> use a skill `autor-eleve:autor-estatistica`
   - `Estudos Sociais` -> use a skill `autor-eleve:autor-estudos-sociais`
   - `Historia` -> use a skill `autor-eleve:autor-estudos-sociais` (cobre Historia EM 1a-3a serie)
   - `Geografia` -> use a skill `autor-eleve:autor-geografia` (cobre apenas Geografia do EM 1a-3a serie; Geografia do EF e coberta por `autor-estudos-sociais`)
   - (outras disciplinas serao adicionadas em versoes futuras)
5. **Ler blueprint completo**: leia `blueprint_unidade.md` e cada `blueprint_capitulo_*.md` da pasta.
6. **Apresentar plano de capitulos**: liste titulos e temas dos capitulos a gerar e aguarde confirmacao do usuario.
7. **Gerar capitulo a capitulo**: para cada blueprint de capitulo, produza o arquivo final aplicando as regras editoriais da skill do autor. Salve em `<destino>/capitulo_NN_<slug>.md`.
8. **Aguardar aprovacao** entre cada capitulo antes de avancar para o proximo.
9. **Atualizar metadata.json** na pasta da unidade, com:
   ```json
   {
     "disciplina": "<disciplina>",
     "ano": "<ano>",
     "unidade": "<unidade>",
     "blueprint_path": "<caminho-do-blueprint>",
     "autor": "<autor-skill>",
     "generated_at": "<ISO-8601>"
   }
   ```

## Notas

- Nao gere mais de um capitulo de uma vez sem aprovacao explicita.
- Se a skill do autor nao existir para a disciplina solicitada, informe o usuario e pare — nao improvise.
- Apos cada arquivo salvo, o hook `post-capitulo` rodara o `revisor-editorial` automaticamente; se houver violacoes, corrija antes de prosseguir.
