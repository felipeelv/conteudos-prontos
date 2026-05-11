# CAPÍTULO 2 — APLICAÇÕES DOS COMPLEXOS

## INTRODUÇÃO

O nome "imaginário" pode sugerir algo sem uso concreto. Mas em corrente alternada, em ondas e em rotações no plano, os complexos aparecem como ferramenta prática. Aqui você vai ver como uma ideia inicialmente abstrata organiza problemas físicos e tecnológicos reais.

> 💭 **Pense um pouco:**  
> Você confiaria em um número chamado "imaginário" para calcular uma rede elétrica de verdade?

---

## 1. Complexos E Polinômios

Antes das aplicações físicas, vale relembrar onde os complexos garantem soluções dentro da própria álgebra.

### 1.1 Revisão do TFA

O **Teorema Fundamental da Álgebra** (TFA) afirma que todo polinômio de grau `n`, com coeficientes complexos, possui exatamente `n` raízes em ℂ (contando multiplicidades).

Isso significa que, mesmo quando a equação não tem solução nos reais, ela sempre tem solução nos complexos. Por exemplo, `x² + 1 = 0` não admite raiz real, mas tem duas raízes complexas: `i` e `−i`.

> 🔢 **Padrão:**  
> Grau do polinômio = número de raízes complexas (com multiplicidade).

### 1.2 Raízes conjugadas

Quando o polinômio tem **coeficientes reais**, suas raízes complexas não reais aparecem em **pares conjugados**: se `a + bi` é raiz, então `a − bi` também é.

Veja o exemplo abaixo.

Mostre que `2 + i` e `2 − i` são raízes do polinômio `x² − 4x + 5`.

**Resolução:**

Para `x = 2 + i`:

$$(2+i)^2 - 4(2+i) + 5$$

$$= 4 + 4i + i^2 - 8 - 4i + 5$$

$$= 4 + 4i - 1 - 8 - 4i + 5 = 0$$

Para `x = 2 − i`:

$$(2-i)^2 - 4(2-i) + 5$$

$$= 4 - 4i + i^2 - 8 + 4i + 5$$

$$= 4 - 4i - 1 - 8 + 4i + 5 = 0$$

**Resposta:** as raízes `2 + i` e `2 − i` são pares conjugados de um polinômio com coeficientes reais.

---

## 2. Engenharia Elétrica

A primeira grande aplicação física dos complexos é em circuitos de corrente alternada.

### 2.1 Corrente alternada

Em corrente contínua (CC), a tensão e a corrente são constantes ao longo do tempo. Em **corrente alternada** (CA), elas variam periodicamente — o exemplo mais comum é a rede elétrica das casas, que oscila 60 vezes por segundo no Brasil.

A análise direta com funções senoidais reais funciona, mas fica muito trabalhosa quando há indutores e capacitores. Os complexos aparecem como uma linguagem mais econômica.

### 2.2 Impedância Z = R + jX

Em CA, a oposição total que um circuito oferece à passagem da corrente é chamada **impedância**, representada por um número complexo:

$$Z = R + jX$$

Aqui:

- `R` é a **resistência** (parte real, associada à dissipação de energia);
- `X` é a **reatância** (parte imaginária, associada a indutores e capacitores);
- `j` é a unidade imaginária — **na engenharia elétrica usamos `j` no lugar de `i` para evitar confusão** com a corrente elétrica, que é tradicionalmente escrita como `i(t)`.

### 2.3 Módulo da impedância

O **módulo** da impedância representa a oposição efetiva que o circuito impõe à corrente:

$$|Z| = \sqrt{R^2 + X^2}$$

Geometricamente, é a hipotenusa do triângulo cujos catetos são `R` e `X`.

Veja o exemplo abaixo.

Um circuito tem um resistor de `R = 3 Ω` em série com um indutor de reatância `X = 4 Ω`. Calcule a impedância e seu módulo.

**Resolução:**

Impedância:

$$Z = 3 + 4j$$

Módulo:

$$|Z| = \sqrt{3^2 + 4^2}$$

$$|Z| = \sqrt{9 + 16}$$

$$|Z| = \sqrt{25}$$

$$|Z| = 5\Omega$$

**Resposta:** a impedância é `Z = 3 + 4j` e seu módulo é `|Z| = 5 Ω`.

> 📌 **Aplicação prática:**  
> Engenheiros usam a forma `Z = R + jX` para somar componentes em série como soma de números complexos: rápido e exato.

---

## 3. Oscilações E Ondas

Outra aplicação central é a descrição de fenômenos que se repetem no tempo.

### 3.1 Amplitude, frequência e fase

Uma oscilação harmônica simples pode ser escrita como:

$$y(t) = A\cos(\omega t + \varphi)$$

Aqui:

- `A` é a **amplitude** (valor máximo da oscilação);
- `ω` é a **frequência angular** (velocidade de oscilação);
- `φ` é a **fase** (deslocamento angular inicial).

Esse modelo descreve ondas sonoras, vibrações mecânicas, tensões alternadas e muitos outros fenômenos.

### 3.2 Escrita complexa de oscilações

