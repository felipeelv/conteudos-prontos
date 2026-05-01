# Conteúdos Didáticos

Este projeto é o espaço central para **gerar, organizar e armazenar conteúdos didáticos**.

A estrutura oficial agora é organizada por **disciplina autocontida**: cada disciplina reúne seus próprios autores, blueprints e conteúdos prontos.

Escopo ativo: conteúdos de `4ano` até `9ano` e de `1serie` até `3serie` do Ensino Médio.

## Estrutura oficial

```text
.
├── Biologia/
├── Ciencias/
├── Estatistica e Educacao Financeira/
├── Estudos Sociais/
├── Filosofia/
├── Fisica/
├── Geografia/
├── Geometria/
├── Historia/
├── Matematica/
├── Portugues 1/
├── Portugues 2/
├── Quimica/
├── Sociologia/
├── plugins/
├── _legado/
├── scripts/
└── README.md
```

## Estrutura de cada disciplina

Cada disciplina deve seguir este padrão:

```text
<Disciplina>/
├── _autor/
│   ├── CLAUDE.md
│   ├── prompt-autor.md
│   └── memoria-autor.md
├── _blueprints/
│   └── <ano-ou-serie>/
│       └── <unidade>/
│           ├── blueprint_unidade.md
│           └── blueprint_capitulo_*.md
├── <ano-ou-serie>/
│   └── <unidade>/
│       ├── capitulo_*.md
│       └── metadata.json
├── _migracao_manifesto.json
└── README.md
```

## Função de cada pasta

### `_autor/`

Contém os arquivos que orientam a escrita da disciplina:

- prompt do autor;
- memória editorial;
- instruções específicas;
- regras de linguagem;
- padrões de abordagem pedagógica.

### `_blueprints/`

Contém os blueprints da disciplina.

Os blueprints definem o planejamento técnico e editorial das unidades e capítulos.

Estrutura esperada:

```text
<Disciplina>/_blueprints/<ano-ou-serie>/<unidade>/
├── blueprint_unidade.md
├── blueprint_capitulo_01_*.md
└── blueprint_capitulo_02_*.md
```

### Pastas de anos e séries

Contêm os conteúdos didáticos prontos.

Exemplo:

```text
Estatistica e Educacao Financeira/
└── 6ano/
    └── unidade-4-media-aritmetica-e-probabilidade/
        ├── capitulo_01_media-aritmetica.md
        ├── capitulo_02_espaco-amostral-e-eventos.md
        ├── capitulo_03_calculo-de-probabilidade.md
        └── metadata.json
```

## Fluxo de trabalho

1. O blueprint da unidade é criado ou atualizado em `<Disciplina>/_blueprints/`.
2. O autor da disciplina é consultado em `<Disciplina>/_autor/`.
3. O conteúdo didático é gerado a partir do blueprint e das regras do autor.
4. Os capítulos finais são salvos em `<Disciplina>/<ano>/<unidade>/`.
5. A unidade recebe ou preserva um `metadata.json` para rastreabilidade.
6. O material segue para revisão editorial, ajustes, diagramação ou publicação.

## Rastreabilidade

Cada unidade com capítulos prontos deve ter um `metadata.json`.

Exemplo:

```json
{
  "disciplina": "Estatistica e Educacao Financeira",
  "ano": "6ano",
  "unidade": "unidade-4-media-aritmetica-e-probabilidade",
  "blueprint_path": "Estatistica e Educacao Financeira/_blueprints/6ano/unidade-4-media-aritmetica-e-probabilidade",
  "autor_path": "Estatistica e Educacao Financeira/_autor",
  "generated_at": "2026-05-01T13:37:01-03:00",
  "status": "migrado"
}
```

Esse arquivo ajuda a identificar:

- qual blueprint originou a unidade;
- qual autor/prompt orientou a escrita;
- quando o conteúdo foi gerado ou migrado;
- onde revisar a origem em caso de correção.

## Migração estrutural

A migração para o modelo por disciplina foi feita em modo seguro:

- os arquivos foram copiados para a nova estrutura;
- os arquivos antigos não foram apagados;
- duplicações idênticas foram registradas;
- conflitos seriam preservados sem sobrescrita;
- metadados ausentes foram criados automaticamente quando possível;
- um manifesto central foi gerado e arquivado em `_legado/documentos-organizacao-2026-05-01/MIGRACAO_ESTRUTURA_MANIFESTO.json`;
- cada disciplina recebeu seu próprio `_migracao_manifesto.json`.

## Estrutura legada

As estruturas antigas foram preservadas em:

```text
_legado/estrutura-antiga/
├── Blueprints/
├── autores-material/
├── Conteudos Prontos/
└── Unidade 3-/
```

Essas pastas devem ser tratadas como referência histórica. O trabalho novo deve acontecer na estrutura oficial por disciplina.

## Regras de organização

- Usar a pasta da disciplina como fonte oficial de trabalho.
- Manter somente anos/séries dentro do escopo ativo: `4ano` a `9ano` e `1serie` a `3serie`.
- Manter prompts e memórias em `_autor/`.
- Manter blueprints em `_blueprints/`.
- Manter conteúdos prontos nas pastas de anos/séries.
- Não misturar blueprints com capítulos prontos.
- Não sobrescrever arquivos conflitantes sem comparação manual.
- Preservar `metadata.json` quando existir.
- Evitar arquivos operacionais como `.DS_Store`.
- Registrar migrações e cópias em manifestos.

## Documentos de apoio

- Documentos de organização: `_legado/documentos-organizacao-2026-05-01/`.
- Relatórios de organização: `_legado/relatorios-organizacao-2026-05-01/`.

## Objetivo final

O objetivo deste projeto é manter uma base organizada para produção contínua de material didático, conectando planejamento, autoria automatizada e armazenamento dos conteúdos finalizados dentro da própria disciplina.
