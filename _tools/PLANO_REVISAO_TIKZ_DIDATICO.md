# Plano de Revisão Visual TikZ Didático

## Objetivo

Revisar todas as imagens TikZ ativas do repositório para aplicar o padrão visual didático definido em `_tools/CONVENCAO_TIKZ.md`: acentuação correta, fonte sans-serif, hierarquia visual clara, cores funcionais, layout pesquisado e PNG renderizado sem sobreposição.

## Escopo inicial

- Fontes TikZ ativas: `figuras_cap*.tex` fora de `_legado/`.
- PNGs ativos: `*/figuras/*_tikz-*.png` fora de `_legado/`.
- Levantamento atual: 61 fontes TikZ e 159 PNGs ativos.

## Ordem de execução

1. Inventariar as figuras por disciplina, ano, unidade e capítulo.
2. Rodar `_tools/auditar_tikz_didatico.py` para localizar riscos rápidos: fonte não padronizada e palavras comuns sem acento.
3. Para cada família de diagrama, pesquisar uma referência visual antes de redesenhar:
   - comparação de fatores: matriz/grade;
   - processo: fluxo linear;
   - ciclo: diagrama circular;
   - classificação: árvore/hierarquia;
   - gráfico: eixo/escala;
   - estrutura: esquema rotulado.
4. Ajustar o `.tex` com:
   - fonte sans-serif;
   - acentuação correta em português;
   - rótulos curtos;
   - alinhamento em grade;
   - cores com função;
   - sem setas cruzadas;
   - sem texto sobreposto.
5. Renderizar novamente os PNGs.
6. Revisar visualmente os PNGs renderizados.
7. Validar que os links raw dos capítulos apontam para PNGs existentes.
8. Commitar por lote de disciplina para reduzir risco e facilitar revisão.

## Critérios de aceite por figura

- O PNG renderizado está legível em tamanho normal de apostila.
- Nenhum texto fica fora da caixa ou sobre outro elemento.
- Não há setas cruzadas ou ambíguas.
- Todas as palavras em português estão acentuadas corretamente.
- A fonte dos rótulos é sans-serif.
- A imagem usa no máximo a complexidade necessária para explicar o conceito.
- A hierarquia visual distingue título, fator/etapa, explicação e resultado.
- O Markdown do capítulo referencia o PNG correto por URL raw.

## Lotes sugeridos

1. Química unidade 4, porque já iniciou o novo padrão.
2. Física unidade 4, por ter muitos diagramas conceituais e de circuito.
3. Biologia unidade 4, por ter esquemas de processos e genética.
4. Geometria unidade 4, por ter maior volume de figuras e maior risco de inconsistência visual.
5. Demais disciplinas com TikZ ativo.

## Observações operacionais

- Não alterar conteúdo conceitual junto com redesenho visual, salvo erro evidente.
- Se uma figura já estiver clara, apenas padronizar fonte/acentos/renderização.
- Se uma figura estiver confusa, redesenhar a partir do objetivo pedagógico, não remendar o layout antigo.
- Após cada lote, rodar validação de links raw e revisar `git diff --stat`.
