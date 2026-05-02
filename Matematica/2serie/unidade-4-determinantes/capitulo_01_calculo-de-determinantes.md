# CAPÍTULO 1 — CÁLCULO DE DETERMINANTES

## INTRODUÇÃO

No século XIX, o matemático alemão Carl Gustav Jacob Jacobi sistematizou de forma rigorosa a teoria dos determinantes — generalizando ideias que já apareciam em Leibniz, Cramer e Laplace. A ideia central que herdamos é simples e poderosa: a cada matriz quadrada associa-se um único número que carrega informações estruturais sobre ela.

> 💭 **Pense um pouco:**  
> Que informação você gostaria de saber sobre uma matriz **antes** de tentar invertê-la?

---

## 1. O Que é Determinante

O determinante é um número associado a uma matriz quadrada — apenas matrizes quadradas têm determinante.

### 1.1 Matrizes quadradas

Uma matriz é **quadrada** quando o número de linhas é igual ao número de colunas. A **ordem** da matriz é esse valor comum.

Veja só:

Uma matriz $$2 \times 2$$ tem 2 linhas e 2 colunas — ordem 2.

Uma matriz $$3 \times 3$$ tem 3 linhas e 3 colunas — ordem 3.

Em uma matriz quadrada de ordem $$n$$, cada elemento é localizado por dois índices: $$a_{ij}$$ é o elemento da linha $$i$$ e da coluna $$j$$.

### 1.2 Notações $$\det(A)$$ e $$|A|$$

O determinante de uma matriz $$A$$ é representado de duas formas equivalentes: $$\det(A)$$ ou $$|A|$$.

Veja o exemplo abaixo.

Para uma matriz $$A$$ qualquer, escreve-se $$\det(A) = 7$$ ou $$|A| = 7$$ — significam exatamente a mesma coisa.

> ⚠️ **Atenção:**  
> Determinante existe **apenas** para matrizes quadradas. Em uma matriz $$2 \times 3$$, por exemplo, não há determinante.

---

## 2. Ordens Pequenas

O cálculo do determinante é direto para matrizes de ordem 1 e ordem 2.

### 2.1 Determinante de ordem 1

Se a matriz tem apenas um elemento $$a$$, seu determinante é o próprio $$a$$:

$$\det\bigl([a]\bigr) = a$$

Veja só:

Para a matriz $$[5]$$, o determinante é 5.

Para a matriz $$[-3]$$, o determinante é $$-3$$.

### 2.2 Determinante de ordem 2

Para uma matriz quadrada de ordem 2 com elementos $$a$$ (linha 1, coluna 1), $$b$$ (linha 1, coluna 2), $$c$$ (linha 2, coluna 1) e $$d$$ (linha 2, coluna 2), o determinante é:

$$\det(A) = a \cdot d - b \cdot c$$

Geometricamente, o cálculo segue uma "X" — produto da diagonal principal menos produto da diagonal secundária.

![Matriz 2x2 genérica com setas ilustrando o cálculo do determinante: produto da diagonal principal a·d (em azul, positivo) menos produto da diagonal secundária b·c (em vermelho, negativo)](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Matematica/_tikz/build/2serie/unidade-4-determinantes/matriz-2x2-ad-menos-bc.png)

Veja o exemplo abaixo.

Considere a matriz $$A$$ com primeira linha $$(3, 2)$$ e segunda linha $$(1, 4)$$. Aplicando a fórmula:

$$\det(A) = 3 \cdot 4 - 2 \cdot 1 = 12 - 2 = 10$$

**Resposta:** $$\det(A) = 10$$.

> 🔢 **Padrão:**  
> Determinante de ordem 2: produto da diagonal principal **menos** produto da diagonal secundária.

---

## 3. Regra de Sarrus

Para matrizes de ordem 3, há um método específico — a Regra de Sarrus.

### 3.1 Diagonais principais

A Regra de Sarrus consiste em repetir as duas primeiras colunas da matriz à direita dela, formando um arranjo $$3 \times 5$$. Em seguida, traçam-se três diagonais que descem da esquerda para a direita — as **diagonais principais** — e somam-se os produtos dos elementos de cada diagonal.

![Regra de Sarrus aplicada a matriz 3x3 genérica: as duas primeiras colunas são copiadas à direita; três diagonais descendentes em azul são as principais (somadas com sinal +) e três diagonais ascendentes em vermelho são as secundárias (somadas com sinal −)](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Matematica/_tikz/build/2serie/unidade-4-determinantes/sarrus-3x3.png)

A soma das diagonais principais é:

$$S_+ = a_{11} a_{22} a_{33} + a_{12} a_{23} a_{31} + a_{13} a_{21} a_{32}$$

