# Controle de Conteudos

Ultima atualizacao: 2026-04-29 23:52 -03

Este arquivo controla o estado dos blueprints do repositorio. Sempre que houver criacao, remocao, renomeacao ou alteracao relevante em `blueprints/`, este controle deve ser atualizado no mesmo commit.

## Regras de Atualizacao

- Atualizar a data de `Ultima atualizacao`.
- Atualizar os totais gerais quando arquivos forem criados ou removidos.
- Atualizar a lista de pendencias quando uma unidade ou bimestre for preenchido.
- Registrar limpezas estruturais, como remocao de placeholders duplicados.
- Considerar como blueprint real apenas arquivos `blueprint_*.md`; arquivos `.gitkeep` sao apenas placeholders.

## Totais Atuais

| Item | Quantidade |
| --- | ---: |
| Diretorios de unidade/bimestre | 622 |
| Arquivos `blueprint_*.md` | 239 |
| Arquivos `blueprint_unidade.md` | 64 |
| Arquivos `blueprint_capitulo_*.md` | 175 |
| Placeholders `.gitkeep` | 588 |

## Pendencias da Unidade 4

Unidades 4 ainda sem nenhum arquivo `blueprint_*.md`: 39.

- `blueprints/Ciencias/1ano/unidade-4-respeito-e-diversidade`
- `blueprints/Ciencias/2ano/unidade-4-crescimento-das-plantas`
- `blueprints/Ciencias/3ano/unidade-4-classificacao-dos-seres-vivos`
- `blueprints/Estudos Sociais/1ano/unidade-4-convivendo-em-familia`
- `blueprints/Estudos Sociais/2ano/unidade-4-o-que-tem-no-bairro`
- `blueprints/Estudos Sociais/3ano/unidade-4-organizacao-do-municipio`
- `blueprints/Fisica/1serie/unidade-4-cinematica-vetorial`
- `blueprints/Fisica/2serie/unidade-4-termodinamica`
- `blueprints/Fisica/3serie/unidade-4-geradores-e-circuitos`
- `blueprints/Fisica/6ano/unidade-4-velocidade`
- `blueprints/Fisica/7ano/unidade-4-calor-e-equilibrio-termico-bncc-ef07ci02-ef07ci03-ef07ci04`
- `blueprints/Fisica/8ano/unidade-4-fontes-e-sustentabilidade`
- `blueprints/Fisica/9ano/unidade-4-gravitacao-universal`
- `blueprints/Geometria/1serie/unidade-4-quadrilateros`
- `blueprints/Geometria/2serie/unidade-4-piramides`
- `blueprints/Geometria/3serie/unidade-4-conicas-elipse`
- `blueprints/Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii`
- `blueprints/Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares`
- `blueprints/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares`
- `blueprints/Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas`
- `blueprints/Matematica/1serie/unidade-4-introducao-as-funcoes-e-funcao-afim`
- `blueprints/Matematica/2serie/unidade-4-determinantes`
- `blueprints/Matematica/3serie/unidade-4-raizes-complexas-e-aplicacoes`
- `blueprints/Matematica/4ano/unidade-4-fracoes-decimais-e-plano-cartesiano`
- `blueprints/Matematica/5ano/unidade-4-fracoes-porcentagem-e-solidos-geometricos`
- `blueprints/Matematica/6ano/unidade-4-divisibilidade`
- `blueprints/Matematica/7ano/unidade-4-introducao-a-algebra`
- `blueprints/Matematica/8ano/unidade-4-equacoes-do-1-grau-e-representacao-grafica`
- `blueprints/Matematica/9ano/unidade-4-funcao-afim`
- `blueprints/Portugues 1/1ano/unidade-4-manipulacao-fonologica`
- `blueprints/Portugues 1/2ano/unidade-4-regularidades-contextuais-e-nasalidade`
- `blueprints/Portugues 1/3ano/unidade-4-acentuacao-e-dicionario`
- `blueprints/Portugues 2/1serie/unidade-4-producao-textual-texto-narrativo`
- `blueprints/Portugues 2/2serie/unidade-4-oralidade-debate-literario`
- `blueprints/Portugues 2/3serie/unidade-4-coesao-coerencia-e-repertorio`
- `blueprints/Quimica/1serie/unidade-4-grandezas-quimicas-fundamentais`
- `blueprints/Quimica/2serie/unidade-4-cinetica-quimica`
- `blueprints/Quimica/3serie/unidade-4-funcoes-nitrogenadas-e-mistas`
- `blueprints/Quimica/9ano/unidade-4-velocidade-e-combustao`

## Atualizacoes Registradas

- 2026-04-29: adicionada automacao local para verificar `origin/main` e executar pull quando houver alteracao em `blueprints/`:
  - `scripts/auto_pull_blueprints.sh`
  - `scripts/com.feliperosa.material-blueprints.auto-pull.plist`
- 2026-04-29: pull de `origin/main` trouxe 4 blueprints para `blueprints/Portugues 1/4ano/unidade-5-classes-gramaticais`:
  - `blueprint_unidade.md`
  - `blueprint_capitulo_01_pronomes.md`
  - `blueprint_capitulo_02_adverbios.md`
  - `blueprint_capitulo_03_conjuncoes-basicas.md`
- 2026-04-29: removidos placeholders duplicados da unidade 4:
  - `blueprints/Biologia/9ano/unidade-4-genetica-aplicada-bncc-ef09ci09/.gitkeep`
  - `blueprints/Ciencias/6ano/unidade-4-transformacoes-da-materia-bncc-ef06ci02-ef06ci04/.gitkeep`
  - `blueprints/Ciencias/7ano/unidade-4-ecossistemas-brasileiros-bncc-ef07ci07/.gitkeep`
  - `blueprints/Estudos Sociais/8ano/unidade-4-revolucoes-industriais-e-revolucoes-politicas/.gitkeep`
