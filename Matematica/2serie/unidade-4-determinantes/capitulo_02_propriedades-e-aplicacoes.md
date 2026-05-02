# CAPÍTULO 2 — PROPRIEDADES E APLICAÇÕES

## INTRODUÇÃO

No século XVIII, o matemático francês Pierre-Simon Laplace organizou o desenvolvimento de determinantes por cofatores em uma estrutura sistemática — a mesma que Jacobi, no século seguinte, refinaria. As propriedades dos determinantes que aparecem neste capítulo permitem prever o comportamento do número $$\det(A)$$ sem precisar refazer o cálculo do zero, e abrem caminho para uma das aplicações mais importantes: o cálculo da matriz inversa.

> 💭 **Pense um pouco:**  
> Se duas linhas de uma matriz dizem a mesma coisa em proporção, por que a estrutura perde força?

---

## 1. Propriedades que Preservam ou Mudam Sinal

Algumas operações sobre uma matriz preservam o determinante; outras apenas trocam seu sinal.

### 1.1 Transposta

A **transposta** de uma matriz $$A$$, denotada $$A^T$$, é obtida trocando linhas por colunas. O determinante da transposta é igual ao da original:

$$\det(A^T) = \det(A)$$

Veja só:

Para a matriz $$A$$ de ordem 2 com primeira linha $$(3, 2)$$ e segunda linha $$(1, 4)$$:

$$\det(A) = 3 \cdot 4 - 2 \cdot 1 = 10$$

A transposta $$A^T$$ tem primeira linha $$(3, 1)$$ e segunda linha $$(2, 4)$$:

$$\det(A^T) = 3 \cdot 4 - 1 \cdot 2 = 10$$

Os dois determinantes coincidem.

> 🔢 **Padrão:**  
> Transpor uma matriz preserva seu determinante.

### 1.2 Troca de linhas ou colunas

Trocar de posição duas linhas (ou duas colunas) de uma matriz **inverte o sinal** do determinante.

Veja o exemplo abaixo.

Considere a matriz $$A$$ com primeira linha $$(3, 2)$$ e segunda linha $$(1, 4)$$, em que $$\det(A) = 10$$.

Trocando as duas linhas, obtemos $$B$$ com primeira linha $$(1, 4)$$ e segunda linha $$(3, 2)$$:

$$\det(B) = 1 \cdot 2 - 4 \cdot 3 = 2 - 12 = -10$$

O determinante mudou de sinal — passou de 10 para $$-10$$.

---

## 2. Propriedades que Anulam

Algumas configurações da matriz forçam $$\det(A) = 0$$ — diagnóstico imediato de matriz singular.

### 2.1 Linha ou coluna nula

Se uma linha (ou coluna) inteira da matriz é formada apenas por zeros, então:

$$\det(A) = 0$$

Veja só:

Considere a matriz $$A$$ de ordem 3 com linhas $$(2, 5, 1)$$, $$(0, 0, 0)$$ e $$(7, 3, 4)$$.

Aplicando Laplace pela segunda linha (que tem todos os elementos iguais a zero), todos os termos zeram. Logo, $$\det(A) = 0$$.

### 2.2 Linhas ou colunas proporcionais

Se duas linhas (ou duas colunas) da matriz são **proporcionais** (uma é múltipla da outra), o determinante também zera.

Veja o exemplo abaixo.

Considere a matriz $$A$$ de ordem 2 com primeira linha $$(2, 3)$$ e segunda linha $$(4, 6)$$.

A segunda linha é o dobro da primeira: $$(4, 6) = 2 \cdot (2, 3)$$.

Calculando:

$$\det(A) = 2 \cdot 6 - 3 \cdot 4 = 12 - 12 = 0$$

Linhas proporcionais carregam a mesma informação estrutural — a matriz não tem independência entre suas linhas e colapsa.

