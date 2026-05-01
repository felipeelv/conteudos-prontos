# Blueprint Técnico — Capítulo 3: Ângulos Internos de Polígonos Regulares

## 1. Identificação
- Disciplina: Geometria
- Ano/Série: 7º Ano EF II
- Bimestre: 2º
- Unidade: 4 — Quadriláteros e Polígonos Regulares
- Capítulo: 3 de 4
- Título: Ângulos Internos de Polígonos Regulares
- Código BNCC: EF07MA27
- Profundidade geral: N3-N4

## 2. Objetivo do capítulo
Ensinar o aluno a calcular a soma dos ângulos internos de polígonos, o ângulo interno de polígonos regulares, o ângulo externo correspondente e aplicações em mosaicos.

## 3. Pergunta-problema
*"Por que só alguns polígonos regulares encaixam perfeitamente em mosaicos?"*

## 4. Tensão narrativa
Um polígono pode ter muitos lados, mas a soma de seus ângulos segue uma regra previsível. A tensão do capítulo é contagem de lados × soma angular: quanto mais lados, mais triângulos internos, e a fórmula organiza esse crescimento.

## 5. Sequência conceitual obrigatória
1. Retomar a soma 180° dos ângulos internos de um triângulo.
2. Mostrar que um quadrilátero pode ser dividido em 2 triângulos.
3. Generalizar: um polígono de $$n$$ lados se divide em $$n - 2$$ triângulos.
4. Apresentar a fórmula da soma dos ângulos internos.
5. Calcular somas para pentágono, hexágono, octógono e decágono.
6. Definir polígono regular como lados e ângulos congruentes.
7. Calcular o ângulo interno de um polígono regular dividindo a soma por $$n$$.
8. Apresentar ângulo externo e relação com o interno.
9. Aplicar em mosaicos: triângulo equilátero, quadrado e hexágono regular.
10. Fechar com tabela de ângulos regulares.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Soma dos ângulos internos | 30% | N4 | Justificar por decomposição em $$n - 2$$ triângulos. |
| Ângulo interno regular | 25% | N3 | Calcular para $$n = 3, 4, 5, 6, 8, 10$$. |
| Relação interno e externo | 20% | N3 | Mostrar suplementaridade e fórmula do externo. |
| Mosaicos e ladrilhamentos | 25% | N3 | Restringir aos 3 polígonos regulares que ladrilham sozinhos. |

## 7. Conceitos obrigatórios
- Polígono
- Polígono regular
- Número de lados
- Soma dos ângulos internos
- Ângulo interno
- Ângulo externo
- Ângulos suplementares
- Soma dos ângulos externos
- Mosaico
- Ladrilhamento

## 8. Termos a explicar com tradução curta
- **Polígono regular:** polígono com todos os lados congruentes e todos os ângulos congruentes.
- **Ângulo interno:** ângulo de dentro do polígono.
- **Ângulo externo:** ângulo formado ao prolongar um lado do polígono.
- **Suplementares:** ângulos que somam 180°.
- **Ladrilhamento:** preenchimento do plano sem espaços e sem sobreposições.

## 9. Fórmulas obrigatórias
Soma dos ângulos internos de polígono com $$n$$ lados:

$$S_i = (n - 2) \cdot 180^\circ$$

Ângulo interno de polígono regular:

$$a_i = \frac{(n - 2) \cdot 180^\circ}{n}$$

Ângulo externo de polígono regular:

$$a_e = \frac{360^\circ}{n}$$

Soma dos ângulos externos:

$$S_e = 360^\circ$$

Relação:

$$a_i + a_e = 180^\circ$$

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que a fórmula da soma dos ângulos internos vem da divisão do polígono em triângulos;
- que $$n$$ representa o número de lados;
- que a soma dos ângulos internos não é o mesmo que o ângulo de cada vértice;
- que, em polígonos regulares, todos os ângulos internos têm a mesma medida;
- que o ângulo externo regular pode ser calculado por $$360^\circ / n$$;
- que interno e externo são suplementares;
- que só triângulo equilátero, quadrado e hexágono regular ladrilham o plano sozinhos.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- trabalhar polígonos não convexos com a fórmula;
- aprofundar construção do polígono de 17 lados;
- ensinar área de polígonos regulares;
- ensinar pavimentações semi-regulares ou Penrose;
- usar trigonometria;
- tratar demonstração formal além da decomposição visual em triângulos.

