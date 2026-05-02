# CAPÍTULO 1 — DEFINIÇÃO E GRÁFICO

## INTRODUÇÃO

No século XIV, o filósofo e matemático francês Nicole Oresme propôs algo novo: representar variações graficamente, com diagramas em que a "intensidade" de uma grandeza era marcada como altura. Foi um dos primeiros passos para a ideia moderna de função — em que cada entrada corresponde a uma saída e o conjunto dos pontos forma uma figura no plano.

> 💭 **Pense um pouco:**  
> No preço de uma corrida de táxi, que parte do valor é fixa e que parte muda conforme a distância?

---

## 1. A Regra da Função Afim

Uma função afim é uma função real cuja lei de formação tem a forma $$f(x) = ax + b$$, com $$a$$ e $$b$$ números reais e $$a \neq 0$$.

### 1.1 A forma $$f(x) = ax + b$$

A condição $$a \neq 0$$ é essencial: se fosse $$a = 0$$, a função deixaria de ser afim e viraria uma função constante $$f(x) = b$$ — um caso-limite tratado no Capítulo 4.

Veja só:

São funções afins:

- $$f(x) = 2x + 3$$, com $$a = 2$$ e $$b = 3$$.
- $$f(x) = -x + 5$$, com $$a = -1$$ e $$b = 5$$.
- $$f(x) = \frac{1}{2}x - 4$$, com $$a = \frac{1}{2}$$ e $$b = -4$$.

### 1.2 Quem são $$a$$ e $$b$$?

Os dois coeficientes têm nomes próprios e papéis distintos.

Veja o exemplo abaixo.

Em $$f(x) = ax + b$$:

- $$a$$ é o **coeficiente angular** (também chamado *taxa de variação*) — multiplica a variável $$x$$ e governa a inclinação da reta.
- $$b$$ é o **coeficiente linear** (também chamado *intercepto no eixo $$y$$*) — aparece sozinho no termo independente.

Substituindo $$x = 0$$ na lei geral:

$$f(0) = a \cdot 0 + b = b$$

Ou seja, $$f(0) = b$$ — o coeficiente linear é o valor da função em $$x = 0$$, e corresponde ao ponto $$(0, b)$$ do gráfico.

> 🔢 **Padrão:**  
> Em uma função afim, $$f(0) = b$$ — é o ponto em que a reta cruza o eixo $$y$$.

---

## 2. Calculando Pontos

Cada par $$(x, f(x))$$ é um ponto do gráfico da função afim.

### 2.1 Substituindo valores de $$x$$

Para encontrar pontos do gráfico, basta substituir valores de $$x$$ na lei de formação e calcular $$f(x)$$.

Veja só:

Considere $$f(x) = 2x + 3$$:

$$f(0) = 2 \cdot 0 + 3 = 3$$

$$f(1) = 2 \cdot 1 + 3 = 5$$

$$f(2) = 2 \cdot 2 + 3 = 7$$

$$f(-1) = 2 \cdot (-1) + 3 = 1$$

### 2.2 Montando uma tabela

Os valores calculados podem ser organizados em uma tabela para facilitar a leitura.

Veja o exemplo abaixo.

Para $$f(x) = 2x + 3$$:

| $$x$$ | $$f(x)$$ | par |
|---:|---:|---|
| -1 | 1 | $$(-1, 1)$$ |
| 0 | 3 | $$(0, 3)$$ |
| 1 | 5 | $$(1, 5)$$ |
| 2 | 7 | $$(2, 7)$$ |

Cada linha da tabela representa um ponto do gráfico.

---

## 3. A Reta no Plano Cartesiano

Quando os pares-solução de uma função afim são marcados no plano, eles ficam todos alinhados — formando uma reta.

### 3.1 Marcando os pontos

Cada par da tabela vira um ponto no plano cartesiano: a primeira coordenada indica o deslocamento horizontal e a segunda, o vertical.

Veja só:

Para marcar o par $$(2, 7)$$: andar 2 unidades à direita a partir da origem e depois 7 unidades para cima. O mesmo procedimento vale para os demais pares.

