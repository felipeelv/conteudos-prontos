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

<!-- INVENTARIO_CONTEUDOS_INICIO -->
## Conteúdos produzidos

Inventário gerado a partir dos arquivos `capitulo_*.md` presentes nas pastas oficiais de conteúdo. Pastas de `_blueprints`, `_legado` e `plugins` não entram nesta lista; arquivos de teste também ficam de fora.

Total atual: **200 capítulos** em **65 unidades/bimestres**.

### Biologia

#### 9ano

- **Unidade 4 - Genetica Aplicada** (`Biologia/9ano/unidade-4-genetica-aplicada/`)
  - [Cap. 1: Segunda Lei de Mendel](<Biologia/9ano/unidade-4-genetica-aplicada/capitulo_01_segunda-lei-de-mendel.md>)
  - [Cap. 2: Heredogramas e Genética Humana](<Biologia/9ano/unidade-4-genetica-aplicada/capitulo_02_heredogramas-e-genetica-humana.md>)
  - [Cap. 3: Mutações](<Biologia/9ano/unidade-4-genetica-aplicada/capitulo_03_mutacoes.md>)

#### 1serie

- **Unidade 4 - Bioquimica Celular II** (`Biologia/1serie/unidade-4-bioquimica-celular-ii/`)
  - [Cap. 1: Proteínas: Estrutura e Função](<Biologia/1serie/unidade-4-bioquimica-celular-ii/capitulo_01_proteinas-estrutura-e-funcao.md>)
  - [Cap. 2: Enzimas: Catalisadores Biológicos](<Biologia/1serie/unidade-4-bioquimica-celular-ii/capitulo_02_enzimas-catalisadores-biologicos.md>)
  - [Cap. 3: Origem da Vida na Terra](<Biologia/1serie/unidade-4-bioquimica-celular-ii/capitulo_03_origem-da-vida-na-terra.md>)
  - [Cap. 4: Teorias Históricas sobre Origem da Vida](<Biologia/1serie/unidade-4-bioquimica-celular-ii/capitulo_04_teorias-historicas-sobre-origem-da-vida.md>)

#### 2serie

- **Unidade 4 - Genetica Mendeliana** (`Biologia/2serie/unidade-4-genetica-mendeliana/`)
  - [Cap. 1: Conceitos Fundamentais da Genética](<Biologia/2serie/unidade-4-genetica-mendeliana/capitulo_01_conceitos-fundamentais.md>)
  - [Cap. 2: Primeira Lei de Mendel](<Biologia/2serie/unidade-4-genetica-mendeliana/capitulo_02_primeira-lei-de-mendel.md>)
  - [Cap. 3: Segunda Lei de Mendel](<Biologia/2serie/unidade-4-genetica-mendeliana/capitulo_03_segunda-lei-de-mendel.md>)

#### 3serie

- **Unidade 4 - Genetica Molecular Avancada** (`Biologia/3serie/unidade-4-genetica-molecular-avancada/`)
  - [Cap. 1: Regulação da Expressão Gênica](<Biologia/3serie/unidade-4-genetica-molecular-avancada/capitulo_01_regulacao-da-expressao-genica.md>)
  - [Cap. 2: Epigenética](<Biologia/3serie/unidade-4-genetica-molecular-avancada/capitulo_02_epigenetica.md>)
  - [Cap. 3: Mutações e Variabilidade](<Biologia/3serie/unidade-4-genetica-molecular-avancada/capitulo_03_mutacoes-e-variabilidade.md>)
  - [Cap. 4: Biotecnologia Básica](<Biologia/3serie/unidade-4-genetica-molecular-avancada/capitulo_04_biotecnologia-basica.md>)

### Ciencias

#### 4ano

- **Unidade 5 - Ecossistemas** (`Ciencias/4ano/unidade-5-ecossistemas/`)
  - [Cap. 1: O que é Ecossistema](<Ciencias/4ano/unidade-5-ecossistemas/capitulo_01_o-que-e-ecossistema.md>)
  - [Cap. 2: Solo: A Base da Vida](<Ciencias/4ano/unidade-5-ecossistemas/capitulo_02_solo-a-base-da-vida.md>)
  - [Cap. 3: Ecossistemas Brasileiros](<Ciencias/4ano/unidade-5-ecossistemas/capitulo_03_ecossistemas-brasileiros.md>)
  - [Cap. 4: Impactos Ambientais](<Ciencias/4ano/unidade-5-ecossistemas/capitulo_04_impactos-ambientais.md>)

#### 5ano

- **Unidade 5 - Alimentacao e Saude** (`Ciencias/5ano/unidade-5-alimentacao-e-saude/`)
  - [Cap. 1: Grupos Alimentares](<Ciencias/5ano/unidade-5-alimentacao-e-saude/capitulo_01_grupos-alimentares.md>)
  - [Cap. 2: Saúde Integral](<Ciencias/5ano/unidade-5-alimentacao-e-saude/capitulo_02_saude-integral.md>)

#### 6ano

- **Unidade 4 - Transformacoes da Materia** (`Ciencias/6ano/unidade-4-transformacoes-da-materia/`)
  - [Cap. 1: Transformações Físicas e Químicas](<Ciencias/6ano/unidade-4-transformacoes-da-materia/capitulo_01_transformacoes-fisicas-e-quimicas.md>)
  - [Cap. 2: Materiais Sintéticos](<Ciencias/6ano/unidade-4-transformacoes-da-materia/capitulo_02_materiais-sinteticos.md>)
  - [Cap. 3: Impactos Ambientais e Sustentabilidade](<Ciencias/6ano/unidade-4-transformacoes-da-materia/capitulo_03_impactos-ambientais-e-sustentabilidade.md>)
- **Unidade 5 - Celulas e Organizacao dos Seres Vivos** (`Ciencias/6ano/unidade-5-celulas-e-organizacao-dos-seres-vivos/`)
  - [Cap. 1: Células: Unidade da Vida](<Ciencias/6ano/unidade-5-celulas-e-organizacao-dos-seres-vivos/capitulo_01_celulas-unidade-da-vida.md>)
  - [Cap. 2: Níveis de Organização Biológica](<Ciencias/6ano/unidade-5-celulas-e-organizacao-dos-seres-vivos/capitulo_02_niveis-de-organizacao-biologica.md>)

