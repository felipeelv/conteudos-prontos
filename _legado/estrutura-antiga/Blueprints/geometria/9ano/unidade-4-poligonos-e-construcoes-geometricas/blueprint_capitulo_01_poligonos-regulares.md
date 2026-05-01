# Blueprint Técnico — Capítulo 1: Polígonos Regulares

## 1. Identificação
- Disciplina: Geometria
- Ano/Série: 9º Ano EF II
- Bimestre: 2º
- Unidade: 4 — Polígonos e Construções Geométricas
- Capítulo: 1 de 4
- Título: Polígonos Regulares
- Código BNCC: EF08MA17 reativada
- Profundidade geral: N3

## 2. Objetivo do capítulo
Levar o aluno a reconhecer, calcular e justificar propriedades de polígonos regulares, incluindo ângulos internos e externos, apótema, inscrição e circunscrição.

## 3. Pergunta-problema
*"O que torna um polígono realmente regular: parecer simétrico ou obedecer a propriedades exatas?"*

## 4. Tensão narrativa
Uma figura pode parecer equilibrada, mas só é regular quando todos os lados e todos os ângulos obedecem à mesma medida. A tensão do capítulo é aparência × regularidade comprovável.

## 5. Sequência conceitual obrigatória
1. Retomar a noção de polígono e número de lados.
2. Definir polígono regular como lados iguais e ângulos internos iguais.
3. Apresentar exemplos: triângulo equilátero, quadrado, pentágono regular, hexágono regular e octógono regular.
4. Retomar a soma dos ângulos internos.
5. Calcular ângulo interno de polígono regular.
6. Calcular ângulo externo de polígono regular.
7. Conferir a relação entre ângulo interno e externo.
8. Definir apótema como segmento do centro ao ponto médio do lado, perpendicular ao lado.
9. Relacionar apótema à circunferência inscrita.
10. Distinguir polígono inscrito em circunferência e circunscrito a circunferência.
11. Aplicar área de polígono regular por perímetro e apótema.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Propriedades dos polígonos regulares | 20% | N2 | Definir regularidade completa: todos os lados iguais e todos os ângulos iguais. |
| Ângulos internos e externos | 30% | N3 | Coração 1. Usar fórmulas, tabela e conferência por exemplos. |
| Apótema | 30% | N3 | Coração 2. Definir, localizar visualmente e aplicar em área de polígono regular. |
| Inscrição e circunscrição | 20% | N2 | Distinguir vértices sobre a circunferência de lados tangentes à circunferência. |

## 7. Conceitos obrigatórios
- Polígono regular
- Número de lados $$n$$
- Soma dos ângulos internos
- Ângulo interno
- Ângulo externo
- Apótema
- Perímetro
- Circunferência inscrita
- Circunferência circunscrita
- Polígono inscrito
- Polígono circunscrito

## 8. Termos a explicar com explicação curta
- **Polígono regular:** polígono com todos os lados de mesma medida e todos os ângulos internos congruentes.
- **Ângulo interno:** ângulo formado por dois lados consecutivos dentro do polígono.
- **Ângulo externo:** ângulo de giro associado a um lado do polígono regular.
- **Apótema:** segmento que parte do centro do polígono regular e chega perpendicularmente ao ponto médio de um lado.
- **Circunferência inscrita:** circunferência interna tangente aos lados do polígono.
- **Circunferência circunscrita:** circunferência externa que passa pelos vértices do polígono.

## 9. Procedimentos obrigatórios
Soma dos ângulos internos:

$$S_i = (n - 2) \cdot 180^\circ$$

Ângulo interno de polígono regular:

$$a_i = \frac{(n - 2) \cdot 180^\circ}{n}$$

Ângulo externo:

$$a_e = \frac{360^\circ}{n}$$

Relação de conferência:

$$a_i + a_e = 180^\circ$$

Área do polígono regular:

$$A = \frac{P \cdot m}{2}$$

Apótemas canônicos:

$$m = \frac{\ell \sqrt{3}}{2}$$

$$m = \frac{\ell}{2}$$

$$m = \frac{\ell \sqrt{3}}{6}$$

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- por que regularidade exige lado e ângulo;
- como usar $$n$$ nas fórmulas de ângulo;
- como montar uma tabela com triângulo, quadrado, pentágono, hexágono e octógono;
- que o apótema é perpendicular ao lado;
- que o apótema coincide com o raio da circunferência inscrita;
- a diferença entre inscrito e circunscrito;
- pelo menos um cálculo de área usando perímetro e apótema.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- ensinar construção com régua e compasso, que fica para o Capítulo 2;
- ensinar algoritmo de construção, que fica para o Capítulo 3;
- usar plano cartesiano, que fica para o Capítulo 4;
- usar trigonometria;
- desenvolver razão entre áreas por semelhança;
- tratar polígonos estrelados ou não convexos;
- transformar Dürer em biografia longa.

