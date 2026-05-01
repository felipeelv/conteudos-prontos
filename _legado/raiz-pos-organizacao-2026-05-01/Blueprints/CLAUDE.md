## Sobre esta pasta

Espelho local **parcial** dos blueprints de unidade do material didático do Colégio Eleve. Contém apenas as unidades/bimestres que estão sendo trabalhados no momento — não é uma cópia completa do repositório.

Os arquivos `blueprint_*.md` descrevem cada unidade e seus capítulos, e servem como insumo para a produção de conteúdo.

## Repositório de origem

- **URL**: https://github.com/felipeelv/material-blueprints
- **Branch**: `main`
- **Último sync feito a partir do commit**: `ffbdd2a` (2026-05-01)
- **Diretório de blueprints no repo**: `blueprints/` (no remoto, capitalizado: `Biologia/`, `Ciencias/` etc; no local mantemos minúsculas)

## Estrutura de pastas

```
Blueprints/
├── <disciplina>/
│   └── <ano|serie>/
│       └── <unidade-N|bimestre-N>-<slug>/
│           ├── blueprint_unidade.md
│           ├── blueprint_capitulo_01_<slug>.md
│           ├── blueprint_capitulo_02_<slug>.md
│           └── ...
```

- `<disciplina>` em minúsculas (ex: `biologia`, `estatistica e educacao financeira`)
- `<ano|serie>`: `1ano` a `9ano` (Ensino Fundamental) e `1serie` a `3serie` (Ensino Médio)
- Numeração de capítulos é contínua dentro do bloco (ex: bimestre 2 começa no `capitulo_03`)

## Convenção de organização (importante)

| Tipo | Disciplinas | Granularidade |
|---|---|---|
| **Unidade** | Biologia, Ciências, Educação Cristã, Estatística e Educação Financeira, Estudos Sociais, Física, Geografia, Geometria, História, Matemática, Português 1, Português 2, Química | 8 unidades / ano (algumas com lacunas no remoto) |
| **Bimestre** | Filosofia, Sociologia | 4 bimestres / série |

Equivalência aproximada: cada bimestre cobre o conteúdo de ~2 unidades.

## Status atual da sincronização

| Métrica | Valor |
|---:|---|
| Disciplinas no local | 15 / 15 |
| Total de blueprints `*.md` | 271 |
| Última sincronização | 2026-05-01 |
| Foco atual | Unidade 4 / Bimestre 2 |

## Histórico de sincronizações

| Data | O que foi sincronizado |
|---|---|
| 2026-05-01 | Inicial: todas as **unidades 4** das 13 disciplinas que usam unidades + **bimestre 2** de Filosofia e Sociologia. Removida pasta duplicada `blueprint-estudos sociais/`. |

## Tabelas por disciplina

> **Legenda**: ✅ = sincronizado · ⏳ = a baixar · ❌ = não existe no remoto

### Biologia (unidades — 1ª a 8ª)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 9ano | 6 (faltam 2 e 3 no remoto) | ✅ unidade-4-genetica-aplicada | ⏳ unidade-5-evidencias-da-evolucao |
| 1serie | 8 | ✅ unidade-4-bioquimica-celular-ii | ⏳ unidade-5-evolucao-celular-e-citologia |
| 2serie | 10 | ✅ unidade-4-genetica-mendeliana | ⏳ unidade-5-genetica-molecular |
| 3serie | 8 | ✅ unidade-4-genetica-molecular-avancada | ⏳ unidade-5-genetica-de-populacoes |

### Ciências (unidades — EF1 e 6º–8º ano)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 1ano | 8 | ✅ unidade-4-respeito-e-diversidade | ⏳ unidade-5-observando-a-natureza |
| 2ano | 7 | ✅ unidade-4-crescimento-das-plantas | ⏳ unidade-5-agua-fonte-de-vida |
| 3ano | 8 | ✅ unidade-4-classificacao-dos-seres-vivos | ⏳ unidade-5-o-solo |
| 4ano | 8 | ✅ unidade-4-microrganismos | ⏳ unidade-5-ecossistemas |
| 5ano | 9 | ✅ unidade-4-corpo-humano | ⏳ unidade-5-alimentacao-e-saude |
| 6ano | 8 | ✅ unidade-4-transformacoes-da-materia | ⏳ unidade-5-celulas-e-organizacao-dos-seres-vivos |
| 7ano | 7 (falta 6 no remoto) | ✅ unidade-4-ecossistemas-brasileiros | ⏳ unidade-5-impactos-ambientais |
| 8ano | 8 (falta 8 no remoto) | ✅ unidade-4-ligacoes-quimicas | ⏳ unidade-5-reproducao-e-desenvolvimento |

