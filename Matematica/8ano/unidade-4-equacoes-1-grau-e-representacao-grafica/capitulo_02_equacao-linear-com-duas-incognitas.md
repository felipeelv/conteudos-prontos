# CAPÍTULO 2 — EQUAÇÃO LINEAR COM DUAS INCÓGNITAS

## INTRODUÇÃO

No século III, em Alexandria, Diofanto escreveu o tratado *Arithmetica*, em que estudava equações com várias soluções possíveis — quase mil anos antes da álgebra moderna. Quando uma equação tem duas letras desconhecidas, o problema deixa de pedir um único valor: passa a pedir pares de valores que funcionem juntos.

> 💭 **Pense um pouco:**  
> Se duas compras diferentes gastam o mesmo total, as duas podem estar matematicamente corretas?

---

## 1. A Forma da Equação

Uma equação linear com duas incógnitas tem uma forma padrão fácil de reconhecer.

### 1.1 O que muda quando aparecem duas letras

Em uma equação com uma incógnita, a resposta é um único valor. Com duas incógnitas, a resposta passa a ser um par de valores — um para cada letra.

Veja só:

Em $$3x + 5 = 20$$, há uma única solução: $$x = 5$$.

Em $$5x + 3y = 60$$, não basta um número: precisamos dizer quanto vale $$x$$ e quanto vale $$y$$ ao mesmo tempo.

### 1.2 A forma $$ax + by = c$$

A forma padrão de uma equação linear com duas incógnitas é:

$$ax + by = c$$

Aqui, $$a$$, $$b$$ e $$c$$ são números chamados coeficientes. Os coeficientes $$a$$ e $$b$$ não podem ser ambos zero ao mesmo tempo (senão a equação não envolveria mais nem $$x$$ nem $$y$$).

Veja o exemplo abaixo.

A equação $$5x + 3y = 60$$ está na forma padrão, com $$a = 5$$, $$b = 3$$ e $$c = 60$$.

> 🔢 **Padrão:**  
> Em $$ax + by = c$$, $$a$$ e $$b$$ não podem ser nulos simultaneamente.

---

## 2. Testando Pares Ordenados

Para saber se um par é solução, basta substituir os valores na equação e conferir a igualdade.

### 2.1 O que é um par ordenado

Par ordenado é uma dupla $$(x, y)$$ em que a ordem importa — primeiro vem o valor de $$x$$, depois o valor de $$y$$.

Veja só:

$$(2, 3)$$ e $$(3, 2)$$ são pares ordenados diferentes — o primeiro tem $$x = 2$$ e $$y = 3$$; o segundo, $$x = 3$$ e $$y = 2$$.

### 2.2 Substituir para verificar

Para testar se um par é solução, substitui-se cada coordenada na equação.

Veja o exemplo abaixo.

Verificar se $$(9, 5)$$ é solução de $$5x + 3y = 60$$:

**Resolução:**

- **Passo 1:** Substituir $$x = 9$$ e $$y = 5$$ na equação.

$$5 \cdot 9 + 3 \cdot 5$$

- **Passo 2:** Calcular.

$$45 + 15 = 60$$

- **Passo 3:** Comparar com o lado direito.

$$60 = 60$$

A igualdade se verifica.

**Resposta:** sim, $$(9, 5)$$ é solução.

Já o par $$(10, 4)$$:

$$5 \cdot 10 + 3 \cdot 4 = 50 + 12 = 62$$

62 ≠ 60 — então $$(10, 4)$$ não é solução.

> ⚠️ **Atenção:**  
> Em pares ordenados, $$(2, 3)$$ e $$(3, 2)$$ são lugares diferentes — sempre primeiro $$x$$, depois $$y$$.

---

## 3. Construindo Soluções

Em vez de adivinhar pares, podemos escolher um valor para uma incógnita e calcular o valor correspondente da outra.

### 3.1 Escolher uma incógnita e calcular a outra

Isolar uma das letras na equação facilita o cálculo dos pares-solução.

Veja só:

A partir de $$5x + 3y = 60$$, isolar $$y$$:

**Resolução:**

- **Passo 1:** Subtrair $$5x$$ dos dois lados.

$$3y = 60 - 5x$$

- **Passo 2:** Dividir por 3.

$$y = \frac{60 - 5x}{3}$$

Agora basta escolher valores de $$x$$ e calcular o $$y$$ correspondente.

