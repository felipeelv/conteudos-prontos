# CAPÍTULO 4 — SEQUÊNCIAS E REGULARIDADES

## INTRODUÇÃO

No início do século XVIII, o matemático inglês Brook Taylor estudou padrões e regularidades que aparecem em listas de números — buscando fórmulas gerais que permitissem calcular qualquer termo sem precisar passar por todos os anteriores. A álgebra é a linguagem exata para esse tipo de descoberta.

> 💭 **Pense um pouco:**  
> Na sequência 2, 5, 11, 23, 47, como você encontraria o próximo termo? E o vigésimo, sem calcular um a um?

---

## 1. Padrões em Sequências

Uma sequência é uma lista ordenada de termos; um padrão é a regra que organiza esses termos.

### 1.1 Observar diferenças e repetições

Para identificar um padrão, observe a diferença ou a relação entre termos consecutivos.

Veja só:

Na sequência 3, 7, 11, 15, 19... a diferença entre dois termos consecutivos é sempre 4. O padrão é "somar 4 ao termo anterior".

Na sequência 2, 4, 8, 16, 32... cada termo é o dobro do anterior. O padrão é "multiplicar por 2".

### 1.2 Padrões numéricos e visuais

Padrões aparecem também em figuras que crescem em ordem.

Veja o exemplo abaixo.

Imagine uma sequência de figuras feitas com bolinhas: a 1ª figura tem 1 bolinha, a 2ª tem 4 bolinhas, a 3ª tem 9 e a 4ª tem 16.

Essa sequência segue o padrão dos quadrados perfeitos: a $$n$$-ésima figura tem $$n^2$$ bolinhas. A 5ª figura terá $$5^2 = 25$$ bolinhas; a 10ª, $$10^2 = 100$$.

> 🔢 **Padrão:**  
> Reconhecer um padrão é descobrir a regra por trás dos termos.

---

## 2. Regras Recursivas

Uma regra recursiva descreve cada termo a partir do termo anterior — quase como uma escada em que cada degrau apoia o seguinte.

### 2.1 O próximo depende do anterior

Em uma regra recursiva, o próximo termo é construído a partir do anterior aplicando a mesma operação.

Veja só:

Na sequência 2, 5, 11, 23, 47... cada termo é "o dobro do anterior mais 1":

$$a_{2} = 2 \cdot 2 + 1 = 5$$

$$a_{3} = 2 \cdot 5 + 1 = 11$$

$$a_{4} = 2 \cdot 11 + 1 = 23$$

$$a_{5} = 2 \cdot 23 + 1 = 47$$

A regra recursiva, em linguagem algébrica, é:

$$a_{n} = 2 \cdot a_{n-1} + 1$$

![Sequência 2, 5, 11, 23, 47 com setas indicando a regra recursiva "dobro do anterior mais 1"](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Matematica/_tikz/build/7ano/unidade-4-introducao-algebra/sequencia-recursiva-dobro-mais-um.png)

### 2.2 Caso base

Uma regra recursiva sozinha não basta — também é preciso conhecer o termo inicial, chamado caso base.

Veja o exemplo abaixo.

A regra "$$a_{n} = 2 \cdot a_{n-1} + 1$$" só faz sentido se soubermos por onde começar. Na sequência acima, o caso base é:

$$a_{1} = 2$$

Sem o caso base, a regra recursiva ficaria incompleta — não haveria primeiro termo para a recursão começar.

> ⚠️ **Atenção:**  
> Toda regra recursiva precisa de pelo menos um termo inicial.

---

## 3. Regras Não Recursivas

Uma regra não recursiva é uma fórmula direta — ela calcula o termo de qualquer posição $$n$$ sem precisar dos anteriores.

### 3.1 Fórmula direta

Quando existe uma fórmula que dá o termo a partir da posição, basta substituir $$n$$ por qualquer número.

Veja só:

Para a sequência 3, 7, 11, 15, 19..., uma fórmula direta é:

$$a_{n} = 4 \cdot n - 1$$

Conferindo:

$$a_{1} = 4 \cdot 1 - 1 = 3$$

$$a_{2} = 4 \cdot 2 - 1 = 7$$

$$a_{3} = 4 \cdot 3 - 1 = 11$$

A fórmula bate com os termos da sequência.

### 3.2 Calcular termos distantes

A grande vantagem da fórmula direta é poder pular para qualquer termo, mesmo que esteja muito longe no início.

Veja o exemplo abaixo.

Para descobrir o 100º termo da sequência 3, 7, 11, 15...:

$$a_{100} = 4 \cdot 100 - 1 = 399$$

Sem a fórmula direta, seria preciso calcular cada um dos 100 termos. Com ela, basta uma substituição.

> 🔢 **Padrão:**  
> Recursiva pergunta "quem veio antes?"; não recursiva pergunta "qual a posição?".

---

## 4. Regularidade em Linguagem Algébrica

A álgebra é a linguagem ideal para descrever regularidades — letras representam a posição $$n$$ ou o termo $$a_{n}$$, e expressões representam a regra inteira.

### 4.1 Expressão para o termo geral

O termo geral é uma expressão algébrica que permite calcular o termo de qualquer posição.

Veja só:

Na sequência dos pares positivos 2, 4, 6, 8, 10..., o termo geral é:

$$a_{n} = 2 \cdot n$$

Na sequência dos quadrados 1, 4, 9, 16, 25..., o termo geral é:

$$a_{n} = n^2$$

### 4.2 Expressões equivalentes

Duas expressões algébricas diferentes podem gerar exatamente a mesma sequência.

Veja o exemplo abaixo.

A sequência dos ímpares positivos é 1, 3, 5, 7, 9... Uma fórmula direta possível é:

$$a_{n} = 2 \cdot n - 1$$

Outra fórmula equivalente é:

$$a_{n} = 2 \cdot (n - 1) + 1$$

Conferindo a primeira para $$n = 4$$: $$2 \cdot 4 - 1 = 7$$.

Conferindo a segunda para $$n = 4$$: $$2 \cdot (4 - 1) + 1 = 2 \cdot 3 + 1 = 7$$.

As duas dão o mesmo termo — são expressões equivalentes que descrevem a mesma sequência.

---

## NA VIDA REAL

Em algumas plantas, as folhas se distribuem ao redor do caule seguindo a sequência de Fibonacci (1, 1, 2, 3, 5, 8, 13, 21...) — regra recursiva em que cada termo é a soma dos dois anteriores; a regularidade está escrita na própria natureza.

---

## E A BÍBLIA NISSO?

<center>
*"Daniel, pois, quando soube que a escritura estava assinada, entrou em sua casa e, em cima, no seu quarto, onde havia janelas abertas do lado de Jerusalém, três vezes por dia, se punha de joelhos, e orava, e dava graças, diante do seu Deus, como costumava fazer."* — **Daniel 6:10**
</center>

A regularidade não é repetição vazia — é coerência mantida ao longo do tempo. Os hábitos diários de Daniel formaram, ao longo dos anos, a identidade dele.

> 💬 **Para Conversar:** Que padrões repetidos na sua rotina estão formando quem você se torna?

---

## Simplificando

Sequência é uma lista ordenada de termos; padrão é a regra que organiza esses termos. Uma regra recursiva calcula cada termo a partir do anterior (e exige caso base); uma regra não recursiva é uma fórmula direta que depende da posição $$n$$.