> ⚠️ **Atenção:**  
> Linhas iguais são caso particular de linhas proporcionais (proporção 1). Em ambos os casos, $$\det(A) = 0$$.

---

## 3. Propriedades de Escala e Produto

Quando a matriz é multiplicada por uma constante ou por outra matriz, o determinante se transforma de modo previsível.

### 3.1 Multiplicação por constante

Se uma **única linha** (ou coluna) da matriz for multiplicada por uma constante $$\lambda$$, o determinante fica multiplicado por $$\lambda$$.

Já se a matriz **inteira** $$A$$ (de ordem $$n$$) for multiplicada por $$\lambda$$, todas as $$n$$ linhas são afetadas — então o determinante fica multiplicado por $$\lambda^n$$:

$$\det(\lambda \cdot A) = \lambda^n \cdot \det(A)$$

Veja só:

Para a matriz $$A$$ de ordem 2 com $$\det(A) = 10$$ e $$\lambda = 3$$:

$$\det(3 \cdot A) = 3^2 \cdot 10 = 9 \cdot 10 = 90$$

Para uma matriz de ordem 3 com $$\det(A) = 4$$ e $$\lambda = 2$$:

$$\det(2 \cdot A) = 2^3 \cdot 4 = 8 \cdot 4 = 32$$

### 3.2 Determinante do produto

O determinante do produto de duas matrizes quadradas de mesma ordem é o produto dos determinantes:

$$\det(A \cdot B) = \det(A) \cdot \det(B)$$

Veja o exemplo abaixo.

Se $$\det(A) = 5$$ e $$\det(B) = -3$$, então:

$$\det(A \cdot B) = 5 \cdot (-3) = -15$$

Sem precisar calcular o produto $$A \cdot B$$ explicitamente.

### 3.3 O erro comum: soma de matrizes

Em geral, a relação para soma **não vale**:

$$\det(A + B) \neq \det(A) + \det(B)$$

Veja só:

Para $$A$$ com primeira linha $$(1, 0)$$ e segunda linha $$(0, 1)$$, $$\det(A) = 1$$.

Para $$B$$ com primeira linha $$(0, 1)$$ e segunda linha $$(1, 0)$$, $$\det(B) = -1$$.

$$\det(A) + \det(B) = 1 + (-1) = 0$$

Mas a soma $$A + B$$ tem primeira linha $$(1, 1)$$ e segunda linha $$(1, 1)$$ — duas linhas iguais. Logo, $$\det(A + B) = 0$$ também, mas **por coincidência neste caso**.

Em outros exemplos, os dois lados não batem. A regra do produto é exclusiva da multiplicação.

> ⚠️ **Atenção:**  
> $$\det(A \cdot B) = \det(A) \cdot \det(B)$$ **vale**; $$\det(A + B) = \det(A) + \det(B)$$ **não vale** em geral.

---

## 4. Cofatores, Adjunta e Jacobi

Reorganizando os cofatores em uma nova matriz, prepara-se o caminho para o cálculo da inversa.

### 4.1 Matriz dos cofatores

A **matriz dos cofatores** $$\mathrm{cof}(A)$$ é a matriz formada por todos os cofatores de $$A$$, posicionados na mesma posição original.

Veja só:

Para $$A$$ de ordem 2 com primeira linha $$(1, 2)$$ e segunda linha $$(3, 4)$$:

$$A_{11} = (+1) \cdot 4 = 4$$

$$A_{12} = (-1) \cdot 3 = -3$$

$$A_{21} = (-1) \cdot 2 = -2$$

$$A_{22} = (+1) \cdot 1 = 1$$

A matriz dos cofatores é a matriz com primeira linha $$(4, -3)$$ e segunda linha $$(-2, 1)$$.

### 4.2 Matriz adjunta

A **matriz adjunta** (clássica) é a **transposta** da matriz dos cofatores:

$$\mathrm{adj}(A) = \bigl(\mathrm{cof}(A)\bigr)^T$$

