# Revisao de Acentuacao em Imagens TikZ por Disciplina

## Objetivo

Conferir e corrigir erros de acentuacao grafica nos textos das imagens TikZ ativas, executando uma disciplina por vez. Cada disciplina deve ser revisada, renderizada, validada visualmente, commitada e enviada antes de iniciar a proxima.

## Escopo Atual

Fontes TikZ ativas encontradas fora de `_legado/`:

| Ordem | Disciplina | Fontes `.tex` | Status |
|---:|---|---:|---|
| 1 | Quimica | 11 | Concluido |
| 2 | Biologia | 14 | Concluido |
| 3 | Fisica | 16 | Concluido |
| 4 | Geometria | 20 | Concluido |
|  | **Total** | **61** |  |

## Regra de Execucao

Nao revisar mais de uma disciplina no mesmo lote. Ao finalizar uma disciplina, fazer:

1. renderizacao dos PNGs da disciplina;
2. revisao visual dos PNGs alterados;
3. auditoria de acentuacao;
4. `git diff --check`;
5. commit;
6. push;
7. somente entao iniciar a disciplina seguinte.

## Checklist Geral por Disciplina

- [ ] Listar todos os `figuras_cap*.tex` da disciplina.
- [ ] Procurar palavras sem acento nos textos dos nos TikZ.
- [ ] Corrigir somente textos/rótulos com problema de acentuacao ou leitura.
- [ ] Se houver texto sobreposto, ajustar layout no mesmo lote.
- [ ] Renderizar novamente os PNGs correspondentes.
- [ ] Abrir os PNGs alterados e conferir visualmente.
- [ ] Validar que os capitulos `.md` continuam apontando para os PNGs corretos.
- [ ] Rodar `python3 _tools/auditar_tikz_didatico.py`.
- [ ] Rodar `git diff --check`.
- [ ] Conferir `git diff --stat`.
- [ ] Commitar apenas os arquivos da disciplina.
- [ ] Fazer push.

## Lote 1 - Quimica

Arquivos:

- `Quimica/1serie/unidade-4-grandezas-quimicas-fundamentais/figuras_cap01_massa-atomica-e-molecular.tex`
- `Quimica/1serie/unidade-4-grandezas-quimicas-fundamentais/figuras_cap02_quantidade-de-materia.tex`
- `Quimica/2serie/unidade-4-cinetica-quimica/figuras_cap01_velocidade-das-reacoes.tex`
- `Quimica/2serie/unidade-4-cinetica-quimica/figuras_cap02_fatores-que-afetam-a-velocidade.tex`
- `Quimica/2serie/unidade-4-cinetica-quimica/figuras_cap03_teoria-das-colisoes.tex`
- `Quimica/2serie/unidade-4-cinetica-quimica/figuras_cap04_lei-de-velocidade-e-catalise.tex`
- `Quimica/3serie/unidade-4-funcoes-nitrogenadas-e-mistas/figuras_cap01_aminas.tex`
- `Quimica/3serie/unidade-4-funcoes-nitrogenadas-e-mistas/figuras_cap02_amidas.tex`
- `Quimica/3serie/unidade-4-funcoes-nitrogenadas-e-mistas/figuras_cap03_outras-funcoes.tex`
- `Quimica/9ano/unidade-4-velocidade-e-combustao/figuras_cap01_velocidade-das-reacoes.tex`
- `Quimica/9ano/unidade-4-velocidade-e-combustao/figuras_cap02_reacoes-de-combustao.tex`

Comandos do lote:

```bash
rg -n "ativacao|colisao|concentracao|direcao|distancia|eficacia|facil|frequencia|moleculas|nao|orientacao|particulas|posicao|reacao|superficie" Quimica
python3 _tools/renderizar_tikz_exatas.py
python3 _tools/auditar_tikz_didatico.py
git diff --check -- Quimica
git diff --stat -- Quimica
```

Commit sugerido:

```bash
git commit -m "Corrige acentuacao em TikZ de Quimica"
```

## Lote 2 - Biologia

Arquivos:

