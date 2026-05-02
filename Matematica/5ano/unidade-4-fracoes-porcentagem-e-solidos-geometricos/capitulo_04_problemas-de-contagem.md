# CAPÍTULO 4 — PROBLEMAS DE CONTAGEM

## INTRODUÇÃO

No século IX, na Índia, o matemático Mahāvīra escreveu o livro *Gaṇita Sāra Saṅgraha*, com regras para resolver problemas de contagem — incluindo combinações de objetos. Essa ideia continua útil sempre que precisamos descobrir quantas combinações diferentes podem ser formadas com poucas peças.

> 💭 **Pense um pouco:**  
> Você consegue listar todos os conjuntos de roupa possíveis sem se perder?

---

## 1. Escolhas e Combinações

Quando juntamos uma peça de uma coleção com outra peça de outra coleção, formamos uma combinação.

### 1.1 Uma opção de cada coleção

Para formar uma combinação, escolhe-se uma opção de cada coleção disponível.

Veja só:

Com 3 camisetas e 2 calças, é possível formar várias combinações de roupa diferentes — basta escolher uma camiseta e uma calça por vez.

### 1.2 Listar com cuidado

Listar de cabeça funciona quando há poucas opções, mas com mais escolhas a contagem fica fácil de errar.

Veja o exemplo abaixo.

Camisetas: vermelha, azul, branca. Calças: jeans, preta.

Combinações: vermelha com jeans, vermelha com preta, azul com jeans, azul com preta, branca com jeans, branca com preta.

São 6 combinações no total.

---

## 2. Tabelas

A tabela de dupla entrada organiza as combinações em linhas e colunas.

### 2.1 Linhas e colunas

Em uma tabela de dupla entrada, uma coleção fica nas linhas e a outra nas colunas; cada cruzamento mostra uma combinação.

Veja só:

Para 3 camisetas (linhas) e 2 calças (colunas), a tabela tem 3 linhas e 2 colunas — e o total de cruzamentos é 6.

### 2.2 Cada célula é uma combinação

Cada célula da tabela representa uma combinação distinta — nenhuma se repete e nenhuma fica de fora.

Veja o exemplo abaixo.

Uma tabela com camisetas (vermelha, azul, branca) nas linhas e calças (jeans, preta) nas colunas tem 6 células — cada célula é uma das 6 combinações possíveis.

---

## 3. Diagramas de Árvore

O diagrama de árvore organiza as combinações em galhos.

### 3.1 Abrindo os galhos

A árvore começa em um ponto e abre galhos para cada opção da primeira coleção; depois, cada galho abre novos galhos para as opções da segunda coleção.

Veja só:

A primeira coleção (3 camisetas) abre 3 galhos.

Cada um desses 3 galhos abre 2 galhos novos — uma para cada calça.

No final, há 6 pontas, uma para cada combinação possível.

### 3.2 Conferindo todas as possibilidades

Contar as pontas da árvore mostra quantas combinações existem.

Veja o exemplo abaixo.

A árvore com 3 galhos iniciais e 2 galhos em cada ponto termina em 6 pontas — confirmando que existem 6 combinações.

---

## 4. Princípio Multiplicativo

O princípio multiplicativo é um atalho — em vez de listar tudo, basta multiplicar o número de opções de cada etapa.

### 4.1 Multiplicar opções

Para descobrir o total de combinações, multiplica-se o número de opções de cada etapa.

Veja só:

3 camisetas e 2 calças:

$$3 \cdot 2 = 6$$

São 6 combinações.

### 4.2 Duas ou três etapas

O princípio funciona para quantas etapas houver — basta multiplicar todas as quantidades.

Veja o exemplo abaixo.

Em um cardápio com 3 tipos de pão, 2 tipos de queijo e 2 tipos de recheio, o número de lanches diferentes é:

$$3 \cdot 2 \cdot 2 = 12$$

São 12 combinações de lanche.

> 🔢 **Padrão:**  
> O princípio multiplicativo conta sem repetir e sem omitir possibilidades.

---

## NA VIDA REAL

Cardápios escolares com várias opções de prato, salada e suco usam o mesmo princípio — multiplicar as opções de cada etapa mostra de quantos jeitos diferentes a refeição pode ser montada.

---

## E A BÍBLIA NISSO?

<center>
*"Quem é fiel no pouco também é fiel no muito; e quem é injusto no pouco também é injusto no muito."* — **Lucas 16:10**
</center>

Uma contagem confiável não pula nem repete possibilidades — cuidar do detalhe pequeno em cada etapa garante o resultado certo no fim.

> 💬 **Para Conversar:** Que detalhe pequeno pode mudar o resultado de uma contagem?

---

## Simplificando

Tabelas, diagramas de árvore e o princípio multiplicativo são três caminhos para contar combinações sem repetir nem omitir; basta multiplicar as opções de cada etapa para encontrar o total.
