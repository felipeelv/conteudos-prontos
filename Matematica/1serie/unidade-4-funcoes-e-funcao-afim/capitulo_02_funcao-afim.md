# CAPÍTULO 2 — FUNÇÃO AFIM

## INTRODUÇÃO

Em 1805, o matemático francês Adrien-Marie Legendre publicou o método dos mínimos quadrados — uma técnica que ainda hoje permite encontrar a reta que melhor representa um conjunto de dados experimentais. A função afim aparece exatamente nessa fronteira: descrever uma relação com valor inicial e taxa constante, em que cada passo em $$x$$ produz uma variação previsível em $$y$$.

> 💭 **Pense um pouco:**  
> Em uma cobrança, o que muda e o que permanece fixo?

---

## 1. A Forma da Função Afim

Uma função afim segue uma estrutura algébrica precisa.

### 1.1 $$f(x) = ax + b$$

Função afim é toda função real cuja lei de formação tem a forma:

$$f(x) = ax + b$$

com $$a$$ e $$b$$ números reais e $$a \neq 0$$.

Veja só:

São funções afins:

- $$f(x) = 3x - 2$$, com $$a = 3$$ e $$b = -2$$.
- $$g(x) = -\dfrac{1}{2}x + 5$$, com $$a = -\dfrac{1}{2}$$ e $$b = 5$$.
- $$h(x) = 0{,}80x + 40$$, com $$a = 0{,}80$$ e $$b = 40$$.

### 1.2 Afim e linear: qual a diferença?

A função **linear** é o caso particular da função afim em que $$b = 0$$:

$$f(x) = ax$$

Veja o exemplo abaixo.

A função $$f(x) = 5x$$ é linear ($$b = 0$$) — passa pela origem.

A função $$f(x) = 5x + 3$$ é afim, mas não linear ($$b = 3 \neq 0$$) — não passa pela origem.

Toda função linear é afim, mas a recíproca não vale. Linhares pela origem; afins gerais cruzam o eixo $$y$$ em $$(0, b)$$.

> 🔢 **Padrão:**  
> Linear é o caso particular da afim com $$b = 0$$ (passa pela origem).

---

## 2. Coeficientes

Os dois coeficientes — $$a$$ e $$b$$ — controlam toda a forma e posição da reta.

### 2.1 Coeficiente angular

O coeficiente $$a$$ é a **taxa de variação** da função: quanto $$f(x)$$ varia para cada unidade que $$x$$ aumenta.

A partir de dois pontos $$(x_1, y_1)$$ e $$(x_2, y_2)$$ do gráfico, com $$x_1 \neq x_2$$:

$$a = \frac{\Delta y}{\Delta x} = \frac{f(x_2) - f(x_1)}{x_2 - x_1}$$

Veja só:

Sejam dois pontos do gráfico de uma função afim: $$(2, 7)$$ e $$(5, 16)$$. A taxa de variação é:

$$a = \frac{16 - 7}{5 - 2} = \frac{9}{3} = 3$$

Para cada unidade que $$x$$ aumenta, $$f(x)$$ aumenta 3 — esse é o significado quantitativo do coeficiente angular.

### 2.2 Coeficiente linear

O coeficiente $$b$$ é o **valor inicial** da função e o **intercepto** no eixo $$y$$.

Substituindo $$x = 0$$:

$$f(0) = a \cdot 0 + b = b$$

Logo, todo gráfico de função afim passa por $$(0, b)$$.

Veja o exemplo abaixo.

Em $$f(x) = 0{,}80x + 40$$:

- $$a = 0{,}80$$ — taxa de variação.
- $$b = 40$$ — valor de $$f(0)$$. A reta cruza o eixo $$y$$ no ponto $$(0, 40)$$.

Em contextos reais, $$b$$ costuma representar uma parte fixa (taxa de assinatura, salário base, valor de aluguel) e $$a$$ representa uma parte variável proporcional (consumo, comissão, distância).

---

## 3. Gráfico

O gráfico de uma função afim é uma reta — consequência direta da taxa de variação constante.

### 3.1 Tabela e pontos

Para construir o gráfico, basta calcular alguns pares-solução e organizá-los em tabela.

Veja só:

Para $$f(x) = 2x + 3$$:

