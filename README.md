# Conteúdos Prontos

Este repositório é a pasta de destino dos conteúdos produzidos pelos autores do projeto [`autores-material`](https://github.com/felipeelv/autores-material.git).

Os materiais são gerados por scripts mantidos no repositório de autores e salvos aqui automaticamente, organizados em pastas por componente curricular, ano/série e unidade.

## Finalidade deste repositório

Este repositório funciona como área de armazenamento dos conteúdos já produzidos ou gerados pelos autores.

Ele não é, prioritariamente, o local onde os scripts de criação dos conteúdos são mantidos. A lógica de geração, automação e autoria fica no repositório:

- [`felipeelv/autores-material`](https://github.com/felipeelv/autores-material.git)

## Organização das pastas

A estrutura segue, em geral, o padrão:

```text
Disciplina/
  ano-ou-serie/
    unidade-nome-da-unidade/
      arquivos-de-conteudo.md
```

Exemplos:

```text
Portugues 1/
  4ano/
    unidade-4-verbos/
      capitulo_01_tempos-verbais-do-indicativo.md

Filosofia/
  2serie/
    bimestre-4-pos-modernidade-e-apologetica/
      capitulo_07_pos-modernismo-e-desconstrucao.md
```

## Fluxo de produção

1. Os autores trabalham no repositório [`autores-material`](https://github.com/felipeelv/autores-material.git).
2. Os scripts desse repositório geram ou atualizam conteúdos educacionais.
3. Os arquivos finais são gravados neste repositório, dentro da pasta correspondente à disciplina, ano/série e unidade.
4. Este repositório passa a concentrar os conteúdos prontos para consulta, revisão, versionamento ou distribuição.

## Observações importantes

- Evite alterar manualmente arquivos gerados sem verificar se eles serão sobrescritos pelos scripts do repositório de autores.
- Ao criar uma nova disciplina, série, unidade ou capítulo, mantenha o padrão de organização já existente.
- Arquivos `.gitkeep` podem existir apenas para preservar pastas vazias no versionamento.
- Conteúdos em Markdown (`.md`) representam materiais textuais gerados ou revisados.

## Relação com o repositório de autores

Este repositório depende do fluxo de geração definido em [`autores-material`](https://github.com/felipeelv/autores-material.git). Portanto, mudanças estruturais nesta pasta devem ser compatíveis com os caminhos esperados pelos scripts de origem.

Antes de renomear, mover ou excluir pastas, confirme se os scripts dos autores também foram ajustados para refletir a nova estrutura.
