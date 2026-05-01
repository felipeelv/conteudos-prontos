# Plano de Migração — Estrutura por Disciplina

## Objetivo

Reestruturar o projeto para que cada disciplina concentre, em uma única pasta, os três elementos necessários para geração e manutenção dos conteúdos didáticos:

- autor, prompts e memória editorial;
- blueprints da disciplina;
- conteúdos prontos da disciplina.

A pasta `Estatistica e Educacao Financeira/` foi usada como referência de modelo para a nova organização.

## Diagnóstico da estrutura atual

Hoje o projeto mistura dois modelos de organização.

### Modelo global atual

```text
.
├── Blueprints/
├── autores-material/
├── Conteudos Prontos/
└── <outras pastas>
```

Nesse modelo, os materiais de uma mesma disciplina ficam espalhados em três lugares diferentes:

```text
Blueprints/<disciplina>/
autores-material/autores/autor_<disciplina>/
Conteudos Prontos/<Disciplina>/
```

### Modelo reestruturado observado

```text
Estatistica e Educacao Financeira/
├── _autor/
├── _blueprints/
├── 1serie/
├── 2serie/
├── 3serie/
├── 6ano/
├── 7ano/
└── 9ano/
```

Esse modelo aproxima os arquivos usados na produção da disciplina e facilita tarefas como:

- gerar conteúdo a partir de um blueprint específico;
- revisar o prompt do autor junto aos conteúdos produzidos;
- consultar rapidamente a memória editorial da disciplina;
- validar se uma unidade tem blueprint e conteúdo correspondente;
- migrar, arquivar ou publicar uma disciplina inteira.

## Avaliação da pasta `Estatistica e Educacao Financeira/`

### Pontos fortes

- A disciplina fica autocontida.
- O autor está próximo dos conteúdos e blueprints.
- A estrutura por ano e unidade é clara.
- Os blueprints estão separados em `_blueprints/`, evitando mistura com conteúdos finais.
- O prefixo `_autor/` deixa claro que não é conteúdo didático publicado.
- O modelo facilita executar automações por disciplina.

### Pontos de atenção

- A raiz do projeto voltou a conter uma disciplina diretamente, enquanto o `README.md` atual ainda diz que disciplinas não devem ficar na raiz.
- Há duplicação parcial entre `_autor/` e `autores-material/autores/autor_estatistica-e-educacao-financeira/`.
- Há duplicação parcial entre `_blueprints/` e fontes globais de blueprints.
- Alguns conteúdos prontos da disciplina estão somente na pasta reestruturada e não dentro de `Conteudos Prontos/`.
- Nem todas as unidades geradas possuem `metadata.json`.
- Há arquivos `.DS_Store` espalhados, que não devem fazer parte da estrutura lógica.
- O nome da disciplina aparece com variações de capitalização, acentuação e slug.

## Decisão arquitetural recomendada

Adotar oficialmente o modelo **disciplina autocontida**.

