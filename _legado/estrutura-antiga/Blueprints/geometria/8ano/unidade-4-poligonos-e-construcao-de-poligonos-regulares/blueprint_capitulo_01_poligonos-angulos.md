# Blueprint Técnico — Capítulo 1: Polígonos: Ângulos

## 1. Identificação
- Disciplina: Geometria
- Ano/Série: 8º Ano EF II
- Bimestre: 2º
- Unidade: 4 — Polígonos e Construção de Polígonos Regulares
- Capítulo: 1 de 3
- Título: Polígonos: Ângulos
- Código BNCC: EF08MA14
- Profundidade geral: N3

## 2. Objetivo do capítulo
Levar o aluno a demonstrar a fórmula da soma dos ângulos internos de um polígono convexo, aplicá-la em cálculos e relacioná-la aos ângulos internos e externos de polígonos regulares.

## 3. Pergunta-problema
*"Como descobrir a soma dos ângulos de qualquer polígono sem medir um por um?"*

## 4. Tensão narrativa
Medir cada ângulo parece resolver o problema, mas não explica por que o resultado acontece. A tensão do capítulo é medição isolada × regra geral: decompor o polígono em triângulos revela uma estrutura que vale para qualquer número de lados.

## 5. Sequência conceitual obrigatória
1. Retomar ângulos internos de triângulos e quadriláteros.
2. Mostrar que um quadrilátero pode ser decomposto em 2 triângulos.
3. Generalizar a decomposição de um polígono de $$n$$ lados em $$n - 2$$ triângulos.
4. Apresentar a fórmula da soma dos ângulos internos.
5. Aplicar a fórmula em polígonos de 5, 6, 8 e 10 lados.
6. Definir polígono regular como contexto para dividir a soma igualmente.
7. Calcular ângulo interno de polígono regular.
8. Definir ângulo externo de polígono regular.
9. Calcular ângulo externo por $$360^\circ \div n$$.
10. Fechar relacionando regra geral, regularidade e conferência de resultados.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Demonstração da soma dos ângulos internos | 35% | N3 | Explicar a decomposição em triângulos e justificar o termo $$n - 2$$. |
| Aplicação da fórmula em polígonos | 25% | N3 | Resolver exemplos com substituição explícita e conferência. |
| Ângulo interno de polígono regular | 25% | N3 | Dividir a soma total pelo número de lados, com exemplos. |
| Ângulo externo de polígono regular | 15% | N2 | Apresentar como volta completa dividida em partes iguais. |

## 7. Conceitos obrigatórios
- Polígono convexo
- Lados
- Vértices
- Diagonais traçadas a partir de um vértice
- Triângulos internos
- Soma dos ângulos internos
- Polígono regular
- Ângulo interno
- Ângulo externo
- Número de lados $$n$$

## 8. Termos a explicar com explicação curta
- **Polígono convexo:** polígono sem reentrâncias, em que as diagonais usadas na decomposição ficam no interior.
- **Decomposição:** divisão de uma figura em partes menores.
- **Diagonal:** segmento que liga vértices não consecutivos.
- **Soma dos ângulos internos:** total obtido ao adicionar todos os ângulos de dentro do polígono.
- **Ângulo interno regular:** ângulo de cada vértice quando todos os ângulos são congruentes.
- **Ângulo externo regular:** ângulo de giro associado a cada lado de um polígono regular.

## 9. Procedimentos obrigatórios
Fórmula da soma dos ângulos internos:

$$S_i = (n - 2) \cdot 180^\circ$$

Exemplo obrigatório para hexágono:

$$S_i = (6 - 2) \cdot 180^\circ$$

$$S_i = 4 \cdot 180^\circ$$

$$S_i = 720^\circ$$

Ângulo interno de polígono regular:

$$a_i = \frac{(n - 2) \cdot 180^\circ}{n}$$

Ângulo externo de polígono regular:

$$a_e = \frac{360^\circ}{n}$$

Conferência sugerida:
- Em polígono regular, $$a_i + a_e = 180^\circ$$.
- A soma dos ângulos externos é $$360^\circ$$.

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- por que a soma dos ângulos internos do triângulo é o ponto de partida;
- por que o quadrilátero tem soma igual a $$360^\circ$$;
- por que um polígono de $$n$$ lados se divide em $$n - 2$$ triângulos;
- como usar a fórmula em exemplos numéricos;
- como calcular o ângulo interno de um polígono regular;
- como calcular o ângulo externo de um polígono regular;
- que a regularidade permite dividir a soma igualmente entre os vértices.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- usar trigonometria;
- desenvolver polígonos não convexos;
- ensinar área de polígono regular;
- formalizar apótema;
- ensinar construções geométricas completas, que ficam para o Capítulo 3;
- apresentar demonstração algébrica abstrata sem apoio visual;
- transformar Wallis em biografia longa.