### Educação Cristã (unidades)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 1ano | 1 (só u4 publicada) | ✅ unidade-4-integridade | ❌ unidade-5 ainda não publicada |

### Estatística e Educação Financeira (unidades)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 6ano | 8 | ✅ unidade-4-media-aritmetica-e-probabilidade | ⏳ unidade-5-frequencia-e-representacao-de-dados |
| 7ano | 8 | ✅ unidade-4-construcao-e-interpretacao-de-graficos | ⏳ unidade-5-medidas-de-tendencia-central |
| 8ano | 8 | ✅ unidade-4-escalas-e-aplicacoes-praticas | ⏳ unidade-5-probabilidade |
| 9ano | 8 | ✅ unidade-4-educacao-financeira-credito-e-consumo | ⏳ unidade-5-educacao-financeira-juros-e-investimentos |
| 1serie | 8 | ✅ unidade-4-medidas-de-tendencia-central-e-educacao-financeira | ⏳ unidade-5-medidas-de-dispersao |
| 2serie | 8 | ✅ unidade-4-educacao-financeira-juros-compostos | ⏳ unidade-5-probabilidade-aprofundamento |
| 3serie | 8 | ✅ unidade-4-sistemas-de-amortizacao-e-analise-de-investimentos | ⏳ unidade-5-revisao-integrada-estatistica |

### Estudos Sociais (unidades)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 1ano | 8 | ✅ unidade-4-convivendo-em-familia | ⏳ unidade-5-minha-casa |
| 2ano | 8 | ✅ unidade-4-o-que-tem-no-bairro | ⏳ unidade-5-trabalho-no-bairro |
| 3ano | 8 | ✅ unidade-4-organizacao-do-municipio | ⏳ unidade-5-primeiros-habitantes-do-brasil |
| 4ano | 8 | ✅ unidade-4-representacao-do-espaco | ⏳ unidade-5-formacao-do-povo-brasileiro |
| 5ano | 8 | ✅ unidade-4-populacao-brasileira | ⏳ unidade-5-imperio-brasileiro |
| 6ano | 8 | ✅ unidade-4-egito-e-americas-antigas | ⏳ unidade-5-civilizacoes-orientais-e-sistemas-terrestres |
| 7ano | 8 | ✅ unidade-4-feudalismo | ⏳ unidade-5-urbanizacao-e-redes |
| 8ano | 8 | ✅ unidade-4-revolucoes-industriais-e-politicas | ⏳ unidade-5-independencias-nas-americas |
| 9ano | 8 | ✅ unidade-4-era-vargas-e-guerra-fria | ⏳ unidade-5-europa-e-asia |

### Filosofia (bimestres)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 1serie | 4 | ✅ bimestre-2-filosofia-classica-e-patristica | ⏳ bimestre-3-aristoteles-e-escolastica |
| 2serie | 4 | ✅ bimestre-2-idealismo-e-materialismo | ⏳ bimestre-3-crise-e-niilismo |
| 3serie | 4 | ✅ bimestre-2-ciencia-e-arte-como-reflexos-da-verdade | ⏳ bimestre-3-revisao-enem-e-vestibulares |

### Física (unidades)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 6ano | 8 | ✅ unidade-4-velocidade | ⏳ unidade-5-forca |
| 7ano | 3 (só u1, u2 e u5 publicadas) | — (u4 não existe no remoto) | ⏳ unidade-5-fundamentos-da-mecanica |
| 8ano | 8 | ✅ unidade-4-fontes-e-sustentabilidade | ⏳ unidade-5-som-e-luz |
| 9ano | 7 (falta 7 no remoto) | ✅ unidade-4-gravitacao-universal | ⏳ unidade-5-trabalho-e-maquinas-simples |
| 1serie | 8 | ✅ unidade-4-cinematica-vetorial | ⏳ unidade-5-dinamica-leis-de-newton |
| 2serie | 8 | ✅ unidade-4-termodinamica | ⏳ unidade-5-reflexao-da-luz |
| 3serie | 8 | ✅ unidade-4-geradores-e-circuitos | ⏳ unidade-5-magnetismo |