## 12. Linguagem esperada
- Mostrar cálculos em uma linha por operação.
- Dizer "soma de todos os ângulos" antes de "ângulo de cada vértice".
- Usar tabela curta para valores canônicos: 60°, 90°, 108°, 120°, 135°.
- Evitar blocos algébricos longos.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 3 — Ângulos Internos de Polígonos Regulares`
- Pergunta-problema: `## Por que alguns polígonos encaixam sem deixar espaços?`
- Abertura narrativa: favo de mel, ladrilhos quadrados e mosaicos com triângulos.
- Para Conversar de intro: "Que ângulo precisa se repetir para preencher uma volta completa?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Da Soma do Triângulo à Soma do Polígono
    - `### 1.1 Triângulos dentro de polígonos`
    - `### 1.2 A fórmula da soma interna`
  - Bloco 2 — Ângulo Interno de Polígono Regular
    - `### 2.1 Dividir a soma pelo número de lados`
    - `### 2.2 Tabela de polígonos regulares`
  - Bloco 3 — Ângulos Externos
    - `### 3.1 Interno e externo somam 180°`
    - `### 3.2 A volta completa de 360°`
  - Bloco 4 — Mosaicos e Ladrilhamentos
    - `### 4.1 Triângulo, quadrado e hexágono`
    - `### 4.2 Quando o ângulo não fecha 360°`
- Sua Parte: calcular soma interna, ângulo interno e ângulo externo.
- Curiosidade da Ciência: Carl Friedrich Gauss e o polígono regular de 17 lados como curiosidade histórica.
- Enquanto isso...: Tiago 1:8 como ponte para constância versus inconstância.
- E para hoje...: observar um piso ou mosaico e identificar os ângulos que se encontram em um vértice.
- Esse foi o "cara": Carl Friedrich Gauss.
- Você já pensou nisso?: por que três hexágonos regulares fecham exatamente 360°?
- Simplificando: a soma dos ângulos internos é $$(n - 2) \cdot 180^\circ$$; em polígonos regulares, cada ângulo é essa soma dividida por $$n$$; só triângulo equilátero, quadrado e hexágono regular ladrilham sozinhos.
- Para não esquecer: 5 bullets sobre $$n$$, soma interna, ângulo interno regular, externo e mosaicos.

## 14. Âncoras visuais/concretas
- Polígono dividido em triângulos a partir de um vértice.
- Favo de mel hexagonal.
- Placa de PARE octogonal.
- Piso com ladrilhos quadrados.
- Mosaico triangular.
- Tabela com $$n$$, soma interna, ângulo interno e ângulo externo.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Tiago 1:8.
- Ponteiro específico: a fórmula vale para qualquer polígono convexo, independentemente do tamanho.
- Conexão temática: integridade é regra que se mantém em escalas diferentes; a regularidade geométrica não muda quando a figura cresce.

## 16. Critérios de aceite
O capítulo está adequado se:
- ensina a fórmula da soma interna com justificativa por triângulos;
- calcula ângulos internos de polígonos regulares;
- relaciona ângulos internos e externos;
- mostra mosaicos regulares com triângulo, quadrado e hexágono;
- não transforma Gauss e o polígono de 17 lados em conteúdo central;
- não antecipa área, polígonos não convexos ou pavimentações avançadas.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **calculará** a soma dos ângulos internos de polígonos.
2. O aluno **calculará** o ângulo interno de polígonos regulares.
3. O aluno **relacionará** ângulos internos e externos.
4. O aluno **analisará** mosaicos regulares simples.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Identifica corretamente $$n$$.
- Substitui $$n$$ na fórmula.
- Calcula a soma interna.

**Para o objetivo 2:**
- Reconhece que o polígono é regular.
- Divide a soma interna por $$n$$.
- Confere valores canônicos como 60°, 90°, 108° e 120°.

**Para o objetivo 3:**
- Usa $$a_i + a_e = 180^\circ$$.
- Calcula externo por $$360^\circ / n$$.
- Explica a volta completa de 360°.

**Para o objetivo 4:**
- Testa se múltiplos de um ângulo fecham 360°.
- Identifica os três ladrilhamentos regulares simples.
- Explica por que pentágonos regulares não ladrilham sozinhos.

### Habilidade BNCC consolidada no capítulo
- **EF07MA27**, ao calcular ângulos internos e externos e relacioná-los a mosaicos e ladrilhamentos.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/7ano/unidade-4-quadrilateros-e-poligonos-regulares.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- BNCC: EF07MA27
- Carl Friedrich Gauss e a construtibilidade do polígono regular de 17 lados.