#### 8ano

- **Unidade 4 - Ligacoes Quimicas** (`Ciencias/8ano/unidade-4-ligacoes-quimicas/`)
  - [Cap. 1: Por que Átomos se Ligam](<Ciencias/8ano/unidade-4-ligacoes-quimicas/capitulo_01_por-que-atomos-se-ligam.md>)
  - [Cap. 2: Ligação Iônica](<Ciencias/8ano/unidade-4-ligacoes-quimicas/capitulo_02_ligacao-ionica.md>)
  - [Cap. 3: Ligação Covalente](<Ciencias/8ano/unidade-4-ligacoes-quimicas/capitulo_03_ligacao-covalente.md>)
  - [Cap. 4: Ligação Metálica](<Ciencias/8ano/unidade-4-ligacoes-quimicas/capitulo_04_ligacao-metalica.md>)
- **Unidade 5 - Reproducao e Desenvolvimento** (`Ciencias/8ano/unidade-5-reproducao-e-desenvolvimento/`)
  - [Cap. 1: Tipos de Reprodução](<Ciencias/8ano/unidade-5-reproducao-e-desenvolvimento/capitulo_01_tipos-de-reproducao.md>)
  - [Cap. 2: Reprodução em Plantas](<Ciencias/8ano/unidade-5-reproducao-e-desenvolvimento/capitulo_02_reproducao-em-plantas.md>)
  - [Cap. 3: Reprodução em Animais](<Ciencias/8ano/unidade-5-reproducao-e-desenvolvimento/capitulo_03_reproducao-em-animais.md>)

### Estatistica e Educacao Financeira

#### 6ano

- **Unidade 4 - Media Aritmetica e Probabilidade** (`Estatistica e Educacao Financeira/6ano/unidade-4-media-aritmetica-e-probabilidade/`)
  - [Cap. 1: Média Aritmética](<Estatistica e Educacao Financeira/6ano/unidade-4-media-aritmetica-e-probabilidade/capitulo_01_media-aritmetica.md>)
  - [Cap. 2: Espaço Amostral e Eventos](<Estatistica e Educacao Financeira/6ano/unidade-4-media-aritmetica-e-probabilidade/capitulo_02_espaco-amostral-e-eventos.md>)
  - [Cap. 3: Cálculo de Probabilidade](<Estatistica e Educacao Financeira/6ano/unidade-4-media-aritmetica-e-probabilidade/capitulo_03_calculo-de-probabilidade.md>)

#### 7ano

- **Unidade 4 - Construcao e Interpretacao de Graficos** (`Estatistica e Educacao Financeira/7ano/unidade-4-construcao-e-interpretacao-de-graficos/`)
  - [Cap. 1: Construção de Gráficos](<Estatistica e Educacao Financeira/7ano/unidade-4-construcao-e-interpretacao-de-graficos/capitulo_01_construcao-de-graficos.md>)
  - [Cap. 2: Interpretação de Gráficos](<Estatistica e Educacao Financeira/7ano/unidade-4-construcao-e-interpretacao-de-graficos/capitulo_02_interpretacao-de-graficos.md>)
  - [Cap. 3: Análise Crítica de Gráficos](<Estatistica e Educacao Financeira/7ano/unidade-4-construcao-e-interpretacao-de-graficos/capitulo_03_analise-critica-de-graficos.md>)
  - [Cap. 4: Comunicação de Dados](<Estatistica e Educacao Financeira/7ano/unidade-4-construcao-e-interpretacao-de-graficos/capitulo_04_comunicacao-de-dados.md>)

#### 8ano

- **Unidade 4 - Escalas e Aplicacoes Praticas** (`Estatistica e Educacao Financeira/8ano/unidade-4-escalas-e-aplicacoes-praticas/`)
  - [Cap. 1: Escalas](<Estatistica e Educacao Financeira/8ano/unidade-4-escalas-e-aplicacoes-praticas/capitulo_01_escalas.md>)
  - [Cap. 2: Aplicações de Escalas](<Estatistica e Educacao Financeira/8ano/unidade-4-escalas-e-aplicacoes-praticas/capitulo_02_aplicacoes-de-escalas.md>)
  - [Cap. 3: Juros Simples - Introdução](<Estatistica e Educacao Financeira/8ano/unidade-4-escalas-e-aplicacoes-praticas/capitulo_03_juros-simples-introducao.md>)

#### 9ano

- **Unidade 4 - Educacao Financeira Credito e Consumo** (`Estatistica e Educacao Financeira/9ano/unidade-4-educacao-financeira-credito-e-consumo/`)
  - [Cap. 1: Crédito e Empréstimos](<Estatistica e Educacao Financeira/9ano/unidade-4-educacao-financeira-credito-e-consumo/capitulo_01_credito-e-emprestimos.md>)
  - [Cap. 2: Cartão de Crédito](<Estatistica e Educacao Financeira/9ano/unidade-4-educacao-financeira-credito-e-consumo/capitulo_02_cartao-de-credito.md>)
  - [Cap. 3: Compras Parceladas](<Estatistica e Educacao Financeira/9ano/unidade-4-educacao-financeira-credito-e-consumo/capitulo_03_compras-parceladas.md>)
  - [Cap. 4: Tomada de Decisão Financeira](<Estatistica e Educacao Financeira/9ano/unidade-4-educacao-financeira-credito-e-consumo/capitulo_04_tomada-de-decisao-financeira.md>)

#### 1serie

- **Unidade 4 - Medidas de Tendencia Central e Educacao Financeira** (`Estatistica e Educacao Financeira/1serie/unidade-4-medidas-de-tendencia-central-e-educacao-financeira/`)
  - [Cap. 1: Medidas de Tendência Central](<Estatistica e Educacao Financeira/1serie/unidade-4-medidas-de-tendencia-central-e-educacao-financeira/capitulo_01_medidas-de-tendencia-central.md>)
  - [Cap. 2: Educação Financeira: Proporcionalidade e Juros](<Estatistica e Educacao Financeira/1serie/unidade-4-medidas-de-tendencia-central-e-educacao-financeira/capitulo_02_educacao-financeira-proporcionalidade-e-juros.md>)