| $$x$$ | $$f(x)$$ | par |
|---:|---:|---|
| -1 | 1 | $$(-1, 1)$$ |
| 0 | 3 | $$(0, 3)$$ |
| 2 | 7 | $$(2, 7)$$ |

Cada linha corresponde a um ponto do gráfico.

### 3.2 A reta no plano cartesiano

Como dois pontos distintos determinam uma única reta, basta calcular dois pares-solução para traçar o gráfico de uma função afim. Quanto mais pontos forem calculados, mais clara fica a regularidade — todos sempre alinhados.

Veja o exemplo abaixo.

Em $$f(x) = 2x + 3$$:

- de $$(0, 3)$$ para $$(2, 7)$$: $$\Delta x = 2$$ e $$\Delta y = 4$$ → taxa $$\dfrac{4}{2} = 2 = a$$.
- de $$(2, 7)$$ para $$(-1, 1)$$: $$\Delta x = -3$$ e $$\Delta y = -6$$ → taxa $$\dfrac{-6}{-3} = 2 = a$$.

A taxa é a mesma entre quaisquer dois pares — confirmando o alinhamento dos pontos sobre uma reta.

> 🔢 **Padrão:**  
> Em função afim, a taxa de variação calculada entre quaisquer dois pares do gráfico é sempre igual a $$a$$.

---

## 4. Zero e Sinal

Localizar onde a função vale zero é o ponto-chave para descobrir os intervalos em que ela é positiva ou negativa.

### 4.1 Zero da função

O **zero** (ou raiz) de uma função afim é o valor de $$x$$ tal que $$f(x) = 0$$. Resolvendo $$ax + b = 0$$:

**Dedução:**

- **Passo 1:** Igualar a função a zero.

$$ax + b = 0$$

- **Passo 2:** Subtrair $$b$$ dos dois lados.

$$ax = -b$$

- **Passo 3:** Dividir os dois lados por $$a$$ (com $$a \neq 0$$).

$$x_0 = -\frac{b}{a}$$

Veja só:

Para $$f(x) = 2x - 6$$, o zero é:

$$x_0 = -\frac{-6}{2} = 3$$

Geometricamente, $$(3, 0)$$ é o ponto em que a reta cruza o eixo $$x$$.

### 4.2 Estudo do sinal

Conhecido o zero $$x_0$$ e o sinal de $$a$$, é possível determinar onde a função é positiva e onde é negativa.

Veja o exemplo abaixo.

Para $$f(x) = 2x - 6$$, com $$a = 2 > 0$$ (função crescente) e $$x_0 = 3$$:

- $$f(x) < 0$$ quando $$x < 3$$.
- $$f(x) = 0$$ quando $$x = 3$$.
- $$f(x) > 0$$ quando $$x > 3$$.

A regra geral é:

- Se $$a > 0$$: $$f$$ é negativa antes do zero e positiva depois.
- Se $$a < 0$$: $$f$$ é positiva antes do zero e negativa depois.

> 🔢 **Padrão:**  
> Zero de uma função afim: $$x_0 = -\dfrac{b}{a}$$. Sinal: troca de sinal em $$x_0$$, com sentido determinado pelo sinal de $$a$$.

---

## 5. Modelagem

A função afim aparece toda vez que uma situação pode ser descrita por "valor inicial + taxa constante × variação".

### 5.1 Tarifas e comissões

Modelar uma situação real com função afim é identificar a parte fixa ($$b$$) e a parte proporcional ($$ax$$).

Veja só:

Uma empresa de assistência técnica cobra uma taxa fixa de R$ 80,00 mais R$ 12,00 por hora de serviço. A função do custo total em função do tempo $$t$$ (em horas) é:

$$C(t) = 12t + 80$$

Calculando o custo para alguns tempos:

$$C(5) = 12 \cdot 5 + 80 = 60 + 80 = 140$$

$$C(10) = 12 \cdot 10 + 80 = 120 + 80 = 200$$

Para 5 horas de serviço, o custo é $$R\$ 140{,}00$$. Para 10 horas, $$R\$ 200{,}00$$.

A interpretação dos coeficientes traz unidade: $$a = 12$$ R\$/h é o custo por hora; $$b = 80$$ R\$ é a taxa fixa. Mesmo que $$t = 0$$, há custo de chamada — a reta não passa pela origem.

### 5.2 Comparação de planos

Quando duas funções afins descrevem alternativas concorrentes, encontrar o ponto em que produzem o mesmo valor é uma comparação clássica.

