# Proposta de Organizacao do Projeto

Data da analise: 2026-05-01

## Diagnostico

A pasta `Estatistica e Educacao Financeira/` confirma o modelo que deve ser seguido pelas demais disciplinas:

```text
<Disciplina>/
├── _autor/
├── _blueprints/
├── <ano-ou-serie>/
│   └── <unidade-ou-bimestre>/
│       ├── capitulo_*.md
│       └── metadata.json
├── _migracao_manifesto.json
└── README.md
```

O repositorio, porem, ainda esta em estado misto. Ha uma migracao registrada como `copy-only; old files preserved`, ou seja, arquivos antigos foram copiados para a nova estrutura, mas as origens antigas permaneceram no lugar.

Principais problemas encontrados:

- `Conteudos Prontos/` ainda existe na raiz com conteudos duplicados.
- `Unidade 3-/` ainda existe na raiz com arquivos `.gdoc` duplicados.
- `_legado/estrutura-antiga/` guarda copias das estruturas antigas, como esperado, mas ainda ha copias equivalentes fora de `_legado`.
- `Blueprints/` ainda existe na raiz, apesar de o padrao oficial mover blueprints para `<Disciplina>/_blueprints/`.
- `autores-material/` tambem existe dentro deste repositorio, duplicando a funcao de `<Disciplina>/_autor/`.
- Ha arquivos operacionais `.DS_Store` espalhados.
- Algumas pastas usam nomes humanizados/accentuados, como `6º Ano (2026)` ou `Unidade 3 - ...`, enquanto o padrao de conteudo pronto usa slugs, como `6ano/unidade-4-media-aritmetica-e-probabilidade`.

## Evidencias numericas

Contagem geral encontrada:

- `121` arquivos `capitulo_*.md` no repositorio.
- `28` arquivos `metadata.json`.
- `3376` arquivos `.gitkeep`.
- `24` arquivos `.DS_Store`.
- `96` duplicacoes exatas por conteudo entre arquivos finais e/ou `.gdoc`, considerando a estrutura ativa fora de `_legado`, `autores-material` e `plugins`.

Distribuicao dos `capitulo_*.md` fora de `_legado`, `autores-material` e `plugins`:

```text
36 Conteudos Prontos
18 Ciencias
17 Estatistica e Educacao Financeira
5 Portugues 1
5 Estudos Sociais
2 Sociologia
2 Filosofia
```

Isso indica que `Conteudos Prontos/` ainda concentra muitos capitulos que precisam ser incorporados ou conferidos contra as pastas oficiais por disciplina.

Distribuicao dos `.gdoc` fora de `_legado`, `autores-material` e `plugins`:

```text
60 Unidade 3-
9 Matematica
8 Fisica
7 Portugues 1
7 Estudos Sociais
7 Estatistica e Educacao Financeira
6 Geometria
6 Ciencias
3 Quimica
3 Biologia
2 Historia
2 Geografia
```

Isso indica que `Unidade 3-/` provavelmente deve virar apenas legado ou area de referencia, nao pasta ativa de trabalho.

## Decisao recomendada

Adotar oficialmente a estrutura por disciplina autocontida, ja descrita no `README.md`.

Escopo escolar ativo: produzir e manter conteudos somente de `4ano` ate `3serie` do Ensino Medio. Pastas `1ano`, `2ano`, `3ano` e a disciplina `Educacao Crista` ficam fora do projeto.

A raiz do projeto deve conter apenas:

```text
Biologia/
Ciencias/
Estatistica e Educacao Financeira/
Estudos Sociais/
Filosofia/
Fisica/
Geografia/
Geometria/
Historia/
Matematica/
Portugues 1/
Portugues 2/
Quimica/
Sociologia/
plugins/
_legado/
README.md
MIGRACAO_ESTRUTURA_MANIFESTO.json
PLANO_MIGRACAO_ESTRUTURA_POR_DISCIPLINA.md
PROPOSTA_ORGANIZACAO_PROJETO.md
```

Tudo que for conteudo novo deve entrar em:

```text
<Disciplina>/<ano-ou-serie>/<unidade-ou-bimestre>/capitulo_*.md
<Disciplina>/<ano-ou-serie>/<unidade-ou-bimestre>/metadata.json
```