#### 2serie

- **Unidade 4 - Educacao Financeira Juros Compostos** (`Estatistica e Educacao Financeira/2serie/unidade-4-educacao-financeira-juros-compostos/`)
  - [Cap. 1: Juros Compostos](<Estatistica e Educacao Financeira/2serie/unidade-4-educacao-financeira-juros-compostos/capitulo_01_juros-compostos.md>)
  - [Cap. 2: Aplicações Financeiras](<Estatistica e Educacao Financeira/2serie/unidade-4-educacao-financeira-juros-compostos/capitulo_02_aplicacoes-financeiras.md>)

#### 3serie

- **Unidade 4 - Sistemas de Amortizacao e Analise de Investimentos** (`Estatistica e Educacao Financeira/3serie/unidade-4-sistemas-de-amortizacao-e-analise-de-investimentos/`)
  - [Cap. 1: Sistemas de Amortização](<Estatistica e Educacao Financeira/3serie/unidade-4-sistemas-de-amortizacao-e-analise-de-investimentos/capitulo_01_sistemas-de-amortizacao.md>)
  - [Cap. 2: Análise de Investimentos](<Estatistica e Educacao Financeira/3serie/unidade-4-sistemas-de-amortizacao-e-analise-de-investimentos/capitulo_02_analise-de-investimentos.md>)

### Estudos Sociais

#### 4ano

- **Unidade 4 - Representacao do Espaco** (`Estudos Sociais/4ano/unidade-4-representacao-do-espaco/`)
  - [Cap. 1: Tipos de Mapas](<Estudos Sociais/4ano/unidade-4-representacao-do-espaco/capitulo_01_tipos-de-mapas.md>)
  - [Cap. 2: Orientação e Escala](<Estudos Sociais/4ano/unidade-4-representacao-do-espaco/capitulo_02_orientacao-e-escala.md>)

#### 5ano

- **Unidade 4 - Populacao Brasileira** (`Estudos Sociais/5ano/unidade-4-populacao-brasileira/`)
  - [Cap. 1: Características Demográficas](<Estudos Sociais/5ano/unidade-4-populacao-brasileira/capitulo_01_caracteristicas-demograficas.md>)
  - [Cap. 2: Diversidade e Migrações](<Estudos Sociais/5ano/unidade-4-populacao-brasileira/capitulo_02_diversidade-e-migracoes.md>)

#### 6ano

- **Unidade 4 - Egito e Americas Antigas** (`Estudos Sociais/6ano/unidade-4-egito-e-americas-antigas/`)
  - [Cap. 1: Egito Antigo](<Estudos Sociais/6ano/unidade-4-egito-e-americas-antigas/capitulo_01_egito-antigo.md>)
  - [Cap. 2: Maias, Astecas e Incas](<Estudos Sociais/6ano/unidade-4-egito-e-americas-antigas/capitulo_02_maias-astecas-e-incas.md>)

#### 7ano

- **Unidade 4 - Feudalismo** (`Estudos Sociais/7ano/unidade-4-feudalismo/`)
  - [Cap. 1: Império Carolíngio e Invasões](<Estudos Sociais/7ano/unidade-4-feudalismo/capitulo_01_imperio-carolingio-e-invasoes.md>)
  - [Cap. 2: Estrutura do Feudalismo](<Estudos Sociais/7ano/unidade-4-feudalismo/capitulo_02_estrutura-do-feudalismo.md>)
  - [Cap. 3: Igreja Medieval e Cultura](<Estudos Sociais/7ano/unidade-4-feudalismo/capitulo_03_igreja-medieval-e-cultura.md>)

#### 8ano

- **Unidade 4 - Revolucoes Industriais e Politicas** (`Estudos Sociais/8ano/unidade-4-revolucoes-industriais-e-politicas/`)
  - [Cap. 1: Revolução Industrial](<Estudos Sociais/8ano/unidade-4-revolucoes-industriais-e-politicas/capitulo_01_revolucao-industrial.md>)
  - [Cap. 2: Revolução Francesa](<Estudos Sociais/8ano/unidade-4-revolucoes-industriais-e-politicas/capitulo_02_revolucao-francesa.md>)
  - [Cap. 3: Era Napoleônica e Congresso de Viena](<Estudos Sociais/8ano/unidade-4-revolucoes-industriais-e-politicas/capitulo_03_era-napoleonica-e-congresso-de-viena.md>)
  - [Cap. 4: Movimentos Operários e Ideias Socialistas](<Estudos Sociais/8ano/unidade-4-revolucoes-industriais-e-politicas/capitulo_04_movimentos-operarios-e-ideias-socialistas.md>)

#### 9ano

- **Unidade 4 - Era Vargas e Guerra Fria** (`Estudos Sociais/9ano/unidade-4-era-vargas-e-guerra-fria/`)
  - [Cap. 1: Era Vargas](<Estudos Sociais/9ano/unidade-4-era-vargas-e-guerra-fria/capitulo_01_era-vargas.md>)
  - [Cap. 2: Guerra Fria](<Estudos Sociais/9ano/unidade-4-era-vargas-e-guerra-fria/capitulo_02_guerra-fria.md>)
  - [Cap. 3: Descolonização da África e Ásia](<Estudos Sociais/9ano/unidade-4-era-vargas-e-guerra-fria/capitulo_03_descolonizacao-da-africa-e-asia.md>)
  - [Cap. 4: Fim da Guerra Fria](<Estudos Sociais/9ano/unidade-4-era-vargas-e-guerra-fria/capitulo_04_fim-da-guerra-fria.md>)

### Filosofia

#### 2serie

- **Bimestre 4 - Pos Modernidade e Apologetica** (`Filosofia/2serie/bimestre-4-pos-modernidade-e-apologetica/`)
  - [Cap. 7: Pós-Modernismo e Desconstrução](<Filosofia/2serie/bimestre-4-pos-modernidade-e-apologetica/capitulo_07_pos-modernismo-e-desconstrucao.md>)
  - [Cap. 8: Apologética Cristã Contemporânea](<Filosofia/2serie/bimestre-4-pos-modernidade-e-apologetica/capitulo_08_apologetica-crista-contemporanea.md>)