Veja o exemplo abaixo.

Continuando o cálculo, transpondo a matriz dos cofatores (linhas viram colunas):

A adjunta tem primeira linha $$(4, -2)$$ e segunda linha $$(-3, 1)$$.

### 4.3 Teorema de Jacobi

O **Teorema de Jacobi** relaciona o determinante da adjunta com o determinante da matriz original. Para uma matriz quadrada $$A$$ de ordem $$n$$:

$$\det\bigl(\mathrm{adj}(A)\bigr) = \bigl(\det(A)\bigr)^{n-1}$$

Veja só:

Para a matriz $$A$$ acima ($$n = 2$$, $$\det(A) = 1 \cdot 4 - 2 \cdot 3 = -2$$):

$$\det\bigl(\mathrm{adj}(A)\bigr) = (-2)^{2-1} = -2$$

Conferindo diretamente: a adjunta tem determinante $$4 \cdot 1 - (-2) \cdot (-3) = 4 - 6 = -2$$.

Os dois caminhos batem.

---

## 5. Matriz Inversa via Determinante

A matriz inversa $$A^{-1}$$ é, quando existe, a matriz que satisfaz $$A \cdot A^{-1} = I$$ (matriz identidade).

### 5.1 Critério $$\det(A) \neq 0$$

A matriz inversa de $$A$$ existe **se, e somente se**, $$\det(A) \neq 0$$.

Veja só:

- Se $$\det(A) = 7$$, a matriz é inversível.
- Se $$\det(A) = -2$$, é inversível.
- Se $$\det(A) = 0$$, **não há inversa** — a matriz é singular.

### 5.2 Fórmula da inversa

Quando $$\det(A) \neq 0$$, a inversa pode ser calculada pela fórmula:

$$A^{-1} = \frac{1}{\det(A)} \cdot \mathrm{adj}(A)$$

Cada elemento da adjunta é dividido por $$\det(A)$$.

Veja o exemplo abaixo.

Continuando o exemplo da matriz $$A$$ com primeira linha $$(1, 2)$$ e segunda linha $$(3, 4)$$:

**Resolução:**

- **Passo 1:** Calcular $$\det(A)$$.

$$\det(A) = 1 \cdot 4 - 2 \cdot 3 = 4 - 6 = -2$$

- **Passo 2:** Construir $$\mathrm{cof}(A)$$ — primeira linha $$(4, -3)$$ e segunda linha $$(-2, 1)$$.

- **Passo 3:** Transpor para obter $$\mathrm{adj}(A)$$ — primeira linha $$(4, -2)$$ e segunda linha $$(-3, 1)$$.

- **Passo 4:** Dividir cada elemento por $$\det(A) = -2$$.

$$A^{-1}$$ tem primeira linha $$\bigl(\tfrac{4}{-2},\ \tfrac{-2}{-2}\bigr) = (-2,\ 1)$$ e segunda linha $$\bigl(\tfrac{-3}{-2},\ \tfrac{1}{-2}\bigr) = (1{,}5;\ -0{,}5)$$.

![Fluxo visual do cálculo da inversa: matriz A com primeira linha (1,2) e segunda (3,4), com det = -2; em seguida a matriz dos cofatores (4,-3 / -2,1), depois a adjunta (transposta dos cofatores: 4,-2 / -3,1) e finalmente a inversa, obtida dividindo a adjunta pelo determinante](../../_tikz/build/2serie/unidade-4-determinantes/fluxo-matriz-inversa.png)

### 5.3 Verificação por produto com a identidade

A inversa pode ser conferida pelo produto $$A \cdot A^{-1}$$, que deve resultar na matriz identidade.

Veja só:

Calculando $$A \cdot A^{-1}$$ para o exemplo (com $$A$$ de linhas $$(1, 2)$$ e $$(3, 4)$$ e $$A^{-1}$$ de linhas $$(-2, 1)$$ e $$(1{,}5; -0{,}5)$$):