- `Biologia/1serie/unidade-4-bioquimica-celular-ii/figuras_cap01_proteinas-estrutura-e-funcao.tex`
- `Biologia/1serie/unidade-4-bioquimica-celular-ii/figuras_cap02_enzimas-catalisadores-biologicos.tex`
- `Biologia/1serie/unidade-4-bioquimica-celular-ii/figuras_cap03_origem-da-vida-na-terra.tex`
- `Biologia/1serie/unidade-4-bioquimica-celular-ii/figuras_cap04_teorias-historicas-sobre-origem-da-vida.tex`
- `Biologia/2serie/unidade-4-genetica-mendeliana/figuras_cap01_conceitos-fundamentais.tex`
- `Biologia/2serie/unidade-4-genetica-mendeliana/figuras_cap02_primeira-lei-de-mendel.tex`
- `Biologia/2serie/unidade-4-genetica-mendeliana/figuras_cap03_segunda-lei-de-mendel.tex`
- `Biologia/3serie/unidade-4-genetica-molecular-avancada/figuras_cap01_regulacao-da-expressao-genica.tex`
- `Biologia/3serie/unidade-4-genetica-molecular-avancada/figuras_cap02_epigenetica.tex`
- `Biologia/3serie/unidade-4-genetica-molecular-avancada/figuras_cap03_mutacoes-e-variabilidade.tex`
- `Biologia/3serie/unidade-4-genetica-molecular-avancada/figuras_cap04_biotecnologia-basica.tex`
- `Biologia/9ano/unidade-4-genetica-aplicada/figuras_cap01_segunda-lei-de-mendel.tex`
- `Biologia/9ano/unidade-4-genetica-aplicada/figuras_cap02_heredogramas-e-genetica-humana.tex`
- `Biologia/9ano/unidade-4-genetica-aplicada/figuras_cap03_mutacoes.tex`

Comandos do lote:

```bash
rg -n "ativacao|colisao|concentracao|direcao|distancia|eficacia|facil|frequencia|moleculas|nao|orientacao|particulas|posicao|reacao|superficie|regulacao|expressao|mutacoes|genetica|heranca" Biologia
python3 _tools/renderizar_tikz_biologia.py
python3 _tools/auditar_tikz_didatico.py
git diff --check -- Biologia
git diff --stat -- Biologia
```

Commit sugerido:

```bash
git commit -m "Corrige acentuacao em TikZ de Biologia"
```

## Lote 3 - Fisica

Arquivos:

- `Fisica/1serie/unidade-4-cinematica-vetorial/figuras_cap07_movimentos-compostos.tex`
- `Fisica/2serie/unidade-4-termodinamica/figuras_cap07_leis-da-termodinamica.tex`
- `Fisica/2serie/unidade-4-termodinamica/figuras_cap08_maquinas-termicas.tex`
- `Fisica/3serie/unidade-4-geradores-e-circuitos/figuras_cap07_geradores-e-receptores.tex`
- `Fisica/3serie/unidade-4-geradores-e-circuitos/figuras_cap08_medidas-eletricas.tex`
- `Fisica/6ano/unidade-4-velocidade/figuras_cap01_conceito-de-velocidade.tex`
- `Fisica/6ano/unidade-4-velocidade/figuras_cap02_unidades-de-velocidade.tex`
- `Fisica/7ano/unidade-4-calor-e-transferencia-de-calor/figuras_cap01_calor-e-equilibrio-termico.tex`
- `Fisica/7ano/unidade-4-calor-e-transferencia-de-calor/figuras_cap02_formas-de-transferencia-de-calor.tex`
- `Fisica/7ano/unidade-4-calor-e-transferencia-de-calor/figuras_cap03_mudancas-de-estado-fisico.tex`
- `Fisica/8ano/unidade-4-fontes-e-sustentabilidade/figuras_cap01_fontes-de-energia.tex`
- `Fisica/8ano/unidade-4-fontes-e-sustentabilidade/figuras_cap02_usinas-de-geracao-de-energia.tex`
- `Fisica/8ano/unidade-4-fontes-e-sustentabilidade/figuras_cap03_uso-consciente-de-energia.tex`
- `Fisica/9ano/unidade-4-gravitacao-universal/figuras_cap01_lei-da-gravitacao-universal.tex`
- `Fisica/9ano/unidade-4-gravitacao-universal/figuras_cap02_sistema-solar-leis-de-kepler-e-vida-no-universo.tex`
- `Fisica/9ano/unidade-4-gravitacao-universal/figuras_cap03_ciclo-evolutivo-do-sol.tex`