### Fisica

#### 6ano

- **Unidade 4 - Velocidade** (`Fisica/6ano/unidade-4-velocidade/`)
  - [Cap. 1: Conceito de Velocidade](<Fisica/6ano/unidade-4-velocidade/capitulo_01_conceito-de-velocidade.md>)
  - [Cap. 2: Unidades de Velocidade](<Fisica/6ano/unidade-4-velocidade/capitulo_02_unidades-de-velocidade.md>)

#### 7ano

- **Unidade 4 - Calor e Transferencia de Calor** (`Fisica/7ano/unidade-4-calor-e-transferencia-de-calor/`)
  - [Cap. 1: Calor e Equilíbrio Térmico](<Fisica/7ano/unidade-4-calor-e-transferencia-de-calor/capitulo_01_calor-e-equilibrio-termico.md>)
  - [Cap. 2: Formas de Transferência de Calor](<Fisica/7ano/unidade-4-calor-e-transferencia-de-calor/capitulo_02_formas-de-transferencia-de-calor.md>)
  - [Cap. 3: Mudanças de Estado Físico](<Fisica/7ano/unidade-4-calor-e-transferencia-de-calor/capitulo_03_mudancas-de-estado-fisico.md>)

#### 8ano

- **Unidade 4 - Fontes e Sustentabilidade** (`Fisica/8ano/unidade-4-fontes-e-sustentabilidade/`)
  - [Cap. 1: Fontes de Energia](<Fisica/8ano/unidade-4-fontes-e-sustentabilidade/capitulo_01_fontes-de-energia.md>)
  - [Cap. 2: Usinas de Geração de Energia](<Fisica/8ano/unidade-4-fontes-e-sustentabilidade/capitulo_02_usinas-de-geracao-de-energia.md>)
  - [Cap. 3: Uso Consciente de Energia](<Fisica/8ano/unidade-4-fontes-e-sustentabilidade/capitulo_03_uso-consciente-de-energia.md>)

#### 9ano

- **Unidade 4 - Gravitacao Universal** (`Fisica/9ano/unidade-4-gravitacao-universal/`)
  - [Cap. 1: Lei da Gravitação Universal](<Fisica/9ano/unidade-4-gravitacao-universal/capitulo_01_lei-da-gravitacao-universal.md>)
  - [Cap. 2: Sistema Solar, Leis de Kepler e Vida no Universo](<Fisica/9ano/unidade-4-gravitacao-universal/capitulo_02_sistema-solar-leis-de-kepler-e-vida-no-universo.md>)
  - [Cap. 3: Ciclo Evolutivo do Sol](<Fisica/9ano/unidade-4-gravitacao-universal/capitulo_03_ciclo-evolutivo-do-sol.md>)

#### 1serie

- **Unidade 4 - Cinematica Vetorial** (`Fisica/1serie/unidade-4-cinematica-vetorial/`)
  - [Cap. 7: Movimentos Compostos](<Fisica/1serie/unidade-4-cinematica-vetorial/capitulo_07_movimentos-compostos.md>)

#### 2serie

- **Unidade 4 - Termodinamica** (`Fisica/2serie/unidade-4-termodinamica/`)
  - [Cap. 7: Leis da Termodinâmica](<Fisica/2serie/unidade-4-termodinamica/capitulo_07_leis-da-termodinamica.md>)
  - [Cap. 8: Máquinas Térmicas](<Fisica/2serie/unidade-4-termodinamica/capitulo_08_maquinas-termicas.md>)

#### 3serie

- **Unidade 4 - Geradores e Circuitos** (`Fisica/3serie/unidade-4-geradores-e-circuitos/`)
  - [Cap. 7: Geradores e Receptores](<Fisica/3serie/unidade-4-geradores-e-circuitos/capitulo_07_geradores-e-receptores.md>)
  - [Cap. 8: Medidas Elétricas](<Fisica/3serie/unidade-4-geradores-e-circuitos/capitulo_08_medidas-eletricas.md>)

### Geografia

#### 1serie

- **Unidade 4 - Relevo e Hidrosfera** (`Geografia/1serie/unidade-4-relevo-e-hidrosfera/`)
  - [Cap. 1: Formas de Relevo](<Geografia/1serie/unidade-4-relevo-e-hidrosfera/capitulo_01_formas-de-relevo.md>)
  - [Cap. 2: Relevo Brasileiro](<Geografia/1serie/unidade-4-relevo-e-hidrosfera/capitulo_02_relevo-brasileiro.md>)
  - [Cap. 3: Relevo Submarino](<Geografia/1serie/unidade-4-relevo-e-hidrosfera/capitulo_03_relevo-submarino.md>)
  - [Cap. 4: Relevo e Ocupação Humana](<Geografia/1serie/unidade-4-relevo-e-hidrosfera/capitulo_04_relevo-e-ocupacao-humana.md>)
  - [Cap. 5: Riscos Geológicos e Sociedade](<Geografia/1serie/unidade-4-relevo-e-hidrosfera/capitulo_05_riscos-geologicos-e-sociedade.md>)
  - [Cap. 6: Águas Subterrâneas](<Geografia/1serie/unidade-4-relevo-e-hidrosfera/capitulo_06_aguas-subterraneas.md>)
  - [Cap. 7: Lagos e Lagoas](<Geografia/1serie/unidade-4-relevo-e-hidrosfera/capitulo_07_lagos-e-lagoas.md>)

#### 2serie

- **Unidade 4 - Espaco Agrario e Conflitos** (`Geografia/2serie/unidade-4-espaco-agrario-e-conflitos/`)
  - [Cap. 1: Estrutura Fundiária Brasileira](<Geografia/2serie/unidade-4-espaco-agrario-e-conflitos/capitulo_01_estrutura-fundiaria-brasileira.md>)
  - [Cap. 2: Sistemas Agrícolas](<Geografia/2serie/unidade-4-espaco-agrario-e-conflitos/capitulo_02_sistemas-agricolas.md>)
  - [Cap. 3: Agricultura no Brasil](<Geografia/2serie/unidade-4-espaco-agrario-e-conflitos/capitulo_03_agricultura-no-brasil.md>)
  - [Cap. 4: Pecuária](<Geografia/2serie/unidade-4-espaco-agrario-e-conflitos/capitulo_04_pecuaria.md>)
  - [Cap. 5: Questão Agrária e Conflitos](<Geografia/2serie/unidade-4-espaco-agrario-e-conflitos/capitulo_05_questao-agraria-e-conflitos.md>)