### Geografia (unidades — só EM)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 1serie | 8 | ✅ unidade-4-relevo-e-hidrosfera | ⏳ unidade-5-clima |
| 2serie | 8 | ✅ unidade-4-espaco-agrario-e-conflitos | ⏳ unidade-5-geopolitica-mundial |
| 3serie | 8 | ✅ unidade-4-desigualdades-regionais-e-integracao-nacional | ⏳ unidade-5-geopolitica-do-brasil |

### Geometria (unidades)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 6ano | 8 | ✅ unidade-4-triangulos-e-sistema-de-medidas-ii | ⏳ unidade-5-quadrilateros-e-circunferencia |
| 7ano | 8 | ✅ unidade-4-quadrilateros-e-poligonos-regulares | ⏳ unidade-5-circunferencia-e-circulo |
| 8ano | 8 | ✅ unidade-4-poligonos-e-construcao-de-poligonos-regulares | ⏳ unidade-5-transformacoes-geometricas |
| 9ano | 8 | ✅ unidade-4-poligonos-e-construcoes-geometricas | ⏳ unidade-5-trigonometria-no-triangulo-retangulo |
| 1serie | 8 | ✅ unidade-4-quadrilateros | ⏳ unidade-5-circunferencia |
| 2serie | 8 | ✅ unidade-4-piramides | ⏳ unidade-5-cilindros |
| 3serie | 8 | ✅ unidade-4-conicas-elipse | ⏳ unidade-5-conicas-hiperbole |

### História (unidades — só EM)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 1serie | 1 (só u4 publicada) | ✅ unidade-4-apogeu-e-declinio-da-grecia-classica | ❌ unidade-5 ainda não publicada |
| 2serie | 1 (só u4 publicada) | ✅ unidade-4-periodo-regencial-e-segundo-reinado | ❌ unidade-5 ainda não publicada |
| 3serie | 8 | ✅ unidade-4-guerra-fria-e-descolonizacoes | ⏳ unidade-5-brasil-democratico-populismo-1945-1964 |

### Matemática (unidades)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 4ano | 8 | ✅ unidade-4-fracoes-decimais-e-plano-cartesiano | ⏳ unidade-5-numeros-racionais-e-medidas |
| 5ano | 8 | ✅ unidade-4-fracoes-porcentagem-e-solidos-geometricos | ⏳ unidade-5-pensamento-algebrico-e-plano-cartesiano |
| 6ano | 8 | ✅ unidade-4-divisibilidade | ⏳ unidade-5-numeros-racionais-fracoes |
| 7ano | 8 | ✅ unidade-4-introducao-algebra | ⏳ unidade-5-numeros-racionais |
| 8ano | 8 | ✅ unidade-4-equacoes-1-grau-e-representacao-grafica | ⏳ unidade-5-sistemas-de-equacoes-do-1-grau |
| 9ano | 8 | ✅ unidade-4-funcao-afim | ⏳ unidade-5-equacoes-do-2-grau |
| 1serie | 8 | ✅ unidade-4-funcoes-e-funcao-afim | ⏳ unidade-5-funcao-quadratica |
| 2serie | 8 | ✅ unidade-4-determinantes | ⏳ unidade-5-sistemas-lineares |
| 3serie | 8 | ✅ unidade-4-raizes-complexas-aplicacoes | ⏳ unidade-5-revisao-integrada-funcoes |