## 12. Linguagem esperada
- Usar linguagem intermediária, adequada a 9º Ano.
- Nomear o símbolo antes da fórmula: $$n$$ é o número de lados.
- Explicar cada fórmula por função: soma, cada ângulo, giro externo, área.
- Em exemplos, substituir os valores antes de calcular.
- Evitar "obviamente" e saltos algébricos.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Polígonos Regulares`
- Pergunta-problema: `## O que faz uma figura ser regular de verdade?`
- Abertura narrativa: favo de mel ou Albrecht Dürer e o uso da geometria na arte.
- Para Conversar de intro: "Uma figura pode parecer regular sem ser regular?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Regularidade
    - `### 1.1 Lados iguais não bastam sempre`
    - `### 1.2 Lados e ângulos trabalhando juntos`
  - Bloco 2 — Ângulos
    - `### 2.1 Soma dos ângulos internos`
    - `### 2.2 Ângulo interno e externo`
  - Bloco 3 — Apótema
    - `### 3.1 O segmento que mede a profundidade do polígono`
    - `### 3.2 Área com perímetro e apótema`
  - Bloco 4 — Circunferências
    - `### 4.1 Polígono inscrito`
    - `### 4.2 Polígono circunscrito`
- Sua Parte: calcular ângulos e área de hexágono regular com lado e apótema dados.
- Curiosidade da Ciência: Dürer e a geometria como ferramenta de artistas.
- Enquanto isso...: Provérbios 24:3-4 como ponte para construção sábia e firme.
- E para hoje...: observar placas, mosaicos e favos, identificando regularidade.
- Esse foi o "cara": Albrecht Dürer.
- Você já pensou nisso?: por que hexágonos cobrem o plano sem deixar buracos?
- Simplificando: polígono regular é coerência total entre lados e ângulos.
- Para não esquecer: 5 bullets sobre regularidade, ângulo interno, ângulo externo, apótema e circunferências.

## 14. Âncoras visuais/concretas
- Favo de mel com hexágonos.
- Tabela de polígonos regulares.
- Hexágono com ângulo interno e externo destacados.
- Polígono com apótema desenhado do centro ao lado.
- Esquema lado tangente versus vértice sobre circunferência.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Provérbios 24:3-4.
- Ponteiro específico: todos os lados e todos os ângulos precisam obedecer ao mesmo padrão.
- Conexão temática: integridade aparece como coerência entre cada parte e o todo; não basta uma parte parecer correta.

## 16. Critérios de aceite
O capítulo está adequado se:
- define polígono regular por lados e ângulos;
- calcula $$S_i$$, $$a_i$$ e $$a_e$$ em exemplos;
- inclui conferência por $$a_i + a_e = 180^\circ$$;
- define apótema e o distingue do raio circunscrito;
- usa $$A = \frac{P \cdot m}{2}$$ em contexto simples;
- distingue polígono inscrito e circunscrito;
- não antecipa construção, algoritmo ou geometria analítica.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **identificará** polígonos regulares por lados e ângulos congruentes.
2. O aluno **calculará** ângulos internos e externos de polígonos regulares.
3. O aluno **explicará** o papel do apótema em polígonos regulares.
4. O aluno **distinguirá** inscrição e circunscrição em circunferência.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Verifica lados e ângulos.
- Não classifica como regular apenas pela aparência.
- Nomeia exemplos corretos.

**Para o objetivo 2:**
- Identifica corretamente $$n$$.
- Substitui $$n$$ nas fórmulas.
- Confere a soma entre ângulo interno e externo.

**Para o objetivo 3:**
- Desenha o apótema perpendicular ao lado.
- Relaciona apótema à circunferência inscrita.
- Usa apótema em cálculo de área quando dados forem fornecidos.

**Para o objetivo 4:**
- Reconhece vértices na circunferência no caso inscrito.
- Reconhece lados tangentes no caso circunscrito.
- Não confunde raio inscrito com raio circunscrito.

### Habilidade BNCC consolidada no capítulo
- **EF08MA17**, ao aplicar área e perímetro em polígonos regulares considerando o apótema.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- BNCC: EF08MA17
- Albrecht Dürer, `Underweysung der Messung`.