#### 3serie

- **Unidade 4 - Desigualdades Regionais e Integracao Nacional** (`Geografia/3serie/unidade-4-desigualdades-regionais-e-integracao-nacional/`)
  - [Cap. 1: Complexos Regionais Geoeconômicos](<Geografia/3serie/unidade-4-desigualdades-regionais-e-integracao-nacional/capitulo_01_complexos-regionais-geoeconomicos.md>)
  - [Cap. 2: Indicadores Regionais](<Geografia/3serie/unidade-4-desigualdades-regionais-e-integracao-nacional/capitulo_02_indicadores-regionais.md>)
  - [Cap. 3: Desigualdades Regionais Brasileiras](<Geografia/3serie/unidade-4-desigualdades-regionais-e-integracao-nacional/capitulo_03_desigualdades-regionais-brasileiras.md>)
  - [Cap. 4: Políticas de Desenvolvimento Regional](<Geografia/3serie/unidade-4-desigualdades-regionais-e-integracao-nacional/capitulo_04_politicas-de-desenvolvimento-regional.md>)
  - [Cap. 5: Integração Nacional](<Geografia/3serie/unidade-4-desigualdades-regionais-e-integracao-nacional/capitulo_05_integracao-nacional.md>)
  - [Cap. 6: Questões Indígenas no Brasil Contemporâneo](<Geografia/3serie/unidade-4-desigualdades-regionais-e-integracao-nacional/capitulo_06_questoes-indigenas-no-brasil-contemporaneo.md>)
  - [Cap. 7: Geografia Cultural Brasileira](<Geografia/3serie/unidade-4-desigualdades-regionais-e-integracao-nacional/capitulo_07_geografia-cultural-brasileira.md>)

### Geometria

#### 6ano

- **Unidade 4 - Triangulos e Sistema de Medidas II** (`Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/`)
  - [Cap. 1: Elementos dos Triângulos](<Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/capitulo_01_elementos-dos-triangulos.md>)
  - [Cap. 2: Classificação dos Triângulos](<Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/capitulo_02_classificacao-dos-triangulos.md>)
  - [Cap. 3: Propriedades dos Triângulos](<Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/capitulo_03_propriedades-dos-triangulos.md>)
  - [Cap. 4: Medidas de Capacidade](<Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/capitulo_04_medidas-de-capacidade.md>)
  - [Cap. 5: Medidas de Tempo](<Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/capitulo_05_medidas-de-tempo.md>)

#### 7ano

- **Unidade 4 - Quadrilateros e Poligonos Regulares** (`Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares/`)
  - [Cap. 1: Classificação de Quadriláteros](<Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares/capitulo_01_classificacao-de-quadrilateros.md>)
  - [Cap. 2: Propriedades dos Quadriláteros](<Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares/capitulo_02_propriedades-dos-quadrilateros.md>)
  - [Cap. 3: Ângulos Internos de Polígonos Regulares](<Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares/capitulo_03_angulos-internos-de-poligonos-regulares.md>)
  - [Cap. 4: Construção de Polígonos Regulares](<Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares/capitulo_04_construcao-de-poligonos-regulares.md>)

#### 8ano

- **Unidade 4 - Poligonos e Construcao de Poligonos Regulares** (`Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/`)
  - [Cap. 1: Polígonos: Ângulos](<Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/capitulo_01_poligonos-angulos.md>)
  - [Cap. 2: Polígonos Regulares](<Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/capitulo_02_poligonos-regulares.md>)
  - [Cap. 3: Construção de Polígonos Regulares](<Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/capitulo_03_construcao-de-poligonos-regulares.md>)

#### 9ano

- **Unidade 4 - Poligonos e Construcoes Geometricas** (`Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/`)
  - [Cap. 1: Polígonos Regulares](<Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/capitulo_01_poligonos-regulares.md>)
  - [Cap. 2: Construção de Polígonos Regulares](<Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/capitulo_02_construcao-de-poligonos-regulares.md>)
  - [Cap. 3: Algoritmos de Construção](<Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/capitulo_03_algoritmos-de-construcao.md>)
  - [Cap. 4: Geometria Analítica Básica](<Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/capitulo_04_geometria-analitica-basica.md>)

#### 1serie

- **Unidade 4 - Quadrilateros** (`Geometria/1serie/unidade-4-quadrilateros/`)
  - [Cap. 1: Classificação e Propriedades Gerais](<Geometria/1serie/unidade-4-quadrilateros/capitulo_01_classificacao-e-propriedades-gerais.md>)
  - [Cap. 2: Paralelogramos e Trapézios](<Geometria/1serie/unidade-4-quadrilateros/capitulo_02_paralelogramos-e-trapezios.md>)

#### 2serie

- **Unidade 4 - Piramides** (`Geometria/2serie/unidade-4-piramides/`)
  - [Cap. 1: Elementos e Classificação](<Geometria/2serie/unidade-4-piramides/capitulo_01_elementos-e-classificacao.md>)
  - [Cap. 2: Áreas, Volumes e Tronco de Pirâmide](<Geometria/2serie/unidade-4-piramides/capitulo_02_areas-volumes-e-tronco-de-piramide.md>)

### Historia

#### 1serie

- **Unidade 4 - Apogeu e Declinio da Grecia Classica** (`Historia/1serie/unidade-4-apogeu-e-declinio-da-grecia-classica/`)
  - [Cap. 1: O Período Clássico](<Historia/1serie/unidade-4-apogeu-e-declinio-da-grecia-classica/capitulo_01_o-periodo-classico.md>)
  - [Cap. 2: O Período Helenístico](<Historia/1serie/unidade-4-apogeu-e-declinio-da-grecia-classica/capitulo_02_o-periodo-helenistico.md>)
  - [Cap. 3: Cultura e Legados da Grécia](<Historia/1serie/unidade-4-apogeu-e-declinio-da-grecia-classica/capitulo_03_cultura-e-legados-da-grecia.md>)