- Posição (1,1) do produto: $$1 \cdot (-2) + 2 \cdot 1{,}5 = -2 + 3 = 1$$
- Posição (1,2): $$1 \cdot 1 + 2 \cdot (-0{,}5) = 1 - 1 = 0$$
- Posição (2,1): $$3 \cdot (-2) + 4 \cdot 1{,}5 = -6 + 6 = 0$$
- Posição (2,2): $$3 \cdot 1 + 4 \cdot (-0{,}5) = 3 - 2 = 1$$

O produto é a matriz identidade — primeira linha $$(1, 0)$$, segunda linha $$(0, 1)$$. A inversa está correta.

> 🔢 **Padrão:**  
> Inversa só existe quando $$\det(A) \neq 0$$; calcula-se por $$A^{-1} = \dfrac{1}{\det(A)} \cdot \mathrm{adj}(A)$$ e confere-se por $$A \cdot A^{-1} = I$$.

---

## NA VIDA REAL

Em engenharia estrutural, a **matriz de rigidez** descreve como uma estrutura responde a forças aplicadas. Quando o determinante dessa matriz se anula, a estrutura é instável — um sinal matemático de que algo na geometria ou no apoio precisa ser corrigido antes da construção. Em computação gráfica, a inversa de uma matriz de transformação permite "desfazer" a transformação: a câmera pode voltar à posição original, o objeto pode retornar à pose inicial.

---

## E A BÍBLIA NISSO?

<center>
*"Então, os presidentes e os sátrapas procuravam ocasião para acusar a Daniel a respeito do reino; mas não puderam achá-la, nem culpa alguma; porque ele era fiel, e não se achava nele nenhum erro nem culpa."* — **Daniel 6:4**
</center>

As propriedades dos determinantes revelam quando uma estrutura preserva a integridade, quando muda apenas de sinal e quando colapsa para zero por redundância interna. A integridade de Daniel aparece como coerência que permanece mesmo investigada — sem linhas proporcionais, sem colunas nulas, sem contradição interna que zerasse seu determinante moral.

> 💬 **Para Conversar:** Que redundâncias, incoerências ou concessões pequenas podem fazer uma estrutura aparentemente forte perder integridade?

---

## Simplificando

As propriedades dos determinantes permitem prever efeitos sem refazer cálculos: transposta preserva, troca de linhas/colunas inverte sinal, linha nula ou linhas proporcionais anulam, $$\det(\lambda A) = \lambda^n \det(A)$$ para ordem $$n$$, e $$\det(AB) = \det(A) \det(B)$$. A matriz inversa existe quando $$\det(A) \neq 0$$ e é calculada por $$A^{-1} = \dfrac{1}{\det(A)} \cdot \mathrm{adj}(A)$$.

---

## Fórmulas do capítulo

- **Transposta:** $$\det(A^T) = \det(A)$$.
- **Troca de duas linhas/colunas:** inverte o sinal do determinante.
- **Linha/coluna nula ou linhas/colunas proporcionais:** $$\det(A) = 0$$.
- **Multiplicação da matriz por escalar:** $$\det(\lambda \cdot A) = \lambda^n \cdot \det(A)$$ para matriz de ordem $$n$$.
- **Determinante do produto:** $$\det(A \cdot B) = \det(A) \cdot \det(B)$$.
- **Soma:** $$\det(A + B) \neq \det(A) + \det(B)$$ em geral.
- **Teorema de Jacobi:** $$\det\bigl(\mathrm{adj}(A)\bigr) = \bigl(\det(A)\bigr)^{n-1}$$.
- **Adjunta:** $$\mathrm{adj}(A) = \bigl(\mathrm{cof}(A)\bigr)^T$$.
- **Matriz inversa:** $$A^{-1} = \dfrac{1}{\det(A)} \cdot \mathrm{adj}(A)$$, definida quando $$\det(A) \neq 0$$.
