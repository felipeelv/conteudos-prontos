# CAPÍTULO 1 — RAÍZES N-ÉSIMAS

## INTRODUÇÃO

Nos números reais, costumamos pensar em "a raiz" de um número como uma única resposta principal. Nos complexos, essa intuição fica incompleta: uma raiz cúbica, quarta ou quinta pode se espalhar em vários pontos do plano. Aqui vamos descobrir como encontrar todas elas e por que sempre formam uma figura simétrica.

> 💭 **Pense um pouco:**  
> Se 1 elevado ao cubo é 1, será que existe outra raiz cúbica de 1 além do próprio 1?

---

## 1. O Que É Uma Raiz N-Ésima

Toda potenciação tem uma operação inversa, e nos complexos esse processo ganha estrutura nova.

### 1.1 A condição w^n = z

Dizemos que `w` é uma **raiz n-ésima** de `z` quando vale a relação:

$$w^n = z$$

Ou seja, `w` elevado à potência `n` reproduz `z`. Nos reais, geralmente isolamos apenas a chamada raiz principal. Nos complexos, vamos ver que essa equação possui mais de uma solução legítima.

Veja o exemplo abaixo.

Quanto vale uma raiz cúbica de 1?

**Resolução:**

$$w^3 = 1$$

O número 1 é uma das raízes, mas também existem outras duas soluções complexas. Para encontrá-las, precisamos de uma escrita que mostre toda a estrutura geométrica de `z`.

**Resposta:** existem três valores de `w` que cumprem a equação; o 1 é apenas um deles.

### 1.2 Por que precisamos da forma trigonométrica

A forma trigonométrica de um complexo separa-o em dois elementos:

$$z = \rho (\cos \theta + i \sin \theta)$$

O **módulo** `ρ` é a distância de `z` à origem; o **argumento** `θ` é o ângulo que `z` forma com o eixo real positivo. Essa separação é o que vai permitir gerar todas as raízes de uma vez.

Sem essa escrita, o cálculo direto da raiz de um complexo ficaria preso a uma única resposta. Com ela, podemos variar o ângulo de forma controlada e produzir todas as soluções.

---

## 2. A Fórmula Geral

A partir da forma trigonométrica e do Teorema de De Moivre, surge a expressão que entrega todas as raízes n-ésimas.

### 2.1 Módulo da raiz

Se `z = ρ(cos θ + i sin θ)`, então o módulo de cada raiz n-ésima de `z` é:

$$|w| = \sqrt[n]{\rho}$$

Repare: **todas as raízes têm o mesmo módulo**. O que muda entre elas é o argumento.

### 2.2 Argumento da raiz

Os argumentos das raízes n-ésimas obedecem à expressão:

$$\arg(w_k) = \frac{\theta + 2k\pi}{n}$$

Cada valor de `k` produz uma nova raiz. A diferença entre raízes consecutivas é exatamente:

$$\Delta\theta = \frac{2\pi}{n}$$

### 2.3 O papel do índice k

Reunindo módulo e argumento, a fórmula geral das raízes n-ésimas de `z` é:

$$z_k = \sqrt[n]{\rho}\left[\cos\left(\frac{\theta + 2k\pi}{n}\right) + i\sin\left(\frac{\theta + 2k\pi}{n}\right)\right]$$

O índice `k` é o que destrava todas as soluções. Cada inteiro de `k = 0` até `k = n-1` gera uma raiz diferente.

> 🔢 **Padrão:**  
> Mesmo módulo para todas as raízes; argumentos espaçados igualmente por 2π/n.

---

## 3. Quantas Raízes Existem

A fórmula geral parece infinita, mas só produz `n` raízes distintas.

### 3.1 k = 0, 1, ..., n-1

A cada `n` valores consecutivos de `k`, a fórmula começa a repetir as raízes. Por exemplo, para `k = n`, o argumento se torna `θ/n + 2π`, que cai no mesmo ponto que `k = 0` (o ângulo `2π` é equivalente a `0` no círculo).

Por isso, o intervalo útil é:

$$k = 0, 1, 2, \ldots, n-1$$

Ao final, obtemos exatamente `n` raízes.

### 3.2 Raízes distintas no plano complexo

As `n` raízes têm o mesmo módulo, mas argumentos diferentes. Isso significa que elas ocupam pontos distintos no plano complexo, todos sobre um mesmo círculo de raio igual à raiz n-ésima do módulo de `z`.

> ⚠️ **Atenção:**  
> Trabalhar apenas com k = 0 significa pegar uma só raiz e ignorar as outras n − 1 soluções válidas.

---

## 4. Raízes Da Unidade

O caso `z = 1` é o exemplo mais limpo da estrutura das raízes n-ésimas.

### 4.1 O caso z = 1

Para `z = 1`, temos `ρ = 1` e `θ = 0`. A fórmula geral se simplifica para:

$$z_k = \cos\left(\frac{2k\pi}{n}\right) + i\sin\left(\frac{2k\pi}{n}\right)$$

Em notação exponencial, a mesma expressão fica:

$$z_k = e^{2k\pi i / n}$$