Cada disciplina deve passar a ter uma pasta própria na raiz do projeto, com esta estrutura:

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
└── README.md
```

### Função de cada área

#### `_autor/`

Contém tudo que define como a disciplina deve escrever:

- prompt principal;
- memória editorial;
- instruções específicas;
- padrões de linguagem;
- eventuais scripts locais da disciplina.

#### `_blueprints/`

Contém o planejamento técnico da disciplina.

Deve preservar a hierarquia:

```text
_blueprints/<ano>/<unidade>/blueprint_*.md
```

#### Pastas de anos/séries

Contêm os conteúdos prontos, sem prefixo especial.

Exemplo:

```text
6ano/unidade-4-media-aritmetica-e-probabilidade/capitulo_01_media-aritmetica.md
```

## Migração recomendada

### Fase 1 — Preparação

1. Criar um backup ou commit antes da migração.
2. Remover arquivos operacionais desnecessários, como `.DS_Store`.
3. Definir nomes oficiais das disciplinas.
4. Definir se os nomes serão mantidos com espaços e acentos ou normalizados sem acentos.

Recomendação: manter nomes legíveis para pastas principais, como:

```text
Biologia
Ciencias
Estatistica e Educacao Financeira
Estudos Sociais
Filosofia
Fisica
Geografia
Geometria
Historia
Matematica
Portugues 1
Portugues 2
Quimica
Sociologia
```

### Fase 2 — Criar pastas autocontidas por disciplina

Para cada disciplina existente em `Conteudos Prontos/`, criar ou completar uma pasta na raiz:

```text
<Disciplina>/
├── _autor/
├── _blueprints/
└── <anos/séries>
```

### Fase 3 — Migrar autores

Mover ou copiar os autores de:

```text
autores-material/autores/autor_<disciplina>/
```

para:

```text
<Disciplina>/_autor/
```

Regras:

- Se já existir `_autor/`, comparar arquivos antes de sobrescrever.
- Preservar a versão mais recente ou mais completa.
- Migrar `CLAUDE.md`, `prompt-autor.md` e `memoria-autor.md`.
- Avaliar se `scripts/`, `_shared/` e `logs/` devem ser mantidos globalmente ou migrados por disciplina.

Recomendação:

- manter scripts compartilhados em uma área global;
- manter prompts e memória dentro da disciplina;
- não migrar logs históricos para dentro da disciplina, salvo se forem úteis para auditoria.

### Fase 4 — Migrar blueprints

Mover ou copiar os blueprints de:

```text
Blueprints/<disciplina>/
```

ou de fontes auxiliares como:

```text
autores-material/PRODUCAO/Blueprint/blueprints/<Disciplina>/
```

para:

```text
<Disciplina>/_blueprints/
```

Regras:

- Preservar `ano/unidade`.
- Manter arquivos `blueprint_unidade.md` e `blueprint_capitulo_*.md`.
- Não misturar blueprints com capítulos prontos.
- Caso existam `.gitkeep` para unidades ainda não produzidas, eles podem ser mantidos para indicar planejamento futuro.

### Fase 5 — Migrar conteúdos prontos

Mover ou copiar os conteúdos de:

```text
Conteudos Prontos/<Disciplina>/
```

para:

```text
<Disciplina>/<ano>/<unidade>/
```

Regras:

- Preservar capítulos `capitulo_*.md`.
- Preservar `metadata.json` quando existir.
- Não substituir conteúdo já existente sem comparar.
- Unidades vazias com `.gitkeep` podem ser preservadas para indicar grade planejada.

### Fase 6 — Criar metadados ausentes

Para cada unidade com capítulos prontos e sem `metadata.json`, criar um arquivo mínimo:

```json
{
  "disciplina": "Estatistica e Educacao Financeira",
  "ano": "6ano",
  "unidade": "unidade-4-media-aritmetica-e-probabilidade",
  "blueprint_path": "Estatistica e Educacao Financeira/_blueprints/6ano/unidade-4-media-aritmetica-e-probabilidade",
  "autor_path": "Estatistica e Educacao Financeira/_autor",
  "generated_at": null,
  "status": "migrado"
}
```

### Fase 7 — Atualizar documentação

Atualizar o `README.md` principal para refletir o novo modelo:

```text
.
├── <Disciplina>/
│   ├── _autor/
│   ├── _blueprints/
│   └── <ano>/<unidade>/
├── plugins/
├── Unidade 3-/
└── README.md
```

Também é recomendado criar um `README.md` dentro de cada disciplina, explicando:

- função da disciplina;
- autor responsável;
- estrutura interna;
- anos/séries cobertos;
- status das unidades.

### Fase 8 — Desativar ou arquivar a estrutura antiga

Depois de validar a migração, decidir o destino das pastas antigas:

```text
Blueprints/
autores-material/
Conteudos Prontos/
```

Opções:

1. Remover após migração validada.
2. Mover para `_arquivo/estrutura-antiga/`.
3. Manter temporariamente como compatibilidade, mas marcar como legado.

Recomendação: usar uma etapa temporária:

```text
_legado/
├── Blueprints/
├── autores-material/
└── Conteudos Prontos/
```

Assim, o projeto fica limpo sem perda imediata de histórico.

## Ordem sugerida de execução

1. Finalizar a disciplina `Estatistica e Educacao Financeira` como modelo.
2. Migrar uma disciplina pequena para validar o padrão, por exemplo `Filosofia` ou `Sociologia`.
3. Migrar disciplinas com conteúdos já gerados.
4. Migrar disciplinas que possuem apenas blueprints e autor.
5. Atualizar scripts e prompts que ainda apontam para `Blueprints/`, `autores-material/` e `Conteudos Prontos/`.
6. Atualizar o `README.md` principal.
7. Rodar uma validação estrutural.
8. Arquivar ou remover a estrutura antiga.

## Validações necessárias depois da migração

Para cada disciplina:

- existe `_autor/`;
- existe `_blueprints/`;
- existem pastas de anos/séries;
- capítulos prontos estão fora de `_blueprints/`;
- blueprints estão fora das pastas de conteúdo final;
- não há `.DS_Store`;
- unidades com capítulos possuem `metadata.json`;
- `metadata.json` aponta para o blueprint e autor corretos.

## Riscos

- Sobrescrever versões diferentes de prompts ou memórias editoriais.
- Perder scripts usados pelo fluxo atual de geração.
- Quebrar automações que esperam `Blueprints/`, `autores-material/` ou `Conteudos Prontos/`.
- Duplicar conteúdos se a migração for feita por cópia sem limpeza posterior.
- Confundir disciplinas que mudam de nome entre estruturas, como `Matematica`, `Matematica 1`, `Matematica 2` e `Matematica 3`.

## Mitigações

- Fazer comparação de arquivos antes de mover.
- Gerar manifesto de migração por disciplina.
- Migrar primeiro copiando, não apagando.
- Validar contagens de arquivos antes e depois.
- Só arquivar estrutura antiga após conferência.
- Atualizar scripts depois que a nova estrutura estiver estável.

## Estrutura final desejada

```text
.
├── Biologia/
│   ├── _autor/
│   ├── _blueprints/
│   └── <ano>/<unidade>/
├── Ciencias/
│   ├── _autor/
│   ├── _blueprints/
│   └── <ano>/<unidade>/
├── Estatistica e Educacao Financeira/
│   ├── _autor/
│   ├── _blueprints/
│   └── <ano>/<unidade>/
├── Filosofia/
│   ├── _autor/
│   ├── _blueprints/
│   └── <ano>/<unidade>/
├── ...
├── plugins/
├── Unidade 3-/
└── README.md
```

## Conclusão

A estrutura de `Estatistica e Educacao Financeira/` é um bom modelo para a reorganização do projeto, porque aproxima planejamento, autoria e conteúdo final dentro da mesma disciplina.

O ajuste recomendado é transformar esse modelo em padrão global, migrando cada disciplina para uma pasta autocontida na raiz e tratando `Blueprints/`, `autores-material/` e `Conteudos Prontos/` como estruturas legadas ou transitórias até a migração completa.