A mesma oscilação pode ser organizada usando a exponencial complexa:

$$y(t) = \mathrm{Re}\left[A \cdot e^{i(\omega t + \varphi)}\right]$$

A parte real (`Re`) recupera o cosseno original. A vantagem dessa escrita é que multiplicações e somas de oscilações se tornam operações algébricas simples no plano complexo, em vez de identidades trigonométricas complicadas.

> ⚠️ **Atenção:**  
> A escrita complexa não cria uma "nova oscilação"; ela é uma forma compacta de representar a mesma oscilação real, escolhida porque facilita os cálculos.

---

## 4. Geometria: Rotações No Plano

Os complexos também descrevem rotações de modo direto.

### 4.1 Multiplicar por e^{iθ}

Multiplicar um complexo `z` por `e^{iθ}` produz uma **rotação** de ângulo `θ` em torno da origem:

$$w = z \cdot e^{i\theta}$$

O módulo de `z` é preservado; só o argumento aumenta em `θ`.

### 4.2 Rotações no plano

Veja o exemplo abaixo.

Tome `z = 1` (ponto `(1, 0)` no plano). Aplique uma rotação de 90° em torno da origem.

**Resolução:**

Convertendo 90° para radianos: `θ = π/2`. Multiplicamos:

$$w = 1 \cdot e^{i\pi/2}$$

$$w = \cos(\pi/2) + i\sin(\pi/2)$$

$$w = 0 + i \cdot 1 = i$$

**Resposta:** o ponto `(1, 0)` gira para `(0, 1)`, ou seja, `w = i`.

> 🔢 **Padrão:**  
> Rotação de 90° equivale a multiplicar por `i`; rotação de 180°, por −1; rotação de 270°, por `−i`.

---

## 5. Tecnologia Moderna

A linguagem complexa atravessa boa parte das tecnologias do dia a dia.

### 5.1 Sinais, gráficos e comunicação

Em telecomunicações (Wi-Fi, telefonia, rádio), os sinais transmitidos são modelados por combinações de ondas, e os complexos aparecem nos circuitos de modulação e nas análises de frequência. Em computação gráfica, rotações 2D são feitas por multiplicação complexa; em modelagem 3D, conceitos análogos aparecem com estruturas mais gerais (quatérnions).

Em paralelo a esse desenvolvimento, o engenheiro e matemático germano-americano **Charles Proteus Steinmetz** (1865–1923) publicou em 1893 o artigo *Complex Quantities and Their Use in Electrical Engineering*, apresentando como os números complexos simplificavam radicalmente os cálculos de corrente alternada. O trabalho transformou a engenharia elétrica e abriu caminho para a distribuição em larga escala de energia em CA.

### 5.2 O limite do que fica para o Ensino Superior

A formalização completa dessas aplicações — Transformada de Fourier, equações diferenciais de circuitos, análise complexa, fasores em regime permanente — pertence ao Ensino Superior. Aqui, o objetivo é reconhecer que os complexos não são uma curiosidade abstrata: são a ferramenta natural para organizar fenômenos cíclicos e rotacionais.

---

## NA VIDA REAL

Os complexos aparecem na operação da rede elétrica, em motores de corrente alternada, em sinais de Wi-Fi e telefonia, em compressão de áudio e vídeo, em computação gráfica e em análise de vibrações estruturais. Praticamente toda tecnologia que envolve algo "que oscila" ou "que gira" usa a linguagem complexa nos bastidores.

---

## E A BÍBLIA NISSO?

<center>
*"Então, os presidentes e os sátrapas procuravam ocasião para acusar a Daniel a respeito do reino; mas não puderam achá-la, nem culpa alguma; porque ele era fiel, e não se achava nele nenhum erro nem culpa."* — **Daniel 6:4**
</center>

Os complexos foram chamados de "imaginários" por séculos, como se não tivessem valor real. Daniel foi examinado e nada foi encontrado contra ele; do mesmo modo, uma ideia matemática íntegra resiste ao exame e revela seu valor quando aplicada ao mundo concreto.

> 💬 **Para Conversar:** Que talentos, ideias ou características parecem pouco reconhecidos agora, mas podem ter aplicação real quando forem compreendidos corretamente?

---

## Simplificando

Os números complexos descrevem fenômenos reais que envolvem oscilação e rotação: organizam circuitos em corrente alternada por meio da impedância `Z = R + jX`, representam ondas pela exponencial complexa e descrevem rotações no plano pela multiplicação por `e^(iθ)`.

---

## Fórmulas do capítulo

- Par conjugado de raízes complexas em polinômio real: `a + bi` e `a − bi`

- Impedância em CA:

$$Z = R + jX$$

- Módulo da impedância:

$$|Z| = \sqrt{R^2 + X^2}$$

- Oscilação harmônica real:

$$y(t) = A\cos(\omega t + \varphi)$$

- Escrita complexa da oscilação:

$$y(t) = \mathrm{Re}\left[A \cdot e^{i(\omega t + \varphi)}\right]$$

- Rotação no plano complexo:

$$w = z \cdot e^{i\theta}$$