### 3.2 Diagonais secundárias

As **diagonais secundárias** sobem da esquerda para a direita. Os produtos delas entram com sinal negativo:

$$S_- = a_{13} a_{22} a_{31} + a_{11} a_{23} a_{32} + a_{12} a_{21} a_{33}$$

O determinante é:

$$\det(A) = S_+ - S_-$$

Veja só:

Considere a matriz $$A$$ com as linhas $$(1, 2, 3)$$, $$(4, 5, 6)$$ e $$(7, 8, 0)$$.

**Resolução:**

- **Passo 1:** Calcular as diagonais principais.

$$S_+ = 1 \cdot 5 \cdot 0 + 2 \cdot 6 \cdot 7 + 3 \cdot 4 \cdot 8 = 0 + 84 + 96 = 180$$

- **Passo 2:** Calcular as diagonais secundárias.

$$S_- = 3 \cdot 5 \cdot 7 + 1 \cdot 6 \cdot 8 + 2 \cdot 4 \cdot 0 = 105 + 48 + 0 = 153$$

- **Passo 3:** Subtrair.

$$\det(A) = 180 - 153 = 27$$

**Resposta:** $$\det(A) = 27$$.

### 3.3 Por que Sarrus para em $$3 \times 3$$

A Regra de Sarrus **funciona apenas para matrizes $$3 \times 3$$**. Em matrizes de ordem 4 ou maior, o número de produtos cresce e a estrutura de diagonais não dá conta de capturá-los todos. Para essas ordens, é preciso outro método — o desenvolvimento de Laplace.

> ⚠️ **Atenção:**  
> Sarrus **não vale** em matrizes $$4 \times 4$$, $$5 \times 5$$ e maiores. Aplicar Sarrus em matrizes maiores produz resultado **errado**.

---

## 4. Cofatores

O desenvolvimento de Laplace usa duas peças: o menor complementar e o cofator.

### 4.1 Menor complementar

O **menor complementar** $$M_{ij}$$ é o determinante da matriz que sobra ao retirar a linha $$i$$ e a coluna $$j$$ da matriz original.

Veja só:

Considere a matriz $$A$$ de ordem 3 com linhas $$(1, 2, 3)$$, $$(4, 5, 6)$$ e $$(7, 8, 0)$$.

Para encontrar $$M_{11}$$, retiram-se a linha 1 e a coluna 1, sobrando a matriz com linhas $$(5, 6)$$ e $$(8, 0)$$:

$$M_{11} = 5 \cdot 0 - 6 \cdot 8 = -48$$

Para $$M_{12}$$, retiram-se a linha 1 e a coluna 2, sobrando $$(4, 6)$$ e $$(7, 0)$$:

$$M_{12} = 4 \cdot 0 - 6 \cdot 7 = -42$$

Para $$M_{13}$$, retiram-se a linha 1 e a coluna 3, sobrando $$(4, 5)$$ e $$(7, 8)$$:

$$M_{13} = 4 \cdot 8 - 5 \cdot 7 = -3$$

### 4.2 Sinais alternados

O **cofator** $$A_{ij}$$ é o menor complementar com um sinal:

$$A_{ij} = (-1)^{i+j} \cdot M_{ij}$$

Os sinais formam um padrão alternado em forma de tabuleiro de xadrez.

![Quadro 3x3 de sinais alternados dos cofatores: posições com soma i+j par são positivas (+), posições com soma ímpar são negativas (−)](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Matematica/_tikz/build/2serie/unidade-4-determinantes/sinais-cofatores-3x3.png)

Veja o exemplo abaixo.

Continuando o exemplo da matriz com linhas $$(1, 2, 3)$$, $$(4, 5, 6)$$ e $$(7, 8, 0)$$:

$$A_{11} = (-1)^{1+1} \cdot M_{11} = (+1) \cdot (-48) = -48$$

$$A_{12} = (-1)^{1+2} \cdot M_{12} = (-1) \cdot (-42) = 42$$

$$A_{13} = (-1)^{1+3} \cdot M_{13} = (+1) \cdot (-3) = -3$$

> 🔢 **Padrão:**  
> Cofator = menor complementar com sinal $$(-1)^{i+j}$$. Posições onde $$i + j$$ é par recebem $$+$$; onde é ímpar, recebem $$-$$.

---

## 5. Desenvolvimento de Laplace

O desenvolvimento de Laplace permite calcular o determinante de uma matriz quadrada de qualquer ordem.

### 5.1 Expansão por linha

Escolhe-se uma linha qualquer e soma-se o produto de cada elemento dela pelo seu cofator:

$$\det(A) = \sum_{j=1}^{n} a_{ij} \cdot A_{ij}$$

Veja só:

