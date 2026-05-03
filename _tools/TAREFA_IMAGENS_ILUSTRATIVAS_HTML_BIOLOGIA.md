# Tarefa: Inserir Imagens Ilustrativas HTML em Biologia

## Objetivo

Revisar os capítulos ativos de Biologia e inserir imagens ilustrativas pesquisadas nos tópicos que precisam de apoio visual para compreensão. As imagens devem funcionar ao colar o conteúdo renderizado no Google Docs, com fonte e crédito preservados.

## Escopo

Capítulos ativos de Biologia, excluindo `_autor/`, `_blueprints/` e `_legado/`.

Total inicial: 14 capítulos.

- `Biologia/1serie/unidade-4-bioquimica-celular-ii/capitulo_01_proteinas-estrutura-e-funcao.md`
- `Biologia/1serie/unidade-4-bioquimica-celular-ii/capitulo_02_enzimas-catalisadores-biologicos.md`
- `Biologia/1serie/unidade-4-bioquimica-celular-ii/capitulo_03_origem-da-vida-na-terra.md`
- `Biologia/1serie/unidade-4-bioquimica-celular-ii/capitulo_04_teorias-historicas-sobre-origem-da-vida.md`
- `Biologia/2serie/unidade-4-genetica-mendeliana/capitulo_01_conceitos-fundamentais.md`
- `Biologia/2serie/unidade-4-genetica-mendeliana/capitulo_02_primeira-lei-de-mendel.md`
- `Biologia/2serie/unidade-4-genetica-mendeliana/capitulo_03_segunda-lei-de-mendel.md`
- `Biologia/3serie/unidade-4-genetica-molecular-avancada/capitulo_01_regulacao-da-expressao-genica.md`
- `Biologia/3serie/unidade-4-genetica-molecular-avancada/capitulo_02_epigenetica.md`
- `Biologia/3serie/unidade-4-genetica-molecular-avancada/capitulo_03_mutacoes-e-variabilidade.md`
- `Biologia/3serie/unidade-4-genetica-molecular-avancada/capitulo_04_biotecnologia-basica.md`
- `Biologia/9ano/unidade-4-genetica-aplicada/capitulo_01_segunda-lei-de-mendel.md`
- `Biologia/9ano/unidade-4-genetica-aplicada/capitulo_02_heredogramas-e-genetica-humana.md`
- `Biologia/9ano/unidade-4-genetica-aplicada/capitulo_03_mutacoes.md`

## Regra editorial

Para cada capítulo:

1. Mapear os tópicos principais e subtópicos conceituais.
2. Inserir pelo menos uma imagem ilustrativa nos tópicos que dependem de contexto visual.
3. Não inserir imagem imediatamente colada ao título.
4. Não inserir imagem decorativa sem função didática.
5. Priorizar imagens com texto em português quando houver boa opção.
6. Quando a melhor imagem estiver em outro idioma, usar apenas se ela for visualmente clara e a legenda em português resolver o contexto.
7. Manter fonte e crédito em todas as imagens.
8. Validar o padrão do diagrama com Perplexity ou busca web antes de escolher a imagem.

## Padrão HTML

Usar bloco próprio, com espaçamento e sem texto envolvendo a imagem:

```html
<p style="clear: both; margin: 24px 0 8px; text-align: center;">
  <img src="URL_DIRETA_DA_IMAGEM" alt="DESCRIÇÃO DIDÁTICA DA IMAGEM" style="display: block; max-width: 100%; height: auto; margin: 0 auto;">
</p>
<p style="margin: 0 0 28px; text-align: center; font-size: 0.9em;">
  Fonte: NOME_DA_FONTE, AUTOR/CRÉDITO, LICENÇA.
</p>
```

## Critérios de seleção

- A imagem precisa explicar algo que o texto sozinho deixa abstrato.
- Preferir diagramas, esquemas, heredogramas, quadros genéticos, modelos moleculares, fotos de fenômenos ou exemplos reais.
- Evitar imagens pequenas, borradas, poluídas ou com texto sobreposto.
- Evitar figuras com excesso de informação para a série.
- Preferir link direto estável da imagem.
- Registrar fonte e crédito, mesmo quando a imagem estiver em domínio público.

## Validação obrigatória

Para cada imagem inserida:

1. Validar o link direto com `curl -L`.
2. Confirmar retorno `200`.
3. Conferir se o bloco ficou entre parágrafos, listas ou boxes, nunca grudado em título.
4. Revisar se a legenda tem fonte, autor/crédito e licença quando disponível.
5. Revisar se a imagem realmente ajuda o tópico.

## Ordem de execução

1. Concluir Biologia 1ª série, unidade 4.
2. Revisar Biologia 2ª série, unidade 4.
3. Revisar Biologia 3ª série, unidade 4.
4. Revisar Biologia 9º ano, unidade 4.
5. Rodar validação final dos links.
6. Revisar `git diff -- Biologia _tools/TAREFA_IMAGENS_ILUSTRATIVAS_HTML_BIOLOGIA.md`.
7. Commitar e fazer push do lote de Biologia.

## Lote piloto validado

Arquivo:

- `Biologia/1serie/unidade-4-bioquimica-celular-ii/capitulo_01_proteinas-estrutura-e-funcao.md`

Padrão aplicado:

- imagem em bloco HTML próprio;
- `clear: both`;
- margem antes/depois;
- imagem centralizada;
- `max-width: 100%`;
- legenda separada;
- fonte e crédito preservados;
- links diretos validados com retorno `200`.

## Critérios de aceite

A tarefa só deve ser considerada concluída quando:

- os 14 capítulos ativos de Biologia forem revisados;
- os tópicos visualmente dependentes tiverem imagem de apoio;
- todos os links diretos retornarem `200`;
- não houver imagem embolada com texto ou título;
- todas as imagens tiverem fonte e crédito;
- o diff não alterar conteúdo textual fora do necessário para inserir imagem e legenda.

## Execução

Status: concluída em Biologia unidade 4.

Resultado:

- 14 capítulos revisados.
- 60 imagens HTML inseridas.
- Capítulo piloto: 8 imagens.
- Demais capítulos: 4 imagens por capítulo, uma para cada tópico principal numerado.
- Todos os blocos seguem o padrão com `clear: both`, margem, imagem centralizada, `max-width: 100%`, legenda separada, fonte e crédito.
- Links diretos validados com `curl -A "Codex educational material validation" -L`; nenhum link retornou erro na validação final.
