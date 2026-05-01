# Blueprint Técnico — Capítulo 1: Cálculo de Determinantes

## 1. Identificação
- Disciplina: Matemática
- Ano/Série: 2ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 — Determinantes
- Capítulo: 1 de 2
- Título: Cálculo de Determinantes
- Código BNCC principal: EM13MAT301
- Profundidade geral: N3-N4 — CONSOLIDA + APRESENTA

## 2. Objetivo do capítulo
Levar o aluno a calcular determinantes de matrizes quadradas de ordem 1, 2 e 3, reconhecendo a Regra de Sarrus como método específico para 3x3 e o desenvolvimento de Laplace por cofatores como método geral para matrizes de ordem maior.

## 3. Pergunta-problema
*"Como um único número associado a uma matriz quadrada pode indicar se ela preserva ou perde sua integridade estrutural?"*

## 4. Tensão narrativa
Uma matriz pode parecer apenas uma tabela de números, mas certas tabelas carregam uma estrutura que pode ser preservada, invertida ou colapsada. O determinante transforma essa estrutura em um número. Quando esse número zera, a matriz perde a possibilidade de inversa. O capítulo começa em cálculos pequenos e conduz o aluno até Laplace, em que a escolha organizada de linhas, colunas e cofatores permite calcular determinantes de qualquer ordem.

## 5. Sequência conceitual obrigatória
1. Retomar matriz quadrada e ordem da matriz.
2. Definir determinante como número associado a matriz quadrada.
3. Apresentar as notações `det(A)` e `|A|`.
4. Calcular determinante de ordem 1.
5. Calcular determinante de ordem 2 pela regra `ad - bc`.
6. Calcular determinante de ordem 3 pela Regra de Sarrus.
7. Explicitar que Sarrus só vale para 3x3.
8. Definir menor complementar.
9. Definir cofator com sinal alternado.
10. Calcular determinante por desenvolvimento de Laplace.
11. Mostrar que Laplace pode ser aplicado a qualquer ordem.
12. Conectar `det(A) = 0` à ideia de matriz singular.
13. Conectar a integridade da matriz à VP Integridade.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Definição e notação | 10% | N2 | `det(A)`, `|A|` e matriz quadrada. |
| Ordem 1 e ordem 2 | 15% | N2 | `det([a]) = a` e `ad - bc`. |
| Regra de Sarrus 3x3 | 30% | N3 | Diagonais principais menos diagonais secundárias. |
| Desenvolvimento de Laplace | 30% | N4 | Expansão por cofatores com sinais alternados. |
| Determinante n x n | 15% | N3 | Aplicação iterativa de Laplace. |

## 7. Conceitos obrigatórios
- Matriz quadrada
- Ordem da matriz
- Determinante
- Notação `det(A)`
- Notação `|A|`
- Determinante de ordem 1
- Determinante de ordem 2
- Regra de Sarrus
- Diagonal principal
- Diagonal secundária
- Menor complementar
- Cofator
- Desenvolvimento de Laplace
- Matriz singular
- Carl Gustav Jacob Jacobi

## 8. Termos a explicar com tradução curta
- **Determinante:** número associado a uma matriz quadrada.
- **Matriz quadrada:** matriz com mesmo número de linhas e colunas.
- **Ordem:** quantidade de linhas e colunas de uma matriz quadrada.
- **Sarrus:** regra prática para determinante de matriz 3x3.
- **Menor complementar:** determinante obtido ao retirar uma linha e uma coluna.
- **Cofator:** menor complementar com sinal `+` ou `-` determinado por `(-1)^{i+j}`.
- **Laplace:** método que calcula determinante somando produtos de elementos por seus cofatores.
- **Matriz singular:** matriz quadrada com determinante zero.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- que determinante é definido para matriz quadrada;
- que `det(A)` e `|A|` são notações para determinante;
- que o determinante de ordem 1 é o próprio elemento;
- que o determinante de ordem 2 é `ad - bc`;
- como aplicar Sarrus em uma matriz 3x3;
- que Sarrus não deve ser usado em 4x4 ou maior;
- o conceito de menor complementar;
- o conceito de cofator;
- o padrão de sinais alternados dos cofatores;
- o desenvolvimento de Laplace por uma linha ou coluna;
- que Laplace é recursivo e permite calcular determinantes de ordem `n`;
- Jacobi como referência histórica ligada à sistematização de determinantes;
- a ponte VP: determinante como síntese da integridade estrutural.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- formalizar determinantes funcionais ou jacobianos;
- trabalhar permanente de matriz;
- usar decomposição LU;
- introduzir autovalores ou polinômio característico;
- ensinar Cramer como procedimento central;
- aprofundar demonstrações de álgebra multilinear;
- usar Sarrus fora de matrizes 3x3.