## 12. Linguagem esperada
- Usar frases médias e explicações claras, adequadas a 8º Ano.
- Introduzir símbolos antes de usá-los: $$n$$ representa o número de lados.
- Evitar saltos do tipo "logo" sem explicar a etapa intermediária.
- Nomear a ação matemática: decompor, somar, substituir, dividir, conferir.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Polígonos: Ângulos`
- Pergunta-problema: `## Como uma fórmula enxerga todos os ângulos?`
- Abertura narrativa: John Wallis e a busca por padrões gerais em figuras e sequências.
- Para Conversar de intro: "O que muda quando você mede uma figura e quando você demonstra uma regra?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Do Triângulo ao Quadrilátero
    - `### 1.1 O triângulo como peça básica`
    - `### 1.2 Por que o quadrilátero soma 360 graus`
  - Bloco 2 — A Fórmula Geral
    - `### 2.1 Dividindo um polígono em triângulos`
    - `### 2.2 De onde vem o n menos 2`
  - Bloco 3 — Aplicando a Fórmula
    - `### 3.1 Substituir antes de calcular`
    - `### 3.2 Conferir se o resultado faz sentido`
  - Bloco 4 — Ângulos em Polígonos Regulares
    - `### 4.1 Ângulo interno regular`
    - `### 4.2 Ângulo externo regular`
- Sua Parte: calcular a soma dos ângulos internos e o ângulo interno regular de pentágono, hexágono e octógono.
- Curiosidade da Ciência: John Wallis, o símbolo de infinito e o uso de polígonos em aproximações.
- Enquanto isso...: Provérbios 10:9 como ponte para uma regra que permanece íntegra.
- E para hoje...: identificar polígonos em placas e estimar se os ângulos são coerentes com a regularidade.
- Esse foi o "cara": John Wallis.
- Você já pensou nisso?: por que a mesma fórmula funciona para polígonos de tamanhos tão diferentes?
- Simplificando: a soma dos ângulos internos depende de quantos triângulos cabem dentro do polígono.
- Para não esquecer: 5 bullets sobre triângulos, $$n - 2$$, soma interna, ângulo interno regular e ângulo externo.

## 14. Âncoras visuais/concretas
- Quadrilátero dividido por uma diagonal.
- Pentágono dividido em 3 triângulos a partir de um vértice.
- Tabela com $$n$$, nome do polígono, soma interna e ângulo interno regular.
- Hexágono regular com ângulo interno e externo destacados.
- Placas de trânsito e ladrilhos como exemplos visuais.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Provérbios 10:9.
- Ponteiro específico: a fórmula vale sem exceção para o escopo estudado.
- Conexão temática: integridade aparece como constância da regra. O número de lados muda, mas a estrutura da soma permanece coerente quando o procedimento é aplicado corretamente.

## 16. Critérios de aceite
O capítulo está adequado se:
- demonstra visualmente a origem de $$S_i = (n - 2) \cdot 180^\circ$$;
- aplica a fórmula em pelo menos 3 polígonos;
- calcula ângulo interno de polígono regular com substituição explícita;
- calcula ângulo externo de polígono regular por divisão da volta completa;
- distingue soma total de ângulo de cada vértice;
- não antecipa área, apótema, trigonometria ou polígonos não construtíveis.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **demonstrará** a fórmula da soma dos ângulos internos de polígonos convexos.
2. O aluno **calculará** a soma dos ângulos internos de polígonos com diferentes valores de $$n$$.
3. O aluno **determinará** o ângulo interno de polígonos regulares.
4. O aluno **relacionará** ângulo externo regular à divisão de $$360^\circ$$.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Divide o polígono em triângulos a partir de um vértice.
- Explica por que aparecem $$n - 2$$ triângulos.
- Relaciona cada triângulo a $$180^\circ$$.

**Para o objetivo 2:**
- Identifica corretamente o valor de $$n$$.
- Substitui $$n$$ na fórmula.
- Confere se o resultado aumenta com o número de lados.

**Para o objetivo 3:**
- Reconhece que o polígono precisa ser regular.
- Divide a soma total por $$n$$.
- Interpreta o resultado como ângulo de cada vértice.

**Para o objetivo 4:**
- Usa $$360^\circ$$ como volta completa.
- Divide por $$n$$.
- Compara ângulo interno e externo quando adequado.

### Habilidade BNCC consolidada no capítulo
- **EF08MA14**, ao demonstrar e aplicar propriedades dos polígonos, especialmente relações entre número de lados e ângulos.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- BNCC: EF08MA14
- John Wallis, `Arithmetica Infinitorum`.
