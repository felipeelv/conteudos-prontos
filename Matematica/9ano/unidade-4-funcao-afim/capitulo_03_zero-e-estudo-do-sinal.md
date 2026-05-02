# CAPÍTULO 3 — ZERO E ESTUDO DO SINAL

## INTRODUÇÃO

No século VII, o matemático indiano Brahmagupta foi um dos primeiros a formalizar regras para o zero e os números negativos — ferramentas indispensáveis para tratar uma reta que cruza o eixo $$x$$ e passa de positiva a negativa. Saber onde uma função afim "zera" é encontrar o ponto exato em que a reta atravessa o eixo horizontal.

> 💭 **Pense um pouco:**  
> Em que momento uma vela de 20 cm que queima 2 cm por hora chega à altura zero?

---

## 1. O Zero da Função

O zero (ou raiz) de uma função afim é o valor de $$x$$ que faz a saída ser zero.

### 1.1 O que significa $$f(x) = 0$$

Pela definição:

$$f(x) = 0 \iff ax + b = 0$$

Resolver essa equação é encontrar o $$x$$ que zera a função — ou seja, o ponto $$(x_0, 0)$$ em que a reta cruza o eixo $$x$$.

Veja só:

Em $$f(x) = 2x - 6$$, o zero é o valor de $$x$$ tal que $$2x - 6 = 0$$.

### 1.2 O cruzamento com o eixo $$x$$

Geometricamente, o zero corresponde ao ponto em que a reta encontra o eixo horizontal.

Veja o exemplo abaixo.

Considere $$f(t) = -2t + 20$$, modelando a altura (em centímetros) de uma vela que queima $$2$$ cm por hora, partindo de $$20$$ cm.

Quando $$f(t) = 0$$, a vela apagou. Resolver essa equação algebricamente é o tema da próxima seção.

---

## 2. Calculando a Raiz

A equação $$ax + b = 0$$ pode ser resolvida tanto por casos numéricos quanto pela fórmula geral.

### 2.1 Resolvendo $$ax + b = 0$$

Resolução do exemplo da vela, com $$f(t) = -2t + 20$$:

**Resolução:**

- **Passo 1:** Igualar a função a zero.

$$-2t + 20 = 0$$

- **Passo 2:** Subtrair 20 dos dois lados.

$$-2t = -20$$

- **Passo 3:** Dividir os dois lados por $$-2$$.

$$t = \frac{-20}{-2} = 10$$

**Resposta:** $$t = 10$$ horas — a vela apaga após 10 horas.

### 2.2 A fórmula $$x_0 = -\dfrac{b}{a}$$

A mesma técnica pode ser aplicada à forma geral $$ax + b = 0$$, com $$a \neq 0$$, para deduzir uma fórmula universal do zero.

**Dedução:**

- **Passo 1:** Igualar a função a zero.

$$ax + b = 0$$

- **Passo 2:** Subtrair $$b$$ dos dois lados.

$$ax = -b$$

- **Passo 3:** Dividir os dois lados por $$a$$ (com $$a \neq 0$$).

$$x_0 = \frac{-b}{a}$$

**Conferindo no exemplo da vela:** $$a = -2$$, $$b = 20$$. Aplicando a fórmula:

$$x_0 = \frac{-20}{-2} = 10$$

A fórmula confirma a resposta obtida algebricamente.

> 🔢 **Padrão:**  
> O zero de $$f(x) = ax + b$$ é $$x_0 = -\dfrac{b}{a}$$, com $$a \neq 0$$.

---

## 3. Estudo do Sinal

Uma vez localizado o zero, a reta divide o eixo $$x$$ em duas regiões — onde $$f(x)$$ é positiva e onde é negativa.

### 3.1 Acima e abaixo do eixo $$x$$

Onde a reta está acima do eixo $$x$$, $$f(x) > 0$$; onde está abaixo, $$f(x) < 0$$; no cruzamento exato, $$f(x) = 0$$.

Veja só:

Considere $$f(x) = 2x - 6$$. O zero é:

$$x_0 = -\frac{-6}{2} = 3$$

Testando dois valores:

- Para $$x = 0$$: $$f(0) = 2 \cdot 0 - 6 = -6 < 0$$.
- Para $$x = 5$$: $$f(5) = 2 \cdot 5 - 6 = 4 > 0$$.

A reta passa de negativa (à esquerda de $$x = 3$$) para positiva (à direita de $$x = 3$$), cruzando zero em $$x = 3$$.

### 3.2 Intervalos positivos e negativos

O estudo do sinal organiza essas conclusões em intervalos.