Essas são chamadas **raízes n-ésimas da unidade**. Todas têm módulo 1, logo ficam sobre o **círculo unitário** no plano complexo.

### 4.2 Raízes cúbicas e quartas da unidade

Veja o exemplo abaixo.

Calcule todas as raízes cúbicas de 1.

**Resolução:**

Como `1 = 1·(cos 0 + i sin 0)`, temos `ρ = 1`, `θ = 0` e `n = 3`. A fórmula se torna:

$$z_k = \cos\left(\frac{2k\pi}{3}\right) + i\sin\left(\frac{2k\pi}{3}\right)$$

Para `k = 0`:

$$z_0 = \cos 0 + i\sin 0 = 1$$

Para `k = 1`:

$$z_1 = \cos\left(\frac{2\pi}{3}\right) + i\sin\left(\frac{2\pi}{3}\right)$$

$$z_1 = -\frac{1}{2} + i\frac{\sqrt{3}}{2}$$

Para `k = 2`:

$$z_2 = \cos\left(\frac{4\pi}{3}\right) + i\sin\left(\frac{4\pi}{3}\right)$$

$$z_2 = -\frac{1}{2} - i\frac{\sqrt{3}}{2}$$

**Resposta:** as três raízes cúbicas de 1 são 1, −1/2 + i√3/2 e −1/2 − i√3/2.

As raízes **quartas** de 1 saem do mesmo raciocínio com `n = 4`: 1, `i`, −1 e −`i`. Cada uma fica em um eixo do plano complexo.

---

## 5. A Geometria Das Raízes

Quando representamos as `n` raízes no plano, elas revelam uma simetria perfeita.

### 5.1 Espaçamento angular 2π/n

Por construção, dois argumentos consecutivos diferem por:

$$\Delta\theta = \frac{2\pi}{n}$$

Em graus, isso equivale a `360°/n`. Por exemplo, raízes cúbicas ficam separadas em 120°; raízes quartas, em 90°; raízes hexagonais, em 60°.

### 5.2 Polígono regular

Ao ligar as `n` raízes em sequência, obtemos um **polígono regular** de `n` lados, inscrito no círculo de raio igual à raiz n-ésima do módulo de `z`. As raízes cúbicas formam um **triângulo equilátero**; as quartas, um **quadrado**; as quintas, um **pentágono regular**; e assim por diante.

> 📌 **Aplicação prática:**  
> Essa simetria não é coincidência: aparece em cristalografia, em desenho de engrenagens e em qualquer fenômeno cíclico com regularidade angular.

Em paralelo ao desenvolvimento da estrutura das raízes complexas, o matemático francês **Charles-François Sturm** (1803–1855) publicou em 1829 um método para contar quantas **raízes reais** um polinômio possui em um intervalo, sem precisar resolvê-las explicitamente. Sturm não trabalhava diretamente com raízes complexas, mas sua pesquisa pertence ao mesmo esforço histórico de organizar e prever a estrutura das soluções de equações polinomiais.

---

## NA VIDA REAL

A simetria das raízes n-ésimas aparece em cristalografia (estruturas cristalinas hexagonais e cúbicas), em desenho industrial de engrenagens e em construções geométricas que dependem de divisões iguais do círculo. Tecnologias modernas de modelagem 3D e de animação também usam essa estrutura para representar rotações suaves.

---

## E A BÍBLIA NISSO?

<center>
*"A integridade dos retos os guia; mas, aos pérfidos, a sua mesma falsidade os destrói."* — **Provérbios 11:3**
</center>

As raízes n-ésimas de um complexo ocupam vértices simétricos no plano: módulos iguais e argumentos coerentes. Integridade não exige uniformidade de posição, mas coerência de estrutura — cada raiz preserva a mesma relação com o número original.

> 💬 **Para Conversar:** Você consegue identificar situações em que várias soluções coexistem com igual valor, sem competir entre si?

---

## Simplificando

Uma raiz n-ésima de um complexo `z` não é apenas uma resposta principal: são exatamente `n` valores distintos, todos com mesmo módulo e argumentos espaçados por 2π/n. Esses pontos formam um polígono regular no plano complexo.

---

## Fórmulas do capítulo

- Definição de raiz n-ésima:

$$w^n = z$$

- Forma trigonométrica de `z`:

$$z = \rho (\cos \theta + i \sin \theta)$$

- Fórmula geral das raízes n-ésimas:

$$z_k = \sqrt[n]{\rho}\left[\cos\left(\frac{\theta + 2k\pi}{n}\right) + i\sin\left(\frac{\theta + 2k\pi}{n}\right)\right]$$

- Intervalo do índice:

$$k = 0, 1, 2, \ldots, n-1$$

- Raízes n-ésimas da unidade (forma trigonométrica):

$$z_k = \cos\left(\frac{2k\pi}{n}\right) + i\sin\left(\frac{2k\pi}{n}\right)$$

- Raízes n-ésimas da unidade (forma exponencial):

$$z_k = e^{2k\pi i / n}$$

- Espaçamento angular entre raízes consecutivas:

$$\Delta\theta = \frac{2\pi}{n}$$
