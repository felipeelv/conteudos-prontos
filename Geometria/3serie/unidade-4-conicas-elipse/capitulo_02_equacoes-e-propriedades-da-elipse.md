# Capítulo 2 — Equações e Propriedades da Elipse

## Como uma equação revela se a elipse é quase circular ou muito achatada?

A Praça São Pedro, no Vaticano, tem formato elíptico, com eixo maior de cerca de $$240$$ m e eixo menor de cerca de $$196$$ m. Toda essa geometria pode ser comprimida em uma única equação algébrica, e por trás dessa equação aparece um número entre $$0$$ e $$1$$ que mede exatamente o quanto a elipse se afasta de uma circunferência perfeita. Esse número é a chave para ler a forma só de olhar a fórmula.

> 💭 **Pense um pouco:**  
> Duas elipses podem ter o mesmo eixo maior e parecer muito diferentes; o que faz uma ser quase circular e a outra parecer "achatada"?

---

## 1. Equação Reduzida Da Elipse

Antes da excentricidade, precisamos saber escrever a equação que descreve cada ponto da curva.

### 1.1 Como a equação aparece com centro na origem?

Considere uma elipse com **centro na origem** e **eixo maior horizontal**, ou seja, sobre o eixo $$x$$. Aplicando a definição de soma constante das distâncias aos focos e desenvolvendo algebricamente, obtém-se a **equação reduzida**:

$$\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$$

Aqui, $$a$$ é o semieixo maior e $$b$$ é o semieixo menor, com $$a > b > 0$$. O denominador sob $$x^2$$ é o maior, porque o eixo maior está ao longo do eixo $$x$$.

### 1.2 E se o eixo maior for vertical?

Quando o eixo maior está sobre o eixo $$y$$, a equação inverte os papéis dos denominadores:

$$\frac{x^2}{b^2} + \frac{y^2}{a^2} = 1$$

Continua valendo $$a > b > 0$$, mas agora o **maior denominador** está sob $$y^2$$. Em ambas as orientações, vale a regra prática:

> 🔢 **Padrão:**  
> O maior denominador da equação reduzida fica sob a variável alinhada ao eixo maior.

### 1.3 Como ler vértices e focos pela equação?

Conhecidos $$a$$, $$b$$ e $$c$$, todos os elementos saem direto da equação. A relação fundamental do Capítulo 1 dá o valor de $$c$$:

$$c = \sqrt{a^2 - b^2}$$

Veja o exemplo abaixo.

Considere a equação:

$$\frac{x^2}{25} + \frac{y^2}{9} = 1$$

Identifique $$a$$, $$b$$, $$c$$, os vértices e os focos.

**Resolução:**

Comparando com a forma reduzida horizontal, temos $$a^2 = 25$$ e $$b^2 = 9$$. Logo:

$$a = 5$$

$$b = 3$$

Calculando $$c$$:

$$c^2 = a^2 - b^2$$

$$c^2 = 25 - 9$$

$$c^2 = 16$$

$$c = 4$$

Como o maior denominador está sob $$x^2$$, o eixo maior é horizontal. Os vértices principais ficam nos pontos $$(-5, 0)$$ e $$(5, 0)$$, e os vértices secundários em $$(0, -3)$$ e $$(0, 3)$$. Os focos ficam sobre o eixo maior, em $$(-4, 0)$$ e $$(4, 0)$$.

**Resposta:** $$a = 5$$, $$b = 3$$, $$c = 4$$; vértices $$(\pm 5, 0)$$ e $$(0, \pm 3)$$; focos $$(\pm 4, 0)$$.

---

## 2. Excentricidade

A equação revela a forma da elipse com mais clareza quando introduzimos uma medida única do "quanto" ela é alongada.

### 2.1 O que a excentricidade mede?

A **excentricidade** de uma elipse é a razão entre a semidistância focal e o semieixo maior:

$$e = \frac{c}{a}$$

Como $$0 \leq c < a$$, a excentricidade sempre satisfaz:

$$0 \leq e < 1$$

Quanto mais próximo de $$0$$, mais a elipse se parece com uma circunferência (de fato, $$e = 0$$ corresponde a $$c = 0$$, ou seja, focos coincidindo no centro). Quanto mais próximo de $$1$$, mais achatada a elipse fica.

> ⚠️ **Atenção:**  
> A excentricidade da elipse nunca atinge nem ultrapassa $$1$$; valor igual a $$1$$ corresponde a outra cônica (parábola), e valor acima de $$1$$ a outra ainda (hipérbole).

### 2.2 Como calcular a excentricidade em um exemplo

Veja o exemplo abaixo.

Calcule a excentricidade da elipse com $$a = 13$$ e $$b = 12$$.

**Resolução:**

Primeiro, encontramos $$c$$:

$$c^2 = a^2 - b^2$$

$$c^2 = 169 - 144$$

$$c^2 = 25$$

$$c = 5$$

Em seguida, calculamos a excentricidade:

$$e = \frac{c}{a}$$

$$e = \frac{5}{13}$$

$$e \approx 0{,}385$$

**Resposta:** a excentricidade da elipse é aproximadamente $$0{,}385$$.

> 📏 **Medidas Impressionantes:**  
> A órbita da Terra tem excentricidade próxima de $$0{,}017$$, quase indistinguível de uma circunferência a olho nu.

---

## 3. Aplicações Reais

A elipse aparece em arquitetura, astronomia e engenharia — em todos esses casos a equação reduzida e a excentricidade resolvem problemas concretos.

### 3.1 A Praça São Pedro