## 11. Linguagem esperada
- Linguagem algébrica clara, com leitura verbal das fórmulas.
- Procedimentos numerados para cálculos longos.
- Ênfase visual em diagonais no caso de Sarrus.
- Ênfase em organização de sinais no caso de Laplace.
- Usar `matriz singular` somente depois de explicar que `det(A) = 0`.
- Tratar Jacobi em parágrafo breve, conectado à história dos determinantes.

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Cálculo de Determinantes`
- Pergunta-problema: `## O que o determinante revela sobre uma matriz?`
- Abertura narrativa: uma matriz pode ter estrutura íntegra ou singular.
- Para Conversar de intro: "Que informação você gostaria de saber sobre uma matriz antes de tentar invertê-la?"
- Desenvolvimento em 5 blocos:
  - Bloco 1 — O que é Determinante
    - `### 1.1 Matrizes quadradas`
    - `### 1.2 Notações det(A) e |A|`
  - Bloco 2 — Ordens Pequenas
    - `### 2.1 Determinante de ordem 1`
    - `### 2.2 Determinante de ordem 2`
  - Bloco 3 — Regra de Sarrus
    - `### 3.1 Diagonais principais`
    - `### 3.2 Diagonais secundárias`
    - `### 3.3 Por que Sarrus para em 3x3`
  - Bloco 4 — Cofatores
    - `### 4.1 Menor complementar`
    - `### 4.2 Sinais alternados`
  - Bloco 5 — Desenvolvimento de Laplace
    - `### 5.1 Expansão por linha`
    - `### 5.2 Expansão por coluna`
    - `### 5.3 Determinantes de ordem n`
- Enquanto isso: Jacobi e a sistematização dos determinantes.
- NA VIDA REAL: computação gráfica e orientação de transformações.
- E para hoje: Provérbios 10:9 e integridade como estrutura que não colapsa.
- Simplificando: determinante é um número que pode ser calculado por Sarrus em 3x3 ou por Laplace em qualquer ordem.
- Para não esquecer: 5 bullets sobre matriz quadrada, `ad - bc`, Sarrus, cofator e Laplace.

## 13. Fórmulas e notações centrais
- `det(A)` e `|A|`
- `det([a]) = a`
- `\det\begin{pmatrix} a & b \\ c & d \end{pmatrix} = ad - bc`
- `\mathrm{Sarrus}: \det = \sum_{\mathrm{principais}} - \sum_{\mathrm{secundarias}}`
- `A_{ij} = (-1)^{i+j} M_{ij}`
- `\det A = \sum_{j=1}^{n} a_{ij} A_{ij}`
- `\det A = 0` indica matriz singular.

## 14. Âncoras visuais/concretas
- Matriz 2x2 com setas cruzadas mostrando `ad - bc`.
- Matriz 3x3 com repetição das duas primeiras colunas para Sarrus.
- Quadro de sinais de cofatores:
  - `+ - +`
  - `- + -`
  - `+ - +`
- Esquema de menor complementar retirando uma linha e uma coluna.
- Árvore curta mostrando Laplace reduzindo 4x4 para determinantes 3x3.
- Comparação visual: det diferente de zero preserva área/orientação; det zero colapsa figura.

## 15. Conexão VP
- Unidade VP: Integridade.
- Versículo principal sugerido: Provérbios 10:9.
- Personagem bíblico: Daniel.
- Ponteiro específico: o determinante sintetiza a integridade da matriz; quando `det(A) = 0`, a estrutura é singular e perde inversa.
- Conexão temática: integridade não é aparência de organização, mas coerência estrutural. Em uma matriz, essa coerência aparece no determinante; em Daniel, aparece na fidelidade constante sob pressão.
- Pergunta formativa: "Quais sinais concretos mostram que uma estrutura, uma decisão ou uma pessoa permanece íntegra quando é pressionada?"

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **definirá** determinante como número associado a matriz quadrada.
2. O aluno **calculará** determinantes de ordem 1 e 2.
3. O aluno **aplicará** a Regra de Sarrus em matrizes 3x3.
4. O aluno **identificará e calculará** menores complementares e cofatores.
5. O aluno **calculará** determinantes por desenvolvimento de Laplace.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Reconhece que determinante exige matriz quadrada.
- Usa corretamente as notações `det(A)` e `|A|`.

**Para o objetivo 2:**
- Calcula `det([a])`.
- Aplica `ad - bc` sem inverter a ordem dos produtos.

**Para o objetivo 3:**
- Soma corretamente os produtos das diagonais principais.
- Subtrai corretamente os produtos das diagonais secundárias.
- Declara que Sarrus só vale para 3x3.

**Para o objetivo 4:**
- Remove corretamente linha e coluna para obter o menor complementar.
- Aplica o sinal de cofator por `(-1)^{i+j}`.

**Para o objetivo 5:**
- Escolhe uma linha ou coluna adequada para expandir.
- Organiza a soma dos produtos elemento x cofator.
- Reduz determinantes maiores a determinantes menores.

## 17. Critérios de aceite
O capítulo está adequado se:
- determinante aparece vinculado a matriz quadrada;
- `det(A)` e `|A|` são apresentados;
- há cálculo de ordem 1, ordem 2 e ordem 3;
- Sarrus aparece somente para 3x3;
- Laplace aparece com menor complementar, cofator e sinais alternados;
- o capítulo inclui a relação entre determinante zero e matriz singular;
- Jacobi aparece ligado à sistematização dos determinantes;
- a conexão VP é breve e formativa;
- não há jacobianos formalizados, permanente, LU, autovalores ou Cramer como conteúdo central.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/2serie/unidade-4-determinantes.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13MAT301.
- Carl Gustav Jacob Jacobi — sistematização dos determinantes.
- Bíblia: Provérbios 10:9; Daniel 6:4.