Veja o exemplo abaixo.

Considere dois planos de telefonia:

- Plano A: $$C_1(m) = 0{,}80m + 40$$.
- Plano B: $$C_2(m) = 1{,}20m + 20$$.

Aqui, $$m$$ é o número de minutos consumidos e $$C$$ é o custo mensal em reais.

Para descobrir em quantos minutos os dois planos custam o mesmo, igualam-se as funções:

**Resolução:**

- **Passo 1:** Igualar as funções.

$$0{,}80m + 40 = 1{,}20m + 20$$

- **Passo 2:** Subtrair $$0{,}80m$$ dos dois lados.

$$40 = 0{,}40m + 20$$

- **Passo 3:** Subtrair 20 dos dois lados.

$$20 = 0{,}40m$$

- **Passo 4:** Dividir por $$0{,}40$$.

$$m = 50$$

**Resposta:** os dois planos custam o mesmo em $$m = 50$$ minutos.

Substituindo nas duas funções:

$$C_1(50) = 0{,}80 \cdot 50 + 40 = 40 + 40 = 80$$

$$C_2(50) = 1{,}20 \cdot 50 + 20 = 60 + 20 = 80$$

Os dois custam $$R\$ 80{,}00$$ no ponto de equilíbrio.

![Gráfico das funções de custo de dois planos de telefonia: C1(m) = 0,80m + 40 (azul) e C2(m) = 1,20m + 20 (vermelho), cruzando-se no ponto (50, 80)](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Matematica/_tikz/build/1serie/unidade-4-funcoes-e-funcao-afim/comparacao-planos-telefonia.png)

Antes de 50 minutos, o Plano B (vermelho) é mais barato — começa com taxa fixa menor. Depois de 50 minutos, o Plano A (azul) é mais barato — sua taxa por minuto é menor, e essa diferença compensa a taxa fixa maior.

> ⚠️ **Atenção:**  
> Em comparação de planos, o ponto de equilíbrio só é vantajoso se o consumo do usuário ficar próximo dele — antes ou depois, um dos planos é claramente mais barato.

---

## NA VIDA REAL

Função afim modela tarifas (assinatura mais consumo), salários (base mais comissão), corridas por aplicativo (bandeirada mais valor por km) e conversões entre unidades. O método dos mínimos quadrados de Legendre, ainda hoje, é a base para descobrir a função afim que melhor representa um conjunto de dados experimentais.

---

## E A BÍBLIA NISSO?

<center>
*"Então, os presidentes e os sátrapas procuravam ocasião para acusar a Daniel a respeito do reino; mas não puderam achá-la, nem culpa alguma; porque ele era fiel, e não se achava nele nenhum erro nem culpa."* — **Daniel 6:4**
</center>

Em uma função afim, a taxa de variação é constante — nenhuma alteração arbitrária do início ao fim da reta. Daniel preservou essa "taxa constante" de princípios em qualquer parte do percurso, e nem mesmo seus inimigos encontraram nele uma quebra de coerência.

> 💬 **Para Conversar:** Sua "taxa de variação" muda quando alguém está observando, ou seus valores permanecem constantes?

---

## Simplificando

Função afim é a função de lei $$f(x) = ax + b$$ com $$a \neq 0$$, em que $$a$$ é a taxa de variação (coeficiente angular) e $$b$$ é o valor inicial (coeficiente linear, intercepto no eixo $$y$$). O gráfico é uma reta; o zero da função é $$x_0 = -\dfrac{b}{a}$$; o sinal de $$a$$ define crescimento ou decrescimento. Em modelagem, $$b$$ costuma ser parte fixa e $$ax$$ parte proporcional.

---

## Fórmulas do capítulo

- **Função afim:** $$f(x) = ax + b$$, com $$a \neq 0$$.
- **Função linear (caso particular):** $$f(x) = ax$$ ($$b = 0$$, passa pela origem).
- **Coeficiente angular (taxa de variação):** $$a = \dfrac{\Delta y}{\Delta x} = \dfrac{f(x_2) - f(x_1)}{x_2 - x_1}$$.
- **Coeficiente linear:** $$f(0) = b$$.
- **Zero da função:** $$x_0 = -\dfrac{b}{a}$$.
- **Crescimento/decrescimento:** $$a > 0$$ → crescente; $$a < 0$$ → decrescente.