### Português 1 — Língua Portuguesa (unidades)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 1ano | 8 | ✅ unidade-4-manipulacao-fonologica | ⏳ unidade-5-direcao-da-escrita |
| 2ano | 8 | ✅ unidade-4-regularidades-contextuais-e-nasalidade | ⏳ unidade-5-pontuacao-simples |
| 3ano | 8 | ✅ unidade-4-acentuacao-e-dicionario | ⏳ unidade-5-substantivos |
| 4ano | 8 | ✅ unidade-4-verbos | ⏳ unidade-5-classes-gramaticais |
| 5ano | 8 | ✅ unidade-4-preposicoes-interjeicoes-e-conjuncoes | ⏳ unidade-5-sujeito-e-predicado |
| 6ano | 8 | ✅ unidade-4-adjetivo-numeral-e-coesao | ⏳ unidade-5-pronome |
| 7ano | 8 | ✅ unidade-4-verbo-classificacao-e-modos | ⏳ unidade-5-verbo-formas-e-vozes |
| 8ano | 8 | ✅ unidade-4-introducao-a-sintaxe | ⏳ unidade-5-termos-essenciais-da-oracao |
| 9ano | 8 | ✅ unidade-4-periodo-composto | ⏳ unidade-5-concordancia-verbal-e-nominal |
| 1serie | 8 | ✅ unidade-4-estrutura-e-formacao-de-palavras | ⏳ unidade-5-morfologia-classes-gramaticais-ii |
| 2serie | 8 | ✅ unidade-4-crase | ⏳ unidade-5-colocacao-pronominal |
| 3serie | 8 | ✅ unidade-4-oracoes-subordinadas-adverbiais | ⏳ unidade-5-semantica |

### Português 2 — Literatura (unidades — só EM)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 1serie | 8 | ✅ unidade-4-producao-textual-texto-narrativo | ⏳ unidade-5-classicismo-e-quinhentismo |
| 2serie | 8 | ✅ unidade-4-oralidade-debate-literario | ⏳ unidade-5-realismo-e-naturalismo |
| 3serie | 8 | ✅ unidade-4-coesao-coerencia-e-repertorio | ⏳ unidade-5-modernismo-3-geracao-e-literatura-africana |

### Química (unidades)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 9ano | 6 (faltam 3 e 7 no remoto) | ✅ unidade-4-velocidade-e-combustao | ⏳ unidade-5-acidos-e-bases |
| 1serie | 8 | ✅ unidade-4-grandezas-quimicas-fundamentais | ⏳ unidade-5-tabela-periodica |
| 2serie | 8 | ✅ unidade-4-cinetica-quimica | ⏳ unidade-5-equilibrio-quimico |
| 3serie | 8 | ✅ unidade-4-funcoes-nitrogenadas-e-mistas | ⏳ unidade-5-isomeria |

### Sociologia (bimestres)

| Série | Total no remoto | Sincronizado | Próximo a baixar |
|---|---:|---|---|
| 1serie | 4 | ✅ bimestre-2-cultura-e-identidade-brasileira | ⏳ bimestre-3-trabalho-e-marx |
| 2serie | 4 | ✅ bimestre-2-democracia-e-cidadania | ⏳ bimestre-3-movimentos-sociais-e-tecnologia |
| 3serie | 4 | ✅ bimestre-2-poder-estado-e-cidadania-no-brasil | ⏳ bimestre-3-revisao-enem-e-vestibulares |

## Próximo bloco a sincronizar

Quando o material das próximas unidades/bimestres for publicado no repositório:

- **Unidade 5** das 13 disciplinas que usam unidades (com as exceções marcadas como ❌ acima — Educação Cristã, História/1ª e 2ª séries: aguardam publicação no remoto).
- **Bimestre 3** de Filosofia e Sociologia.

## Como sincronizar manualmente

```bash
# 1. Atualizar clone temporário
rm -rf /tmp/material-blueprints-check
git clone --depth 1 https://github.com/felipeelv/material-blueprints.git /tmp/material-blueprints-check

# 2. Copiar a pasta de uma unidade específica (exemplo)
cp -R "/tmp/material-blueprints-check/blueprints/Biologia/9ano/unidade-5-evidencias-da-evolucao" \
      "/Users/feliperosamini/Conteúdos Prontos/Blueprints/biologia/9ano/"
```

> **Atenção**: a pasta local **não é um repositório git** — sincronização é manual, não há `git pull`. As pastas locais são em **minúsculas** mesmo que no remoto sejam capitalizadas.