#### 2serie

- **Unidade 4 - Periodo Regencial e Segundo Reinado** (`Historia/2serie/unidade-4-periodo-regencial-e-segundo-reinado/`)
  - [Cap. 1: Período Regencial (1831-1840)](<Historia/2serie/unidade-4-periodo-regencial-e-segundo-reinado/capitulo_01_periodo-regencial-1831-1840.md>)
  - [Cap. 2: Revoltas Regenciais](<Historia/2serie/unidade-4-periodo-regencial-e-segundo-reinado/capitulo_02_revoltas-regenciais.md>)
  - [Cap. 3: O Golpe da Maioridade](<Historia/2serie/unidade-4-periodo-regencial-e-segundo-reinado/capitulo_03_o-golpe-da-maioridade.md>)

#### 3serie

- **Unidade 4 - Guerra Fria e Descolonizacoes** (`Historia/3serie/unidade-4-guerra-fria-e-descolonizacoes/`)
  - [Cap. 1: Guerra Fria: Conceito e Bipolarização](<Historia/3serie/unidade-4-guerra-fria-e-descolonizacoes/capitulo_01_guerra-fria-conceito-e-bipolarizacao.md>)
  - [Cap. 2: Principais Conflitos da Guerra Fria](<Historia/3serie/unidade-4-guerra-fria-e-descolonizacoes/capitulo_02_principais-conflitos-da-guerra-fria.md>)
  - [Cap. 3: Descolonização da Ásia](<Historia/3serie/unidade-4-guerra-fria-e-descolonizacoes/capitulo_03_descolonizacao-da-asia.md>)
  - [Cap. 4: Descolonização da África](<Historia/3serie/unidade-4-guerra-fria-e-descolonizacoes/capitulo_04_descolonizacao-da-africa.md>)

### Matematica

#### 4ano

- **Unidade 4 - Fracoes Decimais e Plano Cartesiano** (`Matematica/4ano/unidade-4-fracoes-decimais-e-plano-cartesiano/`)
  - [Cap. 1: Propriedades das Operações](<Matematica/4ano/unidade-4-fracoes-decimais-e-plano-cartesiano/capitulo_01_propriedades-das-operacoes.md>)
  - [Cap. 2: Frações Unitárias](<Matematica/4ano/unidade-4-fracoes-decimais-e-plano-cartesiano/capitulo_02_fracoes-unitarias.md>)
  - [Cap. 3: Números Decimais](<Matematica/4ano/unidade-4-fracoes-decimais-e-plano-cartesiano/capitulo_03_numeros-decimais.md>)
  - [Cap. 4: Malha Quadriculada](<Matematica/4ano/unidade-4-fracoes-decimais-e-plano-cartesiano/capitulo_04_malha-quadriculada.md>)
  - [Cap. 5: Introdução ao Plano Cartesiano](<Matematica/4ano/unidade-4-fracoes-decimais-e-plano-cartesiano/capitulo_05_introducao-ao-plano-cartesiano.md>)
  - [Cap. 6: Representações e Trajetos](<Matematica/4ano/unidade-4-fracoes-decimais-e-plano-cartesiano/capitulo_06_representacoes-e-trajetos.md>)

#### 5ano

- **Unidade 4 - Fracoes Porcentagem e Solidos Geometricos** (`Matematica/5ano/unidade-4-fracoes-porcentagem-e-solidos-geometricos/`)
  - [Cap. 1: Operações com Frações](<Matematica/5ano/unidade-4-fracoes-porcentagem-e-solidos-geometricos/capitulo_01_operacoes-com-fracoes.md>)
  - [Cap. 2: Porcentagem](<Matematica/5ano/unidade-4-fracoes-porcentagem-e-solidos-geometricos/capitulo_02_porcentagem.md>)
  - [Cap. 3: Sólidos Geométricos e Planificações](<Matematica/5ano/unidade-4-fracoes-porcentagem-e-solidos-geometricos/capitulo_03_solidos-geometricos-e-planificacoes.md>)
  - [Cap. 4: Problemas de Contagem](<Matematica/5ano/unidade-4-fracoes-porcentagem-e-solidos-geometricos/capitulo_04_problemas-de-contagem.md>)

#### 6ano

- **Unidade 4 - Divisibilidade** (`Matematica/6ano/unidade-4-divisibilidade/`)
  - [Cap. 1: Múltiplos e Divisores](<Matematica/6ano/unidade-4-divisibilidade/capitulo_01_multiplos-e-divisores.md>)
  - [Cap. 2: Primos e Compostos](<Matematica/6ano/unidade-4-divisibilidade/capitulo_02_primos-e-compostos.md>)
  - [Cap. 3: MDC e MMC](<Matematica/6ano/unidade-4-divisibilidade/capitulo_03_mdc-e-mmc.md>)

#### 7ano

- **Unidade 4 - Introducao Algebra** (`Matematica/7ano/unidade-4-introducao-algebra/`)
  - [Cap. 1: Variável e Expressões Algébricas](<Matematica/7ano/unidade-4-introducao-algebra/capitulo_01_variavel-e-expressoes-algebricas.md>)
  - [Cap. 2: Monômios e Polinômios](<Matematica/7ano/unidade-4-introducao-algebra/capitulo_02_monomios-e-polinomios.md>)
  - [Cap. 3: Operações com Expressões Algébricas](<Matematica/7ano/unidade-4-introducao-algebra/capitulo_03_operacoes-com-expressoes-algebricas.md>)
  - [Cap. 4: Sequências e Regularidades](<Matematica/7ano/unidade-4-introducao-algebra/capitulo_04_sequencias-e-regularidades.md>)

#### 8ano

