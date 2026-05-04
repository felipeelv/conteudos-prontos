# Tarefa: Curadoria de Imagens Candidatas por Unidade

## Objetivo

Criar, dentro da pasta de cada unidade, um arquivo de pesquisa com links de imagens candidatas para apoiar conceitos visuais dos capítulos, sem inserir imagens diretamente nos arquivos `capitulo_*.md`.

Esta tarefa existe para evitar escolhas visuais ruins no material final: primeiro pesquisa, registra e valida candidatos; depois a equipe decide quais imagens realmente entram no capítulo.

## Escopo

Aplicar por disciplina, ano e unidade, conforme demanda.

Exemplos de escopo:

- `Fisica/*/unidade-4-*`
- `Quimica/*/unidade-4-*`
- `Geometria/*/unidade-4-*`
- `Matematica/*/unidade-4-*`
- outras disciplinas ativas do repo, sempre excluindo `_autor/`, `_blueprints/`, `_legado/` e pastas iniciadas por `_`.

Não incluir arquivos históricos, blueprints, placeholders, `.gitkeep` ou materiais que não sejam capítulos finais.

## Arquivo de saída

Criar um arquivo por pasta de unidade:

```text
<Disciplina>/<ano>/<unidade>/CURADORIA_IMAGENS_CANDIDATAS.md
```

O arquivo deve ser apenas um catálogo de candidatos. Ele não deve modificar o conteúdo dos capítulos.

## Conceitos a pesquisar

Para cada capítulo, mapear conceitos a partir dos títulos:

- `##` tópicos principais;
- `###` subtópicos conceituais;
- priorizar conceitos que dependem de representação visual, como processo, comparação, estrutura, gráfico, experimento, mapa, circuito, esquema, tabela visual, organismo, fenômeno físico ou reação.

Não pesquisar imagens para seções fixas de fechamento, salvo se houver motivo claro:

- `Sua Parte`;
- `O que a Bíblia diz...`;
- `Simplificando`;
- `Para não esquecer`.

## Regra mínima por conceito

Para cada conceito selecionado, pesquisar pelo menos 2 imagens candidatas.

Cada candidato precisa registrar:

- título da mídia;
- link da página da mídia;
- link direto do arquivo quando disponível;
- tipo do arquivo (`image/png`, `image/jpeg`, `image/svg+xml`, etc.);
- licença;
- autor/crédito;
- observação curta de uso quando necessário.

## Fontes preferenciais

Priorizar fontes com página de licença e crédito claros:

1. Wikimedia Commons.
2. OpenStax, quando a mídia tiver licença clara.
3. NASA/NOAA/USGS/CDC/NIH e outros órgãos públicos, quando pertinentes.
4. Museus, universidades e instituições científicas com licença explícita.

Evitar:

- PDFs e livros digitalizados como candidatos de imagem;
- imagens sem página de licença;
- imagens de baixa resolução;
- diagramas poluídos, ilegíveis ou com texto demais;
- imagens decorativas sem função didática;
- imagens com marca d'água;
- resultados genéricos de busca sem fonte verificável.

## Modelo do arquivo

```markdown
# Curadoria de imagens candidatas - unidade 4

Arquivo de pesquisa para selecionar novas imagens sem inseri-las diretamente nos capítulos.

- Fonte pesquisada: Wikimedia Commons API e/ou busca web com licença verificável.
- Critério: pelo menos 2 candidatos de imagem por conceito.
- Antes de inserir: abrir a página da mídia, conferir qualidade visual, idioma do diagrama, licença e crédito.

## Capítulo 1 — Título do capítulo

### Conceito: 1.1 Nome do conceito
- Referência didática: descrição curta do que a imagem deve mostrar
- Consulta usada: `termo pesquisado`

1. [Título da mídia](URL_DA_PAGINA_DA_MIDIA)
   - Arquivo direto: URL_DIRETA_DO_ARQUIVO
   - Tipo: image/png
   - Licença: CC BY-SA 4.0
   - Crédito: Nome do autor
   - Observação: usar se a imagem estiver legível no tamanho do material.
2. [Título da mídia](URL_DA_PAGINA_DA_MIDIA)
   - Arquivo direto: URL_DIRETA_DO_ARQUIVO
   - Tipo: image/svg+xml
   - Licença: domínio público
   - Crédito: Nome do autor/instituição
```

## Validação obrigatória

Antes de considerar a curadoria concluída:

1. Confirmar que todos os conceitos selecionados têm pelo menos 2 candidatos.
2. Confirmar que não há candidatos em PDF.
3. Confirmar que não há avisos como `Atenção: a busca retornou apenas...`.
4. Conferir se cada item tem página da mídia, arquivo direto, tipo, licença e crédito.
5. Rodar `git diff --check`.
6. Conferir `git status --short` para garantir que só arquivos de curadoria foram criados ou alterados.

## Comandos úteis

Contar conceitos por arquivo:

```bash
rg -c "^### Conceito:" <Disciplina>/*/<unidade>/CURADORIA_IMAGENS_CANDIDATAS.md
```

Procurar pendências:

```bash
rg -n "Atenção|\\.pdf|application/pdf" <Disciplina>/*/<unidade>/CURADORIA_IMAGENS_CANDIDATAS.md
```

Contar candidatos:

```bash
rg -n "^1\\. \\[|^2\\. \\[" <Disciplina>/*/<unidade>/CURADORIA_IMAGENS_CANDIDATAS.md
```

## Critérios de aceite

A tarefa está pronta quando:

- cada unidade do escopo tem `CURADORIA_IMAGENS_CANDIDATAS.md`;
- cada conceito selecionado tem pelo menos 2 imagens candidatas;
- nenhum candidato é PDF;
- todos os candidatos têm licença e crédito registrados;
- nenhum capítulo `capitulo_*.md` foi alterado;
- o arquivo permite decidir depois, manualmente, quais imagens serão inseridas no material.

## Referência validada

Modelo já criado em Biologia unidade 4:

- `Biologia/1serie/unidade-4-bioquimica-celular-ii/CURADORIA_IMAGENS_CANDIDATAS.md`
- `Biologia/2serie/unidade-4-genetica-mendeliana/CURADORIA_IMAGENS_CANDIDATAS.md`
- `Biologia/3serie/unidade-4-genetica-molecular-avancada/CURADORIA_IMAGENS_CANDIDATAS.md`
- `Biologia/9ano/unidade-4-genetica-aplicada/CURADORIA_IMAGENS_CANDIDATAS.md`

Resultado do modelo:

- 60 conceitos;
- 120 links candidatos;
- 2 candidatos por conceito;
- PDFs excluídos;
- sem alteração nos capítulos.