Tudo que for planejamento deve entrar em:

```text
<Disciplina>/_blueprints/<ano-ou-serie>/<unidade-ou-bimestre>/blueprint_*.md
```

Tudo que orientar escrita deve entrar em:

```text
<Disciplina>/_autor/
```

## Plano de organizacao

### Fase 1 - Congelar e inventariar

Antes de mover qualquer arquivo:

1. Gerar um inventario completo dos arquivos ativos.
2. Comparar hashes dos duplicados.
3. Separar tres estados:
   - `identico`: pode ser arquivado com seguranca.
   - `so existe no legado`: precisa ser migrado.
   - `conflito`: mesmo destino esperado, mas conteudo diferente.

### Fase 2 - Limpar a raiz

Mover para `_legado/estrutura-antiga/` ou remover apenas apos comparacao:

- `Conteudos Prontos/`
- `Blueprints/`
- `Unidade 3-/`
- `autores-material/`
- `.claude/`
- `.claude-plugin/`

Observacao: como `autores-material/` parece ser um checkout inteiro dentro deste repositorio, a recomendacao e nao manter esse diretorio aqui. O repositorio `autores-material` deve continuar separado.

### Fase 3 - Completar as disciplinas

Para cada disciplina:

1. Garantir `_autor/`.
2. Garantir `_blueprints/`.
3. Garantir `README.md`.
4. Migrar capitulos de `Conteudos Prontos/<Disciplina>/` para `<Disciplina>/`.
5. Criar ou preservar `metadata.json` em cada unidade com capitulos prontos.
6. Remover `.gitkeep` de unidades que ja possuem arquivos reais.

### Fase 4 - Tratar Google Docs

Os arquivos `.gdoc` nao seguem o mesmo padrao dos capitulos markdown e, por decisao operacional, ficam temporariamente fora do planejamento ativo.

Enquanto a Unidade 3 nao entrar no plano, manter esses arquivos apenas em legado:

```text
_legado/google-docs-excluidos-planejamento-2026-05-01/
```

Quando a Unidade 3 voltar ao planejamento, reavaliar se esses arquivos devem ser importados como referencia por disciplina ou permanecer somente como historico.

### Fase 5 - Validar

Rodar validacoes automaticas:

- nenhuma pasta ativa `Conteudos Prontos/`, `Blueprints/` ou `Unidade 3-/` na raiz;
- nenhuma unidade com `capitulo_*.md` sem `metadata.json`;
- nenhum `blueprint_*.md` fora de `_blueprints/`;
- nenhum `capitulo_*.md` dentro de `_blueprints/`;
- nenhum `.DS_Store`;
- nenhum arquivo duplicado ativo por hash.

## Ordem segura de execucao

1. Criar relatorio de duplicados com origem, destino proposto e hash.
2. Migrar apenas arquivos que existem em area antiga e nao existem na disciplina oficial.
3. Para duplicados identicos, manter a copia oficial e arquivar/remover a copia antiga.
4. Para conflitos, gerar uma lista para revisao manual antes de qualquer sobrescrita.
5. Limpar `.DS_Store`.
6. Atualizar o manifesto de migracao.
7. Rodar validacao final.

## Nao fazer automaticamente

- Nao apagar `Conteudos Prontos/`, `Blueprints/`, `Unidade 3-/` ou `autores-material/` sem inventario e comparacao.
- Nao sobrescrever capitulos com o mesmo nome sem comparar conteudo.
- Nao misturar `.gdoc` dentro das pastas oficiais de capitulos markdown.
- Nao transformar Filosofia e Sociologia para `unidade-*` se o material estiver editorialmente organizado como `bimestre-*`.

## Proxima acao recomendada

Criar um script de auditoria que gere:

```text
RELATORIO_ORGANIZACAO_PROJETO.md
```

com:

- arquivos duplicados identicos;
- arquivos fora do padrao;
- capitulos sem metadata;
- blueprints fora de `_blueprints`;
- proposta de destino para cada arquivo antigo;
- lista de conflitos que exigem decisao manual.

Depois desse relatorio, executar a reorganizacao em uma branch separada e com commit antes/depois.