Para $$x = 0$$: $$y = \frac{60 - 0}{3} = 20$$. Par: $$(0, 20)$$.

Para $$x = 3$$: $$y = \frac{60 - 15}{3} = \frac{45}{3} = 15$$. Par: $$(3, 15)$$.

Para $$x = 6$$: $$y = \frac{60 - 30}{3} = \frac{30}{3} = 10$$. Par: $$(6, 10)$$.

### 3.2 Soluções possíveis no contexto

Em problemas reais, o conjunto de soluções pode ser limitado pelo contexto.

Veja o exemplo abaixo.

A equação $$5x + 3y = 60$$ pode representar uma compra: $$x$$ salgados a R$ 5,00 cada e $$y$$ sucos a R$ 3,00 cada, totalizando R$ 60,00.

Nesse contexto, $$x$$ e $$y$$ devem ser números naturais (não compramos pedaços de salgado nem sucos negativos). Soluções possíveis:

- $$(0, 20)$$: 0 salgados e 20 sucos.
- $$(3, 15)$$: 3 salgados e 15 sucos.
- $$(6, 10)$$: 6 salgados e 10 sucos.
- $$(9, 5)$$: 9 salgados e 5 sucos.
- $$(12, 0)$$: 12 salgados e nenhum suco.

Pares como $$(1, 18{,}33)$$ não cabem no contexto, mesmo que a equação seja satisfeita.

---

## 4. Conjunto-solução

O conjunto-solução de uma equação linear com duas incógnitas é o conjunto de todos os pares ordenados que tornam a igualdade verdadeira.

### 4.1 Muitas soluções particulares

Cada par-solução é chamado solução particular.

Veja só:

Os pares $$(0, 20)$$, $$(3, 15)$$, $$(6, 10)$$, $$(9, 5)$$ e $$(12, 0)$$ são todos soluções particulares de $$5x + 3y = 60$$.

E não são as únicas — há muitas outras.

### 4.2 Infinitas soluções nos reais

Quando se admitem números reais (e não apenas naturais ou inteiros), uma equação linear com duas incógnitas admite **infinitas** soluções.

Veja o exemplo abaixo.

Para qualquer valor real de $$x$$ que escolhamos, podemos calcular um $$y$$ correspondente que satisfaz a equação. Se $$x = 1$$:

$$y = \frac{60 - 5}{3} = \frac{55}{3} \approx 18{,}33$$

Se $$x = 2$$, $$y = \frac{50}{3} \approx 16{,}67$$.

Como $$x$$ pode assumir infinitos valores reais, a equação admite infinitos pares-solução.

> 🔢 **Padrão:**  
> Equação linear com duas incógnitas tem infinitas soluções nos reais — escolhe-se um valor para uma das letras e calcula-se a outra.

---

## NA VIDA REAL

Quando uma cantina oferece combos por R$ 60,00 com quantidades variáveis de salgados e sucos, várias combinações satisfazem o orçamento — exatamente as soluções inteiras de uma equação linear com duas incógnitas.

---

## E A BÍBLIA NISSO?

<center>
*"Finalmente, irmãos, tudo o que é verdadeiro, tudo o que é respeitável, tudo o que é justo, tudo o que é puro, tudo o que é amável, tudo o que é de boa fama, se alguma virtude há e se algum louvor existe, seja isso o que ocupe o vosso pensamento."* — **Filipenses 4:8**
</center>

Um par ordenado só é solução quando as duas coordenadas tornam a igualdade verdadeira; verdade pela metade não é solução.

> 💬 **Para Conversar:** Por que uma resposta parcialmente correta, em matemática ou na vida, muitas vezes ainda conta como errada?

---

## Simplificando

Uma equação linear com duas incógnitas tem a forma $$ax + by = c$$ e pede pares ordenados $$(x, y)$$ que façam a igualdade ser verdadeira; nos reais, há infinitos pares-solução, e o contexto de cada problema decide quais deles são aceitáveis.

---

## Fórmulas do capítulo

- **Equação linear com duas incógnitas (forma padrão):** $$ax + by = c$$, com $$a$$ e $$b$$ não simultaneamente nulos.
- **Isolando $$y$$:** $$y = \frac{c - ax}{b}$$, com $$b \neq 0$$.
- **Verificação de par-solução:** substituir $$x$$ e $$y$$ no lado esquerdo e comparar com $$c$$.
