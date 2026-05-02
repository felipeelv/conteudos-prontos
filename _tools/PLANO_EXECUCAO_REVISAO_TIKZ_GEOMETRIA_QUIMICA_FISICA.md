# Plano de Execução — Revisão TikZ de Geometria, Química e Física

## Objetivo

Revisar todas as imagens TikZ criadas em **Geometria**, **Química** e **Física** para aplicar o padrão visual didático definido em `_tools/CONVENCAO_TIKZ.md`:

- pesquisa rápida de referência visual antes de redesenhar;
- acentuação correta em português;
- fonte sans-serif;
- hierarquia visual clara;
- cores com função didática;
- ausência de sobreposição, setas cruzadas e rótulos apertados;
- PNG renderizado e revisado visualmente.

## Escopo

Fontes TikZ ativas fora de `_legado/`:

| Disciplina | Fontes `.tex` | Prioridade |
|---|---:|---|
| Química | 11 | Alta |
| Física | 16 | Alta |
| Geometria | 20 | Alta |
| **Total** | **47** |  |

O auditor atual indica alertas em praticamente todo o lote antigo, principalmente `fonte-sans-ausente` e palavras comuns sem acento. Isso confirma que a revisão deve ser feita por lotes, não em uma alteração única cega.

## Ordem Recomendada

### Lote 1 — Química

Motivo: já iniciamos o novo padrão em `Quimica/9ano/unidade-4-velocidade-e-combustao/figuras_cap01_velocidade-das-reacoes.tex`, então Química deve servir como referência visual do restante.

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

Critérios específicos:

- Diagramas de fatores/cinética: preferir matriz ou fluxo linear.
- Diagramas de colisão/energia de ativação: manter eixo ou cadeia causal simples.
- Diagramas de grupos funcionais: preferir comparação em cartões alinhados ou esquema rotulado.

Commit sugerido: `Padroniza TikZ de Quimica unidade 4`.

### Lote 2 — Física

Motivo: há muitos diagramas conceituais e de circuito; a padronização de fonte/acentuação melhora leitura imediatamente.

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

Critérios específicos:

- Cinemática: trajetórias com poucos rótulos, setas claras e eixos simples.
- Termodinâmica: fluxo de energia com fonte, sistema e ambiente bem separados.
- Circuitos: manter símbolos limpos e rótulos legíveis; evitar setas diagonais longas.
- Gravitação: usar escala e comparação visual sem poluir com texto longo.

Commit sugerido: `Padroniza TikZ de Fisica unidade 4`.

### Lote 3 — Geometria

Motivo: maior volume e maior dependência de precisão visual. Executar depois de consolidar o padrão em Química e Física.

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

Critérios específicos:

- Manter precisão geométrica acima de estética.
- Evitar texto longo dentro da figura; usar letras, medidas e rótulos curtos.
- Quando houver classificação, usar matriz/grade em vez de muitos objetos soltos.
- Para construções geométricas, usar passos numerados e setas discretas.

Commit sugerido: `Padroniza TikZ de Geometria unidade 4`.

## Procedimento por Arquivo

1. Abrir o capítulo `.md` e entender onde a imagem entra no texto.
2. Abrir o `.tex` correspondente.
3. Pesquisar referência visual rápida para o tipo de diagrama.
4. Escolher o padrão visual pelo objetivo pedagógico.
5. Ajustar o `.tex`:
   - adicionar fonte sans-serif;
   - corrigir acentuação;
   - reduzir rótulos longos;
   - alinhar elementos;
   - eliminar setas cruzadas;
   - aplicar cores funcionais;
   - preservar o conteúdo conceitual.
6. Renderizar os PNGs do arquivo.
7. Abrir os PNGs renderizados e revisar visualmente.
8. Confirmar que o capítulo referencia os PNGs corretos.
9. Rodar auditor e validações do lote.

## Comandos de Apoio

Inventário:

```bash
find Geometria Quimica Fisica -path '*/figuras_cap*.tex' -not -path '*/_legado/*' -print | sort
```

Auditoria:

```bash
python3 _tools/auditar_tikz_didatico.py | rg '^(Geometria|Quimica|Fisica)/|fontes analisadas|fontes com alerta'
```

Validação de links raw:

```bash
python3 -c "exec('from pathlib import Path\nimport re\nmissing=[]\nfiles=list(Path(\"Geometria\").glob(\"**/unidade-4*/capitulo_*.md\"))+list(Path(\"Quimica\").glob(\"**/unidade-4*/capitulo_*.md\"))+list(Path(\"Fisica\").glob(\"**/unidade-4*/capitulo_*.md\"))\npat=re.compile(r\"https://raw\\.githubusercontent\\.com/felipeelv/conteudos-prontos/main/([^\\)]+)\")\nfor f in files:\n    for m in pat.finditer(f.read_text(encoding=\"utf-8\")):\n        p=Path(m.group(1))\n        if not p.exists(): missing.append((str(f), str(p)))\nprint(\"missing\", len(missing))\nfor a,b in missing: print(a, \"=>\", b)\n')"
```

Checagem de diff antes de commit:

```bash
git diff --stat -- Geometria Quimica Fisica
git diff --check -- Geometria Quimica Fisica
```

## Critérios de Conclusão por Lote

- O auditor não acusa `fonte-sans-ausente` nos arquivos do lote.
- Palavras em português nos rótulos estão acentuadas corretamente.
- Todos os PNGs do lote foram regenerados.
- Cada PNG foi revisado visualmente.
- Links raw dos capítulos do lote apontam para arquivos existentes.
- O diff não inclui arquivos fora do lote.
- Commit e push feitos ao final do lote.

## Risco e Controle

- Risco: alterar geometria/escala de uma figura conceitual ao tentar "embelezar".
  - Controle: preservar conteúdo e revisar contra o capítulo.
- Risco: renderizar PNGs com nomes errados.
  - Controle: validar links raw após cada lote.
- Risco: mudança grande demais em um commit.
  - Controle: commitar por disciplina.
- Risco: revisão visual superficial.
  - Controle: abrir PNGs renderizados e aplicar checklist antes de commitar.
