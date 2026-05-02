# CAPÍTULO 2 — PRIMOS E COMPOSTOS

## INTRODUÇÃO

No início do século XIX, a matemática francesa Sophie Germain — que, na época, precisou assinar suas cartas com nome de homem para ser levada a sério pelos colegas — investigou os números primos e descobriu propriedades novas sobre eles. Os primos continuam sendo, até hoje, os blocos básicos da aritmética: tudo o que se constrói com multiplicação parte deles.

> 💭 **Pense um pouco:**  
> Quantos divisores tem o número 7? E o número 12?

---

## 1. Números Primos

Número primo é o natural maior que 1 que tem exatamente dois divisores — o 1 e ele mesmo.

### 1.1 Dois divisores, exatamente

Para descobrir se um número é primo, basta listar seus divisores e contar.

Veja só:

Os divisores de 7 são: 1 e 7. Apenas dois — então 7 é primo.

Os divisores de 11 são: 1 e 11. Apenas dois — então 11 é primo.

Os primos até 30 são: 2, 3, 5, 7, 11, 13, 17, 19, 23 e 29.

### 1.2 O caso do 1 e do 2

Dois números merecem atenção especial: o 1 e o 2.

Veja o exemplo abaixo.

O número 1 tem apenas um divisor — o próprio 1. Por isso, 1 não é primo (e também não é composto).

O número 2 tem exatamente dois divisores — 1 e 2. Por isso, 2 é primo. E como todo número par maior que 2 é divisível por 2, esses pares têm pelo menos três divisores — o que significa que 2 é o único primo par.

> ⚠️ **Atenção:**  
> O 1 não é primo porque tem só um divisor; e o 2 é o único primo par.

---

## 2. Números Compostos

Número composto é o natural maior que 1 que tem mais de dois divisores.

### 2.1 Quando há mais divisores

Para reconhecer um composto, basta encontrar um divisor além do 1 e do próprio número.

Veja só:

Os divisores de 12 são: 1, 2, 3, 4, 6 e 12. São seis divisores — então 12 é composto.

Os divisores de 9 são: 1, 3 e 9. Três divisores — então 9 é composto.

### 2.2 Reconhecer compostos pelos critérios

Os critérios de divisibilidade ajudam a identificar rapidamente que um número é composto.

Veja o exemplo abaixo.

O número 144 é par — então é divisível por 2, além de 1 e 144. Já são três divisores. Logo, 144 é composto.

O número 21 tem soma dos algarismos $$2 + 1 = 3$$ — divisível por 3. Então 21 tem 1, 3, 7 e 21 como divisores. Logo, 21 é composto.

---

## 3. Decomposição em Fatores Primos

Todo número composto pode ser escrito como uma multiplicação só de números primos.

### 3.1 Árvore de fatores

Uma árvore de fatores quebra o número em duas partes, e cada parte composta continua sendo quebrada — até sobrarem só primos.

Veja só:

Para decompor 60, comece dividindo por um primo qualquer:

$$60 = 2 \cdot 30$$

Como 30 ainda é composto, continue:

$$30 = 2 \cdot 15$$

E 15 ainda é composto:

$$15 = 3 \cdot 5$$

Juntando tudo:

$$60 = 2 \cdot 2 \cdot 3 \cdot 5$$

Em forma de potência:

$$60 = 2^{2} \cdot 3 \cdot 5$$

![Árvore de fatores de 60 mostrando a decomposição em 2, 2, 3 e 5](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Matematica/_tikz/build/6ano/unidade-4-divisibilidade/arvore-fatores-60.png)

### 3.2 Tabela de divisões

Outra forma de decompor é organizar as divisões sucessivas em uma tabela vertical, do menor primo para o maior.

Veja o exemplo abaixo.

Para decompor 84, divida sempre pelo menor primo possível:

$$84 \div 2 = 42$$

$$42 \div 2 = 21$$

$$21 \div 3 = 7$$

$$7 \div 7 = 1$$

Os divisores usados foram 2, 2, 3 e 7 — então:

$$84 = 2^{2} \cdot 3 \cdot 7$$

---

## 4. Fatoração Única

A decomposição em fatores primos é a identidade do número — cada natural maior que 1 tem uma única fatoração possível.

### 4.1 A identidade do número

Não importa por onde se comece a árvore, o resultado em primos é sempre o mesmo.

Veja só:

100 pode ser quebrado como $$100 = 4 \cdot 25$$ ou como $$100 = 10 \cdot 10$$. Os caminhos são diferentes, mas o resultado final em primos é único:

$$100 = 2^{2} \cdot 5^{2}$$

### 4.2 Como conferir uma fatoração

Para conferir uma fatoração, basta multiplicar todos os fatores e verificar se o resultado é o número original.

Veja o exemplo abaixo.

Conferindo a fatoração $$60 = 2^{2} \cdot 3 \cdot 5$$:

$$2 \cdot 2 = 4$$

$$4 \cdot 3 = 12$$

$$12 \cdot 5 = 60$$

A fatoração está correta.

> 🔢 **Padrão:**  
> Cada número natural maior que 1 tem uma fatoração em primos que é única.

---

## NA VIDA REAL

Sites e aplicativos protegem suas senhas e seus dados usando números primos enormes — porque é fácil multiplicar primos, mas muito difícil descobrir quais primos formaram o número de novo.

---

## E A BÍBLIA NISSO?

<center>
*"Então, os presidentes e os sátrapas procuravam ocasião para acusar a Daniel a respeito do reino; mas não puderam achá-la, nem culpa alguma; porque ele era fiel, e não se achava nele nenhum erro nem culpa."* — **Daniel 6:4**
</center>

A integridade de Daniel não se quebrava em fatores menores — assim como um número primo não se decompõe em outros menores que 1 e ele mesmo.

> 💬 **Para Conversar:** O que sustenta uma pessoa íntegra mesmo quando muitos olhos tentam achar nela algum defeito?

---

## Simplificando

Primo é todo natural maior que 1 com exatamente dois divisores; composto tem mais de dois. Todo composto se decompõe de maneira única em fatores primos — essa é a identidade matemática do número.
