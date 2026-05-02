# CAPÍTULO 4 — CASOS PARTICULARES E APLICAÇÕES

## INTRODUÇÃO

No século III, o matemático chinês Liu Hui escreveu comentários ao *Jiuzhang Suanshu* (*Nove Capítulos sobre a Arte Matemática*) — uma das mais antigas obras de matemática aplicada, com problemas sobre medidas, partilhas e impostos. A função afim continua essa tradição: traduzir situações concretas em fórmulas que descrevem variações constantes.

> 💭 **Pense um pouco:**  
> O que muda no comportamento de uma função quando ela tem ou não tem termo fixo?

---

## 1. Casos Particulares

Algumas funções são casos especiais da forma $$f(x) = ax + b$$ — vale conhecê-los pelo nome.

### 1.1 Função linear

A função linear é o caso particular em que $$b = 0$$. A lei fica:

$$f(x) = ax$$

Veja só:

São funções lineares:

- $$f(x) = 3x$$
- $$f(x) = -2x$$
- $$f(x) = \dfrac{1}{2}x$$

O gráfico de uma função linear passa pela origem $$(0, 0)$$, porque $$f(0) = a \cdot 0 = 0$$. A função linear modela situações de **proporcionalidade direta**: o dobro da entrada produz o dobro da saída.

### 1.2 Função identidade

A função identidade é o caso particular da linear em que $$a = 1$$ e $$b = 0$$. A lei fica:

$$f(x) = x$$

Veja o exemplo abaixo.

A função identidade simplesmente devolve a entrada como saída: $$f(5) = 5$$, $$f(-3) = -3$$, $$f(0) = 0$$.

O gráfico é a reta que faz $$45°$$ com o eixo $$x$$ — bissetriz dos quadrantes ímpares.

### 1.3 Função constante

A função constante é o caso-limite em que $$a = 0$$. A lei fica:

$$f(x) = b$$

Veja só:

São funções constantes:

- $$f(x) = 5$$
- $$f(x) = -2$$
- $$f(x) = 0$$

O gráfico é uma reta horizontal — todos os pontos têm $$y = b$$, qualquer que seja $$x$$.

> ⚠️ **Atenção:**  
> A função constante **não é afim no sentido estrito**, porque a definição exige $$a \neq 0$$. Por isso, ela é tratada como caso-limite — perde a inclinação, mas mantém a forma de reta.

---

## 2. Comparando Gráficos

Os gráficos dos três casos particulares revelam visualmente o papel de $$a$$ e $$b$$.

### 2.1 Reta pela origem

Quando $$b = 0$$, a reta passa pela origem.

Veja só:

A função $$f(x) = 2x$$ passa por $$(0, 0)$$, $$(1, 2)$$, $$(2, 4)$$ — todos os pontos satisfazem $$f(x) = 2x$$.

Essa é a marca visual de uma função linear: o gráfico cruza os eixos $$x$$ e $$y$$ exatamente no ponto $$(0, 0)$$.

### 2.2 Reta horizontal

Quando $$a = 0$$, a reta é horizontal.

Veja o exemplo abaixo.

A função $$f(x) = 4$$ tem gráfico horizontal em altura 4 — passa por $$(-2, 4)$$, $$(0, 4)$$, $$(3, 4)$$ e qualquer outro ponto com $$y = 4$$.

A taxa de variação de uma função constante é zero — a saída não muda quando a entrada varia.

---

## 3. Descobrindo a Lei

Em problemas reais, muitas vezes a função não vem pronta. Conhecendo dois pontos do gráfico, é possível reconstruir a lei de formação.

### 3.1 Calculando a taxa de variação

A taxa de variação $$a$$ é obtida a partir de dois pontos do gráfico.

Veja só:

Considere os pontos $$(2, 14)$$ e $$(6, 30)$$ do gráfico de uma função afim. A taxa de variação é:

$$a = \frac{30 - 14}{6 - 2} = \frac{16}{4} = 4$$

### 3.2 Encontrando $$b$$ por substituição

Com $$a$$ determinado, basta substituir um dos pontos na lei geral para encontrar $$b$$.

Veja o exemplo abaixo.

Continuando o cálculo anterior, com $$a = 4$$ e o ponto $$(2, 14)$$:

**Resolução:**

- **Passo 1:** Substituir na lei geral $$y = ax + b$$.