Comandos do lote:

```bash
rg -n "direcao|distancia|frequencia|posicao|nao|maquina|termica|eletrica|gravitacao|velocidade|energia|consciente|evolutivo" Fisica
python3 _tools/renderizar_tikz_exatas.py
python3 _tools/auditar_tikz_didatico.py
git diff --check -- Fisica
git diff --stat -- Fisica
```

Commit sugerido:

```bash
git commit -m "Corrige acentuacao em TikZ de Fisica"
```

## Lote 4 - Geometria

Arquivos:

- `Geometria/1serie/unidade-4-quadrilateros/figuras_cap01_classificacao-e-propriedades-gerais.tex`
- `Geometria/1serie/unidade-4-quadrilateros/figuras_cap02_paralelogramos-e-trapezios.tex`
- `Geometria/2serie/unidade-4-piramides/figuras_cap01_elementos-e-classificacao.tex`
- `Geometria/2serie/unidade-4-piramides/figuras_cap02_areas-volumes-e-tronco-de-piramide.tex`
- `Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/figuras_cap01_elementos-dos-triangulos.tex`
- `Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/figuras_cap02_classificacao-dos-triangulos.tex`
- `Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/figuras_cap03_propriedades-dos-triangulos.tex`
- `Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/figuras_cap04_medidas-de-capacidade.tex`
- `Geometria/6ano/unidade-4-triangulos-e-sistema-de-medidas-ii/figuras_cap05_medidas-de-tempo.tex`
- `Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares/figuras_cap01_classificacao-de-quadrilateros.tex`
- `Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares/figuras_cap02_propriedades-dos-quadrilateros.tex`
- `Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares/figuras_cap03_angulos-internos-de-poligonos-regulares.tex`
- `Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares/figuras_cap04_construcao-de-poligonos-regulares.tex`
- `Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras_cap01_poligonos-angulos.tex`
- `Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras_cap02_poligonos-regulares.tex`
- `Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras_cap03_construcao-de-poligonos-regulares.tex`
- `Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/figuras_cap01_poligonos-regulares.tex`
- `Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/figuras_cap02_construcao-de-poligonos-regulares.tex`
- `Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/figuras_cap03_algoritmos-de-construcao.tex`
- `Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/figuras_cap04_geometria-analitica-basica.tex`

Comandos do lote:

```bash
rg -n "classificacao|construcao|direcao|distancia|posicao|nao|angulo|angulos|area|areas|geometrica|geometricas|triangulos|quadrilateros|poligonos" Geometria
python3 _tools/renderizar_tikz_exatas.py
python3 _tools/auditar_tikz_didatico.py
git diff --check -- Geometria
git diff --stat -- Geometria
```

Commit sugerido:

```bash
git commit -m "Corrige acentuacao em TikZ de Geometria"
```

## Observacoes Importantes

- Os scripts de renderizacao atuais renderizam grupos amplos: `_tools/renderizar_tikz_exatas.py` cobre `Geometria`, `Quimica` e `Fisica`; `_tools/renderizar_tikz_biologia.py` cobre `Biologia`.
- Mesmo que o script renderize mais de uma disciplina, o commit deve incluir apenas a disciplina do lote em andamento.
- Se o auditor acusar palavra sem acento fora do lote atual, registrar para o lote correspondente e nao corrigir junto.
- Se uma imagem tiver acentos corretos no `.tex`, mas o PNG renderizar caracteres errados, revisar o preambulo do arquivo: `\usepackage[utf8]{inputenc}`, `\usepackage[T1]{fontenc}`, `\usepackage{helvet}` e `\renewcommand{\familydefault}{\sfdefault}`.
- Se o problema for texto embolado, resolver no mesmo lote, mas manter o foco em leitura e acentuacao.

## Registro de Execucao

- Quimica: revisada, corrigida, renderizada e validada neste lote.
- Biologia: revisada, corrigida, renderizada e validada neste lote.
- Fisica: revisada, corrigida, renderizada e validada neste lote.
- Geometria: revisada, corrigida, renderizada e validada neste lote.

## Proximo Passo

Todos os lotes previstos foram revisados, renderizados, validados, commitados e enviados.