### 3.2 Por que o gráfico é uma reta

Em uma função afim, sempre que $$x$$ varia em uma unidade, $$f(x)$$ varia em $$a$$ unidades — uma variação **constante**. É essa regularidade que mantém todos os pontos sobre uma mesma linha reta.

Veja o exemplo abaixo.

Em $$f(x) = 2x + 3$$:

- de $$(0, 3)$$ para $$(1, 5)$$: $$x$$ aumenta 1 e $$f(x)$$ aumenta 2.
- de $$(1, 5)$$ para $$(2, 7)$$: $$x$$ aumenta 1 e $$f(x)$$ aumenta 2.

A variação é sempre 2 — exatamente o valor de $$a$$. Como a variação é constante, os pontos formam uma reta.

---

## 4. Dois Pontos Bastam

Pela geometria elementar, dois pontos distintos determinam uma única reta — então qualquer função afim pode ter seu gráfico construído a partir de apenas dois pares-solução.

### 4.1 Escolhendo pontos estratégicos

Os dois pontos mais convenientes costumam ser aqueles em que os cálculos ficam simples.

Veja só:

Para $$f(x) = 2x + 3$$, dois pontos estratégicos:

- $$(0, 3)$$ — escolher $$x = 0$$ dá direto $$f(0) = b = 3$$.
- $$(2, 7)$$ — escolher $$x = 2$$ produz um valor inteiro fácil.

### 4.2 Traçando a reta

Marcam-se os dois pontos no plano e desenha-se a reta que passa por eles — esse é o gráfico da função afim.

Veja o exemplo abaixo.

Considere uma aplicação prática: um plano de internet tem mensalidade fixa de R$ 79,90 mais R$ 5,00 por GB extra consumido. A função que descreve o valor a pagar em função dos GB extras é:

$$f(x) = 5x + 79{,}90$$

Calculando dois pontos:

$$f(3) = 5 \cdot 3 + 79{,}90 = 15 + 79{,}90 = 94{,}90$$

$$f(5) = 5 \cdot 5 + 79{,}90 = 25 + 79{,}90 = 104{,}90$$

Pontos: $$(3,\ 94{,}90)$$ e $$(5,\ 104{,}90)$$. A reta que passa por esses dois pontos representa o gráfico da função, e qualquer outro consumo (qualquer outro valor de $$x$$) cai exatamente sobre essa mesma reta.

> 🔢 **Padrão:**  
> Dois pontos distintos determinam uma única reta — basta calcular $$f$$ em dois valores diferentes de $$x$$.

---

## NA VIDA REAL

Praticamente todo plano com mensalidade fixa e cobrança variável (internet, celular, energia elétrica) é descrito por uma função afim — e o gráfico permite estimar o valor da fatura para qualquer consumo, sem precisar calcular caso a caso.

---

## E A BÍBLIA NISSO?

<center>
*"A integridade dos retos os guia; mas, aos pérfidos, a sua mesma falsidade os destrói."* — **Provérbios 11:3**
</center>

Uma função afim segue uma lei única — cada ponto do gráfico aparece exatamente onde a regra previu. Coerência matemática e coerência de vida têm a mesma forma: a regra que se mantém entre dois pontos é também a regra que mantém o caminho.

> 💬 **Para Conversar:** Em quais situações é difícil manter a mesma direção quando a pressão muda?

---

## Simplificando

Função afim é a lei de formação $$f(x) = ax + b$$, com $$a \neq 0$$, em que $$a$$ é o coeficiente angular (taxa de variação) e $$b$$ é o coeficiente linear (intercepto no eixo $$y$$); o gráfico é uma reta, e dois pontos calculados bastam para traçá-la.

---

## Fórmulas do capítulo

- **Função afim:** $$f(x) = ax + b$$, com $$a \neq 0$$.
- **Intercepto no eixo $$y$$:** $$f(0) = b$$.
- **Construção da reta:** escolher dois valores de $$x$$, calcular $$f(x)$$, marcar os pontos $$(x, f(x))$$ no plano e traçar a reta que passa por eles.