Para a matriz com linhas $$(1, 2, 3)$$, $$(4, 5, 6)$$ e $$(7, 8, 0)$$, expandindo pela primeira linha (com cofatores já calculados na seção anterior):

$$\det(A) = a_{11} A_{11} + a_{12} A_{12} + a_{13} A_{13}$$

$$\det(A) = 1 \cdot (-48) + 2 \cdot 42 + 3 \cdot (-3)$$

$$\det(A) = -48 + 84 - 9 = 27$$

**Resposta:** $$\det(A) = 27$$ — o mesmo valor obtido por Sarrus, confirmando a coerência dos dois métodos.

### 5.2 Expansão por coluna

Da mesma forma, é possível expandir por uma coluna qualquer:

$$\det(A) = \sum_{i=1}^{n} a_{ij} \cdot A_{ij}$$

Veja o exemplo abaixo.

A escolha da linha ou coluna é estratégica: se houver uma linha (ou coluna) com **muitos zeros**, ela elimina cofatores inteiros do cálculo, simplificando muito o trabalho.

Por exemplo, em uma matriz $$4 \times 4$$ cuja segunda coluna é $$(0, 0, 0, 5)$$, basta calcular um único cofator — o de $$a_{42}$$, multiplicado por 5. Os outros três termos zeram pelo elemento.

### 5.3 Determinantes de ordem $$n$$

Para matrizes de ordem 4 ou maior, Laplace é aplicado **recursivamente**: cada cofator é, ele mesmo, o determinante de uma matriz menor (ordem $$n - 1$$), que pode ser calculado por Sarrus (se for $$3 \times 3$$) ou por novo desdobramento de Laplace.

Veja só:

Para uma matriz $$4 \times 4$$, expandir por uma linha gera 4 cofatores — cada um é um determinante $$3 \times 3$$, que pode ser calculado por Sarrus. Resultado: o determinante $$4 \times 4$$ vira uma soma de quatro determinantes $$3 \times 3$$ multiplicados pelos elementos da linha escolhida.

> 🔢 **Padrão:**  
> Sarrus → método específico para $$3 \times 3$$. Laplace → método geral, válido para qualquer ordem.

A relação entre o determinante e a estrutura da matriz se completa em uma observação importante: quando $$\det(A) = 0$$, a matriz é dita **singular** — não admite inversa. Quando $$\det(A) \neq 0$$, a matriz é inversível, com inversa única. As implicações dessa relação são desenvolvidas no Capítulo 2.

---

## NA VIDA REAL

Em computação gráfica, o determinante de uma matriz $$3 \times 3$$ ou $$4 \times 4$$ controla rotações, ampliações e projeções — quando $$\det = 0$$, a transformação colapsa a figura sobre uma reta ou um ponto, perdendo informação. Em engenharia estrutural, a matriz de rigidez precisa ter determinante diferente de zero — caso contrário, a estrutura é instável.

---

## E A BÍBLIA NISSO?

<center>
*"Quem anda em integridade anda seguro, mas o que perverte os seus caminhos será conhecido."* — **Provérbios 10:9**
</center>

O determinante sintetiza, em um único número, a integridade estrutural de uma matriz: quando ele zera, a estrutura colapsa e perde a possibilidade de inversa; quando não zera, a matriz preserva uma forma de coerência algébrica.

> 💬 **Para Conversar:** Quais sinais concretos mostram que uma estrutura, uma decisão ou uma pessoa permanece íntegra quando é pressionada?

---

## Simplificando

Determinante é um número associado a uma matriz quadrada, denotado $$\det(A)$$ ou $$|A|$$. Para ordem 1, é o próprio elemento; para ordem 2, é $$ad - bc$$; para ordem 3, usa-se a Regra de Sarrus; para ordem qualquer, usa-se o desenvolvimento de Laplace por cofatores. Determinante zero indica matriz singular, sem inversa.

---

## Fórmulas do capítulo

- **Determinante de ordem 1:** $$\det\bigl([a]\bigr) = a$$.
- **Determinante de ordem 2:** $$\det(A) = a \cdot d - b \cdot c$$.
- **Regra de Sarrus (ordem 3):** $$\det(A) = S_{+} - S_{-}$$, onde $$S_{+}$$ é a soma dos produtos das diagonais principais e $$S_{-}$$ a soma dos produtos das diagonais secundárias.
- **Cofator:** $$A_{ij} = (-1)^{i+j} \cdot M_{ij}$$.
- **Desenvolvimento de Laplace (por linha $$i$$):** $$\det(A) = \sum_{j=1}^{n} a_{ij} \cdot A_{ij}$$.
- **Matriz singular:** matriz quadrada com $$\det(A) = 0$$ — não admite inversa.