- **Unidade 4 - Equacoes 1 Grau e Representacao Grafica** (`Matematica/8ano/unidade-4-equacoes-1-grau-e-representacao-grafica/`)
  - [Cap. 1: EQUAÇÕES DO 1º GRAU: APROFUNDAMENTO](<Matematica/8ano/unidade-4-equacoes-1-grau-e-representacao-grafica/capitulo_01_equacoes-do-1o-grau-aprofundamento.md>)
  - [Cap. 2: Equação Linear com Duas Incógnitas](<Matematica/8ano/unidade-4-equacoes-1-grau-e-representacao-grafica/capitulo_02_equacao-linear-com-duas-incognitas.md>)
  - [Cap. 3: Equação Linear e Reta no Plano Cartesiano](<Matematica/8ano/unidade-4-equacoes-1-grau-e-representacao-grafica/capitulo_03_equacao-linear-e-reta-no-plano-cartesiano.md>)

#### 9ano

- **Unidade 4 - Funcao Afim** (`Matematica/9ano/unidade-4-funcao-afim/`)
  - [Cap. 1: Definição e Gráfico](<Matematica/9ano/unidade-4-funcao-afim/capitulo_01_definicao-e-grafico.md>)
  - [Cap. 2: Coeficientes e Comportamento](<Matematica/9ano/unidade-4-funcao-afim/capitulo_02_coeficientes-e-comportamento.md>)
  - [Cap. 3: Zero e Estudo do Sinal](<Matematica/9ano/unidade-4-funcao-afim/capitulo_03_zero-e-estudo-do-sinal.md>)
  - [Cap. 4: Casos Particulares e Aplicações](<Matematica/9ano/unidade-4-funcao-afim/capitulo_04_casos-particulares-e-aplicacoes.md>)

#### 1serie

- **Unidade 4 - Funcoes e Funcao Afim** (`Matematica/1serie/unidade-4-funcoes-e-funcao-afim/`)
  - [Cap. 1: Conceito de Função](<Matematica/1serie/unidade-4-funcoes-e-funcao-afim/capitulo_01_conceito-de-funcao.md>)
  - [Cap. 2: Função Afim](<Matematica/1serie/unidade-4-funcoes-e-funcao-afim/capitulo_02_funcao-afim.md>)

#### 2serie

- **Unidade 4 - Determinantes** (`Matematica/2serie/unidade-4-determinantes/`)
  - [Cap. 1: Cálculo de Determinantes](<Matematica/2serie/unidade-4-determinantes/capitulo_01_calculo-de-determinantes.md>)
  - [Cap. 2: Propriedades e Aplicações](<Matematica/2serie/unidade-4-determinantes/capitulo_02_propriedades-e-aplicacoes.md>)

### Portugues 1

#### 4ano

- **Unidade 4 - Verbos** (`Portugues 1/4ano/unidade-4-verbos/`)
  - [Cap. 1: Tempos Verbais do Indicativo](<Portugues 1/4ano/unidade-4-verbos/capitulo_01_tempos-verbais-do-indicativo.md>)
  - [Cap. 2: Concordância Verbal](<Portugues 1/4ano/unidade-4-verbos/capitulo_02_concordancia-verbal.md>)

#### 5ano

- **Unidade 4 - Preposicoes Interjeicoes e Conjuncoes** (`Portugues 1/5ano/unidade-4-preposicoes-interjeicoes-e-conjuncoes/`)
  - [Cap. 1: Preposições](<Portugues 1/5ano/unidade-4-preposicoes-interjeicoes-e-conjuncoes/capitulo_01_preposicoes.md>)
  - [Cap. 2: Interjeições](<Portugues 1/5ano/unidade-4-preposicoes-interjeicoes-e-conjuncoes/capitulo_02_interjeicoes.md>)
  - [Cap. 3: Conjunções e Relações Semânticas](<Portugues 1/5ano/unidade-4-preposicoes-interjeicoes-e-conjuncoes/capitulo_03_conjuncoes-e-relacoes-semanticas.md>)

#### 6ano

- **Unidade 4 - Adjetivo Numeral e Coesao** (`Portugues 1/6ano/unidade-4-adjetivo-numeral-e-coesao/`)
  - [Cap. 1: Adjetivo](<Portugues 1/6ano/unidade-4-adjetivo-numeral-e-coesao/capitulo_01_adjetivo.md>)
  - [Cap. 2: Numeral](<Portugues 1/6ano/unidade-4-adjetivo-numeral-e-coesao/capitulo_02_numeral.md>)
  - [Cap. 3: Coesão Referencial](<Portugues 1/6ano/unidade-4-adjetivo-numeral-e-coesao/capitulo_03_coesao-referencial.md>)

#### 7ano

- **Unidade 4 - Verbo Classificacao e Modos** (`Portugues 1/7ano/unidade-4-verbo-classificacao-e-modos/`)
  - [Cap. 1: Conceito e Classificação dos Verbos](<Portugues 1/7ano/unidade-4-verbo-classificacao-e-modos/capitulo_01_conceito-e-classificacao-dos-verbos.md>)
  - [Cap. 2: Verbos Auxiliares e Locuções Verbais](<Portugues 1/7ano/unidade-4-verbo-classificacao-e-modos/capitulo_02_verbos-auxiliares-e-locucoes-verbais.md>)
  - [Cap. 3: Modo Indicativo](<Portugues 1/7ano/unidade-4-verbo-classificacao-e-modos/capitulo_03_modo-indicativo.md>)
  - [Cap. 4: Modo Subjuntivo e Imperativo](<Portugues 1/7ano/unidade-4-verbo-classificacao-e-modos/capitulo_04_modo-subjuntivo-e-imperativo.md>)

#### 8ano

- **Unidade 4 - Introducao a Sintaxe** (`Portugues 1/8ano/unidade-4-introducao-a-sintaxe/`)
  - [Cap. 1: Frase, Oração e Período](<Portugues 1/8ano/unidade-4-introducao-a-sintaxe/capitulo_01_frase-oracao-e-periodo.md>)
  - [Cap. 2: Variação Linguística](<Portugues 1/8ano/unidade-4-introducao-a-sintaxe/capitulo_02_variacao-linguistica.md>)

#### 9ano

