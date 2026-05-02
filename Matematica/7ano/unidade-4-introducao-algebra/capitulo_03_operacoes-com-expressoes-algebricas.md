# CAPÍTULO 3 — OPERAÇÕES COM EXPRESSÕES ALGÉBRICAS

## INTRODUÇÃO

No século XIX, o matemático inglês George Boole percebeu que a álgebra podia ir além dos números — bastava obedecer a regras coerentes. As operações com expressões algébricas seguem o mesmo princípio: só pode unir o que de fato pertence ao mesmo tipo, e cada passo deve preservar a estrutura da expressão.

> 💭 **Pense um pouco:**  
> Por que $$3x + 5x$$ pode virar $$8x$$, mas $$3x + 5x^2$$ não vira $$8x^3$$?

---

## 1. Somando e Subtraindo Semelhantes

A primeira operação algébrica é juntar termos semelhantes — aqueles que têm a mesma parte literal.

### 1.1 Somar coeficientes

Para somar dois termos semelhantes, basta somar os coeficientes e manter a parte literal.

Veja só:

$$3x + 5x = 8x$$

Aqui, os dois termos têm parte literal $$x$$. Soma-se os coeficientes ($$3 + 5 = 8$$) e mantém-se a parte literal ($$x$$).

Outro exemplo:

$$4x^2 + 7x^2 = 11x^2$$

Os dois termos têm parte literal $$x^2$$ — soma 4 + 7 e mantém o $$x^2$$.

### 1.2 Subtrair sem mudar a parte literal

A subtração segue a mesma lógica.

Veja o exemplo abaixo.

$$7x^2 - 3x^2 + x^2$$

Os três termos têm parte literal $$x^2$$. Os coeficientes são 7, -3 e 1 (lembrando: $$x^2$$ é o mesmo que $$1 \cdot x^2$$). Logo:

$$7 - 3 + 1 = 5$$

Resultado:

$$7x^2 - 3x^2 + x^2 = 5x^2$$

> 🔢 **Padrão:**  
> Soma e subtração de semelhantes: opera-se nos coeficientes, mantém-se a parte literal.

---

## 2. Reduzindo Expressões

Reduzir uma expressão algébrica é juntar todos os termos semelhantes que aparecem nela — uma forma de simplificação.

### 2.1 Agrupar semelhantes

Para reduzir, primeiro identifica-se quais termos são semelhantes; depois soma-se cada grupo.

Veja só:

$$5x + 3x^2 - 2x + 4x^2$$

Termos semelhantes: $$5x$$ e $$-2x$$ (ambos com parte literal $$x$$); $$3x^2$$ e $$4x^2$$ (ambos com parte literal $$x^2$$).

Reduzindo cada grupo:

$$5x - 2x = 3x$$

$$3x^2 + 4x^2 = 7x^2$$

Resultado:

$$5x + 3x^2 - 2x + 4x^2 = 7x^2 + 3x$$

### 2.2 O que não pode ser reduzido

Termos que não são semelhantes ficam como estão.

Veja o exemplo abaixo.

$$3x + 2x^2$$

Os dois termos têm partes literais diferentes ($$x$$ e $$x^2$$). Logo, não são semelhantes — e essa expressão não pode ser reduzida.

A expressão final permanece:

$$3x + 2x^2$$

> ⚠️ **Atenção:**  
> Forçar a redução de termos não semelhantes é o erro mais comum em álgebra. $$3x + 2x^2$$ NÃO vira $$5x^3$$.

---

## 3. Multiplicando Monômios

A multiplicação de monômios segue duas regras simples — uma para os coeficientes e outra para as potências.

### 3.1 Coeficientes e potências

Multiplica-se os coeficientes entre si e somam-se os expoentes das mesmas bases.

Veja só:

$$2x \cdot 3x^4$$

Coeficientes: $$2 \cdot 3 = 6$$.

Potências de $$x$$: $$x^1 \cdot x^4 = x^{1+4} = x^5$$.

Resultado:

$$2x \cdot 3x^4 = 6x^5$$

### 3.2 Produto de partes literais

Quando há mais de uma variável, cada base soma seus próprios expoentes.

Veja o exemplo abaixo.

$$5x^2y \cdot 2xy^3$$

Coeficientes: $$5 \cdot 2 = 10$$.

Potências de $$x$$: $$x^2 \cdot x = x^{2+1} = x^3$$.

Potências de $$y$$: $$y \cdot y^3 = y^{1+3} = y^4$$.

Resultado:

$$5x^2y \cdot 2xy^3 = 10x^3y^4$$

> 🔢 **Padrão:**  
> Em multiplicação de monômios: coeficientes multiplicam, expoentes da mesma base somam.

---

## 4. Distributiva e Valor Numérico

Duas ferramentas fecham o capítulo — a distributiva, para abrir parênteses; e o valor numérico, para calcular o resultado de uma expressão para um valor específico.

### 4.1 Multiplicar por uma soma

A distributiva diz que multiplicar um fator por uma soma é o mesmo que multiplicar o fator por cada termo e somar os resultados.

Veja só:

$$a \cdot (b + c) = a \cdot b + a \cdot c$$

Aplicando em uma expressão concreta:

$$2 \cdot (x + 3) = 2 \cdot x + 2 \cdot 3 = 2x + 6$$

Outro exemplo:

$$3x \cdot (x + 4) = 3x \cdot x + 3x \cdot 4 = 3x^2 + 12x$$

### 4.2 Substituir e calcular

O valor numérico de uma expressão é o resultado obtido ao substituir cada variável por um número e calcular.

Veja o exemplo abaixo.

Calcular $$3x^2 - 5$$ para $$x = 2$$:

$$3 \cdot 2^2 - 5$$

$$= 3 \cdot 4 - 5$$

$$= 12 - 5$$

$$= 7$$

Quando o valor é negativo, vale usar parênteses para evitar erro de sinal.

Calcular $$x^2 - 4x$$ para $$x = -3$$:

$$(-3)^2 - 4 \cdot (-3)$$

$$= 9 - (-12)$$

$$= 9 + 12$$

$$= 21$$

---

## NA VIDA REAL

Em uma planilha que calcula o preço total a pagar a partir de quantidade e preço unitário, mudar o valor da quantidade gera um novo total automaticamente — é exatamente a ideia de calcular o valor numérico para diferentes valores da mesma variável.

---

## E A BÍBLIA NISSO?

<center>
*"A integridade dos retos os guia; mas, aos pérfidos, a sua mesma falsidade os destrói."* — **Provérbios 11:3**
</center>

Operar bem em álgebra é reconhecer o que pertence ao mesmo grupo e respeitar a estrutura de cada termo — atalhos que ignoram a estrutura levam a erros que se acumulam.

> 💬 **Para Conversar:** Quais coisas parecidas na sua rotina podem ser agrupadas para ganhar tempo, sem perder qualidade?

---

## Simplificando

Em álgebra, somam-se apenas termos semelhantes (mesma parte literal); em multiplicação de monômios, coeficientes multiplicam e expoentes da mesma base somam; a distributiva abre parênteses; e o valor numérico vem da substituição cuidadosa da variável por um número.