$$14 = 4 \cdot 2 + b$$

- **Passo 2:** Calcular o produto.

$$14 = 8 + b$$

- **Passo 3:** Subtrair 8 dos dois lados.

$$b = 6$$

**Resposta:** a lei de formação é $$f(x) = 4x + 6$$.

Conferindo com o segundo ponto $$(6, 30)$$:

$$f(6) = 4 \cdot 6 + 6 = 24 + 6 = 30$$

A lei encontrada satisfaz os dois pontos.

> 🔢 **Padrão:**  
> Para descobrir a lei: calcular $$a$$ pela taxa de variação, depois encontrar $$b$$ substituindo um dos pontos.

---

## 4. Modelagem

Modelar é traduzir uma situação real para a linguagem de função afim, identificando o que é parte fixa ($$b$$) e o que varia proporcionalmente ($$ax$$).

### 4.1 Tarifas e planos

Tarifas costumam ter a forma $$f(x) = ax + b$$ — taxa fixa $$b$$ mais valor $$a$$ por unidade.

Veja só:

Uma corrida por aplicativo cobra bandeirada de R$ 5,00 (taxa fixa) mais R$ 2,50 por quilômetro rodado. A função do preço em função da distância é:

$$f(x) = 2{,}50 \cdot x + 5$$

Para uma corrida de $$x = 8$$ km:

$$f(8) = 2{,}50 \cdot 8 + 5 = 20 + 5 = 25$$

**Resposta:** $$R\$ 25{,}00$$ pela corrida.

### 4.2 Salário, consumo e conversões

A modelagem também aparece em conversões físicas — como Celsius para Fahrenheit.

Veja o exemplo abaixo.

A relação entre as escalas Celsius e Fahrenheit é:

$$F(C) = 1{,}8 \cdot C + 32$$

Aqui, $$C$$ é a temperatura em Celsius e $$F(C)$$ é a equivalente em Fahrenheit.

Calculando dois valores:

$$F(0) = 1{,}8 \cdot 0 + 32 = 32$$

Ou seja, 0°C equivale a 32°F (ponto de congelamento da água).

$$F(37) = 1{,}8 \cdot 37 + 32 = 66{,}6 + 32 = 98{,}6$$

37°C (temperatura média do corpo humano) equivale a 98,6°F.

Os coeficientes têm interpretação física: $$a = 1{,}8$$ é o quanto a temperatura Fahrenheit aumenta para cada grau Celsius; $$b = 32$$ é a diferença entre os pontos zero das duas escalas.

---

## NA VIDA REAL

Função afim aparece toda vez que há parte fixa mais parte proporcional: assinatura mensal mais consumo extra, salário base mais comissão, distância percorrida mais tempo de espera, conversão entre unidades. Identificar $$a$$ e $$b$$ é dominar o problema.

---

## E A BÍBLIA NISSO?

<center>
*"Não vos enganeis: de Deus não se zomba; pois aquilo que o homem semear, isso também ceifará."* — **Gálatas 6:7**
</center>

Em uma função linear, cada entrada produz uma saída proporcional — não há termo escondido alterando a colheita. Escolhas constantes geram consequências coerentes; o que se semeia aparece, na mesma proporção, no resultado.

> 💬 **Para Conversar:** Você espera colher resultados proporcionais ao que tem plantado?

---

## Simplificando

Função linear ($$b = 0$$), identidade ($$a = 1$$ e $$b = 0$$) e constante ($$a = 0$$, caso-limite) são casos especiais ligados à função afim. Para descobrir a lei a partir de dois pontos, calcula-se $$a$$ pela taxa de variação e depois $$b$$ por substituição. A modelagem traduz situações reais para a forma $$f(x) = ax + b$$.

---

## Fórmulas do capítulo

- **Função linear:** $$f(x) = ax$$ — caso particular com $$b = 0$$; passa pela origem.
- **Função identidade:** $$f(x) = x$$ — caso particular com $$a = 1$$ e $$b = 0$$.
- **Função constante:** $$f(x) = b$$ — caso-limite com $$a = 0$$; reta horizontal.
- **Determinação da lei por dois pontos:** calcular $$a = \dfrac{y_2 - y_1}{x_2 - x_1}$$ e depois encontrar $$b$$ substituindo um dos pontos em $$y = ax + b$$.