- **Unidade 4 - Periodo Composto** (`Portugues 1/9ano/unidade-4-periodo-composto/`)
  - [Cap. 1: Conjunções e Orações Coordenadas](<Portugues 1/9ano/unidade-4-periodo-composto/capitulo_01_conjuncoes-e-oracoes-coordenadas.md>)
  - [Cap. 2: Conjunções e Orações Subordinadas](<Portugues 1/9ano/unidade-4-periodo-composto/capitulo_02_conjuncoes-e-oracoes-subordinadas.md>)
  - [Cap. 3: Orações Adjetivas](<Portugues 1/9ano/unidade-4-periodo-composto/capitulo_03_oracoes-adjetivas.md>)

#### 1serie

- **Unidade 4 - Estrutura e Formacao de Palavras** (`Portugues 1/1serie/unidade-4-estrutura-e-formacao-de-palavras/`)
  - [Cap. 1: Elementos Mórficos](<Portugues 1/1serie/unidade-4-estrutura-e-formacao-de-palavras/capitulo_01_elementos-morficos.md>)
  - [Cap. 2: Processos de Formação de Palavras](<Portugues 1/1serie/unidade-4-estrutura-e-formacao-de-palavras/capitulo_02_processos-de-formacao-de-palavras.md>)

#### 2serie

- **Unidade 4 - Crase** (`Portugues 1/2serie/unidade-4-crase/`)
  - [Cap. 1: Conceito e Casos Obrigatórios](<Portugues 1/2serie/unidade-4-crase/capitulo_01_conceito-e-casos-obrigatorios.md>)
  - [Cap. 2: Casos Proibidos e Facultativos](<Portugues 1/2serie/unidade-4-crase/capitulo_02_casos-proibidos-e-facultativos.md>)

#### 3serie

- **Unidade 4 - Oracoes Subordinadas Adverbiais** (`Portugues 1/3serie/unidade-4-oracoes-subordinadas-adverbiais/`)
  - [Cap. 1: Classificação das Orações Adverbiais](<Portugues 1/3serie/unidade-4-oracoes-subordinadas-adverbiais/capitulo_01_classificacao-das-oracoes-adverbiais.md>)
  - [Cap. 2: Orações Adverbiais Reduzidas e Pontuação](<Portugues 1/3serie/unidade-4-oracoes-subordinadas-adverbiais/capitulo_02_oracoes-adverbiais-reduzidas-e-pontuacao.md>)

### Quimica

#### 9ano

- **Unidade 4 - Velocidade e Combustao** (`Quimica/9ano/unidade-4-velocidade-e-combustao/`)
  - [Cap. 1: Velocidade das Reações](<Quimica/9ano/unidade-4-velocidade-e-combustao/capitulo_01_velocidade-das-reacoes.md>)
  - [Cap. 2: Reações de Combustão](<Quimica/9ano/unidade-4-velocidade-e-combustao/capitulo_02_reacoes-de-combustao.md>)

#### 1serie

- **Unidade 4 - Grandezas Quimicas Fundamentais** (`Quimica/1serie/unidade-4-grandezas-quimicas-fundamentais/`)
  - [Cap. 1: Massa Atômica e Molecular](<Quimica/1serie/unidade-4-grandezas-quimicas-fundamentais/capitulo_01_massa-atomica-e-molecular.md>)
  - [Cap. 2: Quantidade de Matéria](<Quimica/1serie/unidade-4-grandezas-quimicas-fundamentais/capitulo_02_quantidade-de-materia.md>)

#### 2serie

- **Unidade 4 - Cinetica Quimica** (`Quimica/2serie/unidade-4-cinetica-quimica/`)
  - [Cap. 1: Velocidade das Reações](<Quimica/2serie/unidade-4-cinetica-quimica/capitulo_01_velocidade-das-reacoes.md>)
  - [Cap. 2: Fatores que Afetam a Velocidade](<Quimica/2serie/unidade-4-cinetica-quimica/capitulo_02_fatores-que-afetam-a-velocidade.md>)
  - [Cap. 3: Teoria das Colisões](<Quimica/2serie/unidade-4-cinetica-quimica/capitulo_03_teoria-das-colisoes.md>)
  - [Cap. 4: Lei de Velocidade e Catálise](<Quimica/2serie/unidade-4-cinetica-quimica/capitulo_04_lei-de-velocidade-e-catalise.md>)

#### 3serie

- **Unidade 4 - Funcoes Nitrogenadas e Mistas** (`Quimica/3serie/unidade-4-funcoes-nitrogenadas-e-mistas/`)
  - [Cap. 1: Aminas](<Quimica/3serie/unidade-4-funcoes-nitrogenadas-e-mistas/capitulo_01_aminas.md>)
  - [Cap. 2: Amidas](<Quimica/3serie/unidade-4-funcoes-nitrogenadas-e-mistas/capitulo_02_amidas.md>)
  - [Cap. 3: Outras Funções](<Quimica/3serie/unidade-4-funcoes-nitrogenadas-e-mistas/capitulo_03_outras-funcoes.md>)

### Sociologia

#### 3serie

- **Bimestre 4 - Sociologia Brasileira e Leitura Crista** (`Sociologia/3serie/bimestre-4-sociologia-brasileira-e-leitura-crista/`)
  - [Cap. 7: Pensadores Brasileiros: Freyre, Sérgio Buarque e Florestan Fernandes](<Sociologia/3serie/bimestre-4-sociologia-brasileira-e-leitura-crista/capitulo_07_pensadores-brasileiros-freyre-sergio-buarque-e-florestan-fernandes.md>)
  - [Cap. 8: Brasil sob a Lente Cristã: Síntese Sociológica Apologética](<Sociologia/3serie/bimestre-4-sociologia-brasileira-e-leitura-crista/capitulo_08_brasil-sob-a-lente-crista-sintese-sociologica-apologetica.md>)
<!-- INVENTARIO_CONTEUDOS_FIM -->

## Documentos de apoio

- Documentos de organização: `_legado/documentos-organizacao-2026-05-01/`.
- Relatórios de organização: `_legado/relatorios-organizacao-2026-05-01/`.

## Objetivo final

O objetivo deste projeto é manter uma base organizada para produção contínua de material didático, conectando planejamento, autoria automatizada e armazenamento dos conteúdos finalizados dentro da própria disciplina.