Veja o exemplo abaixo.

Para $$f(x) = 2x - 6$$, com $$a = 2 > 0$$ (função crescente):

- $$f(x) < 0$$ quando $$x < 3$$.
- $$f(x) = 0$$ quando $$x = 3$$.
- $$f(x) > 0$$ quando $$x > 3$$.

![Gráfico de f(x) = 2x - 6 com o zero em (3, 0) e regiões do plano coloridas: à esquerda em vermelho onde f(x) é negativo, à direita em azul onde f(x) é positivo](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Matematica/_tikz/build/9ano/unidade-4-funcao-afim/estudo-do-sinal-2x-menos-6.png)

Já para $$f(t) = -2t + 20$$, com $$a = -2 < 0$$ (função decrescente), o zero é em $$t = 10$$:

- $$f(t) > 0$$ quando $$t < 10$$.
- $$f(t) = 0$$ quando $$t = 10$$.
- $$f(t) < 0$$ quando $$t > 10$$ (no contexto da vela, esse intervalo não tem sentido físico — a altura não pode ser negativa).

> 🔢 **Padrão:**  
> O sinal de $$a$$ define o sentido da troca: $$a > 0$$ → negativa antes do zero, positiva depois; $$a < 0$$ → positiva antes do zero, negativa depois.

---

## 4. Inequações do 1º Grau

Encontrar onde $$f(x) > 0$$ ou $$f(x) < 0$$ é resolver uma inequação do 1º grau.

### 4.1 Quando $$ax + b > 0$$

A técnica é a mesma das equações, com uma única adição: dividir (ou multiplicar) os dois lados por número negativo **inverte** o sinal da desigualdade.

Veja só:

Resolver $$2x - 6 > 0$$:

**Resolução:**

- **Passo 1:** Somar 6 aos dois lados.

$$2x > 6$$

- **Passo 2:** Dividir os dois lados por 2 (positivo — sinal **não** se inverte).

$$x > 3$$

**Resposta:** $$x > 3$$.

### 4.2 O cuidado com a divisão por número negativo

Quando o coeficiente de $$x$$ é negativo, o passo final inverte a desigualdade.

Veja o exemplo abaixo.

Resolver $$-2t + 20 > 0$$:

**Resolução:**

- **Passo 1:** Subtrair 20 dos dois lados.

$$-2t > -20$$

- **Passo 2:** Dividir os dois lados por $$-2$$. Como $$-2$$ é negativo, **inverte-se** o sinal da desigualdade.

$$t < 10$$

**Resposta:** $$t < 10$$.

A interpretação no contexto da vela: a altura é positiva (a vela está acesa) enquanto $$t < 10$$.

> ⚠️ **Atenção:**  
> Dividir ou multiplicar inequação por número negativo **sempre inverte** o sinal da desigualdade — esse é um dos erros mais comuns em álgebra.

---

## NA VIDA REAL

Em situações de saldo, consumo ou tempo restante, o zero da função marca um momento crítico — quando a vela apaga, quando a conta zera, quando o tanque acaba. Saber calcular essa raiz permite prever o instante exato sem testar valor a valor.

---

## E A BÍBLIA NISSO?

<center>
*"Quem é fiel no pouco também é fiel no muito; e quem é injusto no pouco também é injusto no muito."* — **Lucas 16:10**
</center>

A função afim segue a mesma lei antes e depois do zero — só muda o sinal da saída, não a regra. Coerência verdadeira é assim: a mesma direção quando o valor é alto e quando é baixo, na abundância e na escassez.

> 💬 **Para Conversar:** Você conserva os mesmos princípios quando está perto do limite e quando está longe dele?

---

## Simplificando

O zero (ou raiz) de uma função afim é $$x_0 = -\dfrac{b}{a}$$ — o ponto em que a reta cruza o eixo $$x$$. A reta divide o plano em duas regiões: $$f(x) > 0$$ acima do eixo e $$f(x) < 0$$ abaixo. Resolver $$ax + b > 0$$ ou $$ax + b < 0$$ é uma inequação do 1º grau — atenção: dividir por número negativo inverte a desigualdade.

---

## Fórmulas do capítulo

- **Zero da função afim:** $$x_0 = -\dfrac{b}{a}$$, com $$a \neq 0$$.
- **Estudo do sinal:** comparar a posição da reta em relação ao eixo $$x$$ — acima, $$f(x) > 0$$; abaixo, $$f(x) < 0$$; no cruzamento, $$f(x) = 0$$.
- **Inequação do 1º grau:** mesmas técnicas da equação; **dividir por número negativo inverte a desigualdade**.