A Praça São Pedro, no Vaticano, tem formato de elipse com eixo maior aproximado de $$240$$ m e eixo menor aproximado de $$196$$ m. Os semieixos são:

$$a = 120 \mathrm{m}$$

$$b = 98 \mathrm{m}$$

A semidistância focal é:

$$c = \sqrt{120^2 - 98^2}$$

$$c = \sqrt{14400 - 9604}$$

$$c = \sqrt{4796}$$

$$c \approx 69{,}25 \mathrm{m}$$

A excentricidade fica:

$$e = \frac{69{,}25}{120}$$

$$e \approx 0{,}577$$

Em valores intermediários como esse, a elipse é claramente diferente de uma circunferência — e foi um efeito visual buscado intencionalmente por Gian Lorenzo Bernini ao projetar a praça no século XVII.

### 3.2 Órbitas planetárias

Para órbitas planetárias com o Sol em um dos focos, valem fórmulas simples para as distâncias mínima (periélio) e máxima (afélio):

$$d_{min} = a(1 - e)$$

$$d_{max} = a(1 + e)$$

Para a Terra, com $$a \approx 149{,}6$$ milhões de km e $$e \approx 0{,}0167$$:

$$d_{min} \approx 149{,}6 \cdot (1 - 0{,}0167) \approx 147{,}1$$

$$d_{max} \approx 149{,}6 \cdot (1 + 0{,}0167) \approx 152{,}1$$

Ou seja, $$d_{min} \approx 147{,}1$$ milhões de km e $$d_{max} \approx 152{,}1$$ milhões de km.

Esses são, justamente, os valores conhecidos do periélio e do afélio da Terra.

> 🏗️ **Geometria ao Redor:**  
> O Coliseu de Roma, anfiteatros gregos e galerias de sussurro também usam elipses; nas galerias, um som emitido em um foco ecoa exatamente sobre o outro foco, mesmo distante.

Em paralelo ao desenvolvimento dessas aplicações, **Sophie Germain** (1776–1831), matemática francesa autodidata, estudou superfícies elásticas e teoria dos números em uma época em que mulheres eram impedidas de frequentar universidades. Para enviar seus trabalhos a Lagrange e Gauss, assinava com o pseudônimo masculino *Monsieur Le Blanc*. Sua trajetória mostra que o rigor matemático não exige condições favoráveis — exige fidelidade ao argumento, mesmo quando o caminho social é difícil.

---

## NA VIDA REAL

Elipses aparecem em arquitetura sacra (Praça São Pedro, Coliseu de Roma), em desenho industrial (engrenagens elípticas para variar velocidade), em astronomia (órbitas planetárias, cometárias e de satélites artificiais) e em acústica (galerias de sussurro). Em medicina, a litotripsia extracorpórea usa um refletor elíptico para concentrar ondas sonoras em um foco, capazes de fragmentar cálculos renais localizados no outro foco — uma aplicação direta da propriedade focal da elipse.

---

## E A BÍBLIA NISSO?

> *"Os teus olhos olhem direitos, e as tuas pálpebras se dirijam diretamente diante de ti."* — **Provérbios 4:25**

A excentricidade mostra que uma elipse pode variar muito em forma sem deixar de ser elipse: a identidade essencial é preservada mesmo quando a posição dos focos muda. Integridade não é ausência de variação — é a preservação da identidade central sob diferentes condições, com o olhar firme no que orienta toda a estrutura.

- **Identidade preservada na variação:** o que muda no entorno não muda a regra interna.

> 💬 **Para Conversar:** Que variações na sua vida são legítimas e até saudáveis, e quais começam a comprometer a identidade central que você assumiu?

---

## Simplificando

A equação reduzida da elipse mostra a direção do eixo maior pelo **maior denominador**, e a **excentricidade** $$e = \frac{c}{a}$$ mede o quanto a forma se afasta da circunferência, sempre no intervalo $$0 \leq e < 1$$.

---

## Para não esquecer

- **Equação reduzida horizontal:** $$\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$$ com $$a > b$$.
- **Equação reduzida vertical:** $$\frac{x^2}{b^2} + \frac{y^2}{a^2} = 1$$ com $$a > b$$.
- **Excentricidade:** $$e = \frac{c}{a}$$, com $$0 \leq e < 1$$.
- **Focos pela equação:** ficam sempre no eixo maior, a distância $$c$$ do centro.
- **Periélio e afélio:** $$d_{min} = a(1-e)$$ e $$d_{max} = a(1+e)$$.

---

## Fórmulas do capítulo

- Equação reduzida com eixo maior horizontal:

$$\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$$

- Equação reduzida com eixo maior vertical:

$$\frac{x^2}{b^2} + \frac{y^2}{a^2} = 1$$

- Relação fundamental:

$$a^2 = b^2 + c^2$$

- Semidistância focal:

$$c = \sqrt{a^2 - b^2}$$

- Excentricidade:

$$e = \frac{c}{a}$$

- Intervalo da excentricidade na elipse:

$$0 \leq e < 1$$

- Equação com centro $$(h, k)$$ e eixo maior horizontal:

$$\frac{(x - h)^2}{a^2} + \frac{(y - k)^2}{b^2} = 1$$

- Equação com centro $$(h, k)$$ e eixo maior vertical:

$$\frac{(x - h)^2}{b^2} + \frac{(y - k)^2}{a^2} = 1$$

- Distâncias máxima e mínima em órbita com foco no Sol:

$$d_{min} = a(1 - e)$$

$$d_{max} = a(1 + e)$$
