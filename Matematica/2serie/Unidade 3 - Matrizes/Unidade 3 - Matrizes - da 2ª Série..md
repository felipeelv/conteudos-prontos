<!--
Convertido automaticamente de Google Docs para Markdown.
Origem .gdoc: _legado/estrutura-antiga/Unidade 3-/Matemática 1/2serie/Unidade 3 - Matrizes/Unidade 3 - Matrizes** da 2ª Série..gdoc
Doc ID: 1I6ffRu8ANnATQzzVuYJGRL6brpoQgj9_dbQ9vwo76vM
Convertido em: 2026-05-01T14:18:58-03:00
-->

# CAPÍTULO 1 — CONCEITOS E TIPOS DE MATRIZES

## INTRODUÇÃO

Tabelas organizam dados em linhas e colunas — preços, notas, coordenadas. A matemática formalizou essa estrutura com o conceito de **matriz**, criando uma linguagem própria para representar e operar sobre conjuntos de dados.

> 💭 **Pense um pouco:**\
> Ao ler uma tabela de notas com alunos nas linhas e disciplinas nas colunas, que informação cada posição carrega?

## 1. Definição de Matriz

Matriz é a formalização matemática de uma tabela retangular de números.

### Conceito e notação

Uma **matriz** é um conjunto de números reais dispostos em [<img src="media/image61.png" style="width:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=m#0) linhas e [<img src="media/image77.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0) colunas. Representação geral:

[<img src="media/image157.png" style="width:5.5in;height:0.30556in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Cbegin%7Bbmatrix%7D%20a_%7B11%7D%20%26%20a_%7B12%7D%20%26%20%5Ccdots%20%26%20a_%7B1n%7D%20%5C%20a_%7B21%7D%20%26%20a_%7B22%7D%20%26%20%5Ccdots%20%26%20a_%7B2n%7D%20%5C%20%5Cvdots%20%26%20%5Cvdots%20%26%20%5Cddots%20%26%20%5Cvdots%20%5C%20a_%7Bm1%7D%20%26%20a_%7Bm2%7D%20%26%20%5Ccdots%20%26%20a_%7Bmn%7D%20%5Cend%7Bbmatrix%7D#0)

O par [<img src="media/image91.png" style="width:0.44444in" />](https://www.codecogs.com/eqnedit.php?latex=m%20%5Ctimes%20n#0) é a **ordem** da matriz (lê-se "[<img src="media/image61.png" style="width:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=m#0) por [<img src="media/image77.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0)"). Uma matriz [<img src="media/image176.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%203#0) tem 2 linhas, 3 colunas e [<img src="media/image207.png" style="width:0.58333in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ccdot%203%20%3D%206#0) elementos.

Notações equivalentes:

- Letra maiúscula: [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0), [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0), [<img src="media/image23.png" style="width:0.16667in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=M#0)

- Com a ordem: [<img src="media/image120.png" style="width:0.38889in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=A_%7Bm%20%5Ctimes%20n%7D#0)

- Pela lei de formação: [<img src="media/image167.png" style="width:0.93056in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20(a_%7Bij%7D)_%7Bm%20%5Ctimes%20n%7D#0)

Veja o exemplo abaixo.

Dada a matriz abaixo, determine sua ordem e a quantidade total de elementos.

[<img src="media/image6.png" style="width:1.88889in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=M%20%3D%20%5Cbegin%7Bbmatrix%7D%204%20%26%20-1%20%26%200%20%5C%203%20%26%207%20%26%20-2%20%5Cend%7Bbmatrix%7D#0)

**Resolução:**

[<img src="media/image23.png" style="width:0.16667in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=M#0) tem 2 linhas e 3 colunas.

Ordem: [<img src="media/image176.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%203#0)

Quantidade de elementos: [<img src="media/image207.png" style="width:0.58333in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ccdot%203%20%3D%206#0)

**Resposta:** [<img src="media/image23.png" style="width:0.16667in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=M#0) é uma matriz de ordem [<img src="media/image176.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%203#0) com 6 elementos.

> ⚠️ **Atenção:**\
> Na ordem [<img src="media/image91.png" style="width:0.44444in" />](https://www.codecogs.com/eqnedit.php?latex=m%20%5Ctimes%20n#0), o primeiro número é sempre o de linhas e o segundo o de colunas — nunca o inverso.

## 2. Elementos e Lei de Formação

Cada número de uma matriz é identificado por sua posição: linha e coluna.

### Notação [<img src="media/image59.png" style="width:0.16667in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D#0)

O elemento [<img src="media/image59.png" style="width:0.16667in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D#0) ocupa a linha [<img src="media/image230.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=i#0) e a coluna [<img src="media/image41.png" style="height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=j#0). Na matriz

[<img src="media/image50.png" style="width:1.83333in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Cbegin%7Bbmatrix%7D%205%20%26%20-3%20%26%201%20%5C%200%20%26%208%20%26%20-4%20%5Cend%7Bbmatrix%7D#0)

temos:

- [<img src="media/image137.png" style="width:0.5in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7B11%7D%20%3D%205#0) (linha 1, coluna 1)

- [<img src="media/image25.png" style="width:0.63889in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7B12%7D%20%3D%20-3#0) (linha 1, coluna 2)

- [<img src="media/image102.png" style="width:0.5in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7B21%7D%20%3D%200#0) (linha 2, coluna 1)

- [<img src="media/image251.png" style="width:0.63889in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7B23%7D%20%3D%20-4#0) (linha 2, coluna 3)

### Lei de formação

Quando os elementos seguem uma regra que depende de [<img src="media/image230.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=i#0) e [<img src="media/image41.png" style="height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=j#0), a matriz é construída aplicando essa **lei de formação** a cada par [<img src="media/image136.png" style="width:0.30556in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(i%2C%20j)#0).

Veja só:

Construa a matriz [<img src="media/image4.png" style="width:1.02778in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20(a_%7Bij%7D)%7B2%20%5Ctimes%203%7D#0) *com* [<img src="media/image234.png" style="width:0.86111in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=a%7Bij%7D%20%3D%202i%20-%20j#0).

**Resolução:**

[<img src="media/image241.png" style="width:1.31944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7B11%7D%20%3D%202(1)%20-%201%20%3D%201#0)

[<img src="media/image194.png" style="width:1.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7B12%7D%20%3D%202(1)%20-%202%20%3D%200#0)

[<img src="media/image114.png" style="width:1.45833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7B13%7D%20%3D%202(1)%20-%203%20%3D%20-1#0)

[<img src="media/image9.png" style="width:1.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7B21%7D%20%3D%202(2)%20-%201%20%3D%203#0)

[<img src="media/image35.png" style="width:1.31944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7B22%7D%20%3D%202(2)%20-%202%20%3D%202#0)

[<img src="media/image44.png" style="width:1.31944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7B23%7D%20%3D%202(2)%20-%203%20%3D%201#0)

Logo:

[<img src="media/image31.png" style="width:1.70833in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%200%20%26%20-1%20%5C%203%20%26%202%20%26%201%20%5Cend%7Bbmatrix%7D#0)

**Resposta:** [<img src="media/image31.png" style="width:1.70833in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%200%20%26%20-1%20%5C%203%20%26%202%20%26%201%20%5Cend%7Bbmatrix%7D#0)

> 🔢 **Padrão:**\
> Na diagonal principal de qualquer matriz quadrada, [<img src="media/image121.png" style="width:0.33333in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=i%20%3D%20j#0) — o elemento [<img src="media/image192.png" style="width:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bii%7D#0) sempre está nessa diagonal.

## 3. Tipos Fundamentais de Matrizes

Matrizes são classificadas conforme sua estrutura.

### Matriz linha e matriz coluna

**Matriz linha:** uma única linha (ordem [<img src="media/image233.png" style="width:0.375in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=1%20%5Ctimes%20n#0)):

[<img src="media/image165.png" style="width:1.09722in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=L%20%3D%20%5Cbegin%7Bbmatrix%7D%203%20%26%20-1%20%26%205%20%5Cend%7Bbmatrix%7D#0)

**Matriz coluna:** uma única coluna (ordem [<img src="media/image219.png" style="width:0.41667in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=m%20%5Ctimes%201#0)):

[<img src="media/image174.png" style="width:1.02778in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=C%20%3D%20%5Cbegin%7Bbmatrix%7D%202%20%5C%200%20%5C%20-4%20%5Cend%7Bbmatrix%7D#0)

### Matriz quadrada

Uma matriz é **quadrada** quando [<img src="media/image37.png" style="width:0.45833in" />](https://www.codecogs.com/eqnedit.php?latex=m%20%3D%20n#0). Duas diagonais se destacam:

- **Diagonal principal:** elementos [<img src="media/image59.png" style="width:0.16667in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D#0) com [<img src="media/image121.png" style="width:0.33333in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=i%20%3D%20j#0)

- **Diagonal secundária:** elementos [<img src="media/image59.png" style="width:0.16667in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D#0) com [<img src="media/image125.png" style="width:0.93056in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=i%20%2B%20j%20%3D%20n%20%2B%201#0)

### Matriz nula

Todos os elementos iguais a zero:

[<img src="media/image143.png" style="width:1.58333in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=O%20%3D%20%5Cbegin%7Bbmatrix%7D%200%20%26%200%20%26%200%20%5C%200%20%26%200%20%26%200%20%5Cend%7Bbmatrix%7D#0)

### Matriz identidade

Matriz quadrada com 1 na diagonal principal e 0 nas demais posições:

[<img src="media/image34.png" style="width:2.18056in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=I_3%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%200%20%26%200%20%5C%200%20%26%201%20%26%200%20%5C%200%20%26%200%20%26%201%20%5Cend%7Bbmatrix%7D#0)

Lei de formação:

[<img src="media/image175.gif" style="width:1.38889in;height:0.22222in" />](http://www.texrendr.com/?eqn=a_%7Bij%7D%20%3D%20%5Cbegin%7Bcases%7D%201%2C%20%26%20i%20%3D%20j%20%5C%200%2C%20%26%20i%20%5Cneq%20j%20%5Cend%7Bcases%7D#0)

Olhe o exemplo abaixo.

Classifique as matrizes [<img src="media/image117.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=P#0), [<img src="media/image217.png" style="width:0.11111in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=Q#0) e [<img src="media/image56.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=R#0):

[<img src="media/image168.png" style="width:1.125in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=P%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%200%20%5C%200%20%26%201%20%5Cend%7Bbmatrix%7D#0)

[<img src="media/image186.png" style="width:0.98611in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=Q%20%3D%20%5Cbegin%7Bbmatrix%7D%200%20%26%200%20%26%200%20%5Cend%7Bbmatrix%7D#0)

[<img src="media/image195.png" style="width:1.02778in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=R%20%3D%20%5Cbegin%7Bbmatrix%7D%203%20%5C%20-2%20%5C%201%20%5Cend%7Bbmatrix%7D#0)

**Resolução:**

[<img src="media/image117.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=P#0) é quadrada de ordem 2, com 1 na diagonal principal e 0 fora dela — é a identidade [<img src="media/image84.png" style="width:0.125in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=I_2#0).

[<img src="media/image217.png" style="width:0.11111in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=Q#0) tem ordem [<img src="media/image244.png" style="width:0.34722in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=1%20%5Ctimes%203#0) — matriz linha. Como todos os elementos são zero, também é nula.

[<img src="media/image56.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=R#0) tem ordem [<img src="media/image46.png" style="width:0.34722in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=3%20%5Ctimes%201#0) — matriz coluna.

**Resposta:** [<img src="media/image231.png" style="width:0.47222in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=P%20%3D%20I_2#0) (identidade); [<img src="media/image217.png" style="width:0.11111in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=Q#0) é linha e nula; [<img src="media/image56.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=R#0) é coluna.

## 4. Transposta, Simétrica, Triangular e Oposta

Estes tipos decorrem de relações entre os elementos e suas posições.

### Matriz transposta

A **transposta** de [<img src="media/image120.png" style="width:0.38889in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=A_%7Bm%20%5Ctimes%20n%7D#0), notada [<img src="media/image109.png" style="width:0.20833in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=A%5ET#0), troca linhas por colunas: o elemento [<img src="media/image59.png" style="width:0.16667in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D#0) de [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) passa à posição [<img src="media/image127.png" style="width:0.19444in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=j%2C%20i#0) em [<img src="media/image109.png" style="width:0.20833in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=A%5ET#0).

Dada a matriz [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0):

[<img src="media/image13.png" style="width:1.48611in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%204%20%5C%202%20%26%205%20%5C%203%20%26%206%20%5Cend%7Bbmatrix%7D#0)

Sua transposta é:

[<img src="media/image111.png" style="width:1.66667in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%5ET%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%202%20%26%203%20%5C%204%20%26%205%20%26%206%20%5Cend%7Bbmatrix%7D#0)

Propriedade: [<img src="media/image212.png" style="width:0.76389in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(A%5ET)%5ET%20%3D%20A#0).

### Matriz simétrica

Uma matriz quadrada é **simétrica** quando [<img src="media/image184.png" style="width:0.55556in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=A%5ET%20%3D%20A#0), ou seja, [<img src="media/image236.png" style="width:0.58333in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D%20%3D%20a_%7Bji%7D#0) para todo [<img src="media/image80.png" style="width:0.19444in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=i%2C%20j#0):

[<img src="media/image39.png" style="width:2.15278in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=S%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%203%20%26%205%20%5C%203%20%26%202%20%26%204%20%5C%205%20%26%204%20%26%206%20%5Cend%7Bbmatrix%7D#0)

Elementos espelhados pela diagonal principal são iguais: [<img src="media/image199.png" style="width:0.93056in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=s_%7B12%7D%20%3D%20s_%7B21%7D%20%3D%203#0), [<img src="media/image94.png" style="width:0.91667in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=s_%7B13%7D%20%3D%20s_%7B31%7D%20%3D%205#0), [<img src="media/image145.png" style="width:0.93056in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=s_%7B23%7D%20%3D%20s_%7B32%7D%20%3D%204#0).

### Matrizes triangulares

Matrizes quadradas com zeros acima ou abaixo da diagonal principal.

**Triangular superior** — zeros abaixo da diagonal ([<img src="media/image225.png" style="width:0.48611in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D%20%3D%200#0) quando [<img src="media/image58.png" style="width:0.33333in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=i%20%3E%20j#0)):

[<img src="media/image107.png" style="width:2.30556in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=U%20%3D%20%5Cbegin%7Bbmatrix%7D%202%20%26%201%20%26%203%20%5C%200%20%26%205%20%26%20-1%20%5C%200%20%26%200%20%26%204%20%5Cend%7Bbmatrix%7D#0)

**Triangular inferior** — zeros acima da diagonal ([<img src="media/image225.png" style="width:0.48611in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D%20%3D%200#0) quando [<img src="media/image200.png" style="width:0.33333in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=i%20%3C%20j#0)):

[<img src="media/image224.png" style="width:2.29167in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=L%20%3D%20%5Cbegin%7Bbmatrix%7D%202%20%26%200%20%26%200%20%5C%201%20%26%205%20%26%200%20%5C%203%20%26%20-1%20%26%204%20%5Cend%7Bbmatrix%7D#0)

### Matriz oposta

A **oposta** de [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) é [<img src="media/image18.png" style="width:0.23611in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=-A#0), obtida trocando o sinal de cada elemento.

Dada:

[<img src="media/image156.png" style="width:1.25in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Cbegin%7Bbmatrix%7D%203%20%26%20-1%20%5C%200%20%26%202%20%5Cend%7Bbmatrix%7D#0)

Sua oposta:

[<img src="media/image206.png" style="width:1.51389in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=-A%20%3D%20%5Cbegin%7Bbmatrix%7D%20-3%20%26%201%20%5C%200%20%26%20-2%20%5Cend%7Bbmatrix%7D#0)

Veja o exemplo abaixo.

Dada a matriz [<img src="media/image23.png" style="width:0.16667in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=M#0) abaixo, determine [<img src="media/image16.png" style="width:0.25in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=M%5ET#0) e verifique se [<img src="media/image23.png" style="width:0.16667in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=M#0) é simétrica.

[<img src="media/image27.png" style="width:2.56944in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=M%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%205%20%26%20-2%20%5C%205%20%26%203%20%26%200%20%5C%20-2%20%26%200%20%26%207%20%5Cend%7Bbmatrix%7D#0)

**Resolução:**

Trocando linhas por colunas:

[<img src="media/image243.png" style="width:2.66667in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=M%5ET%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%205%20%26%20-2%20%5C%205%20%26%203%20%26%200%20%5C%20-2%20%26%200%20%26%207%20%5Cend%7Bbmatrix%7D#0)

Comparando elemento a elemento: [<img src="media/image210.png" style="width:0.66667in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=M%5ET%20%3D%20M#0).

**Resposta:** [<img src="media/image23.png" style="width:0.16667in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=M#0) é simétrica, pois [<img src="media/image210.png" style="width:0.66667in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=M%5ET%20%3D%20M#0).

## NA VIDA REAL

Plataformas de streaming armazenam avaliações de usuários em matrizes — linhas para usuários, colunas para filmes. Algoritmos de recomendação operam sobre essa matriz para sugerir conteúdos.

## E A BÍBLIA NISSO?

**"Pois Deus não é Deus de confusão, mas de paz." — 1 Coríntios 14:33**

Matrizes transformam dados soltos em estrutura — cada elemento tem lugar definido, cada posição carrega significado.

- **Ordem com propósito:** assim como cada [<img src="media/image59.png" style="width:0.16667in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D#0) ocupa uma posição única, cada pessoa tem um lugar no plano de Deus. "Pois somos feitura dele, criados em Cristo Jesus para as boas obras" (Efésios 2:10).

> 💬 **Para Conversar:** Onde a ordem pode trazer mais clareza na sua vida?

## Simplificando

Uma matriz é uma tabela de números com posição definida por linha e coluna, classificada conforme sua estrutura — ordem, diagonal, simetria ou padrão de zeros. Os tipos fundamentais (identidade, transposta, simétrica, triangular, nula, oposta) formam o vocabulário para as operações do próximo capítulo.

## Para não esquecer

- **Ordem** [<img src="media/image91.png" style="width:0.44444in" />](https://www.codecogs.com/eqnedit.php?latex=m%20%5Ctimes%20n#0)**:** linhas primeiro, colunas depois — total de [<img src="media/image139.png" style="width:0.36111in" />](https://www.codecogs.com/eqnedit.php?latex=m%20%5Ccdot%20n#0) elementos

- [<img src="media/image59.png" style="width:0.16667in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D#0)**:** linha [<img src="media/image230.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=i#0), coluna [<img src="media/image41.png" style="height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=j#0) — diagonal principal quando [<img src="media/image121.png" style="width:0.33333in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=i%20%3D%20j#0)

- **Transposta** [<img src="media/image109.png" style="width:0.20833in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=A%5ET#0)**:** linhas viram colunas — se [<img src="media/image184.png" style="width:0.55556in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=A%5ET%20%3D%20A#0), a matriz é simétrica

# CAPÍTULO 2 — OPERAÇÕES COM MATRIZES

## INTRODUÇÃO

Matrizes não servem apenas para armazenar dados — é possível somá-las, subtraí-las e multiplicá-las, extraindo novas informações a partir das originais. Essas operações têm regras próprias, algumas familiares e outras surpreendentes.

> 💭 **Pense um pouco:**\
> Se uma tabela registra vendas no primeiro semestre e outra no segundo, como combinar as duas para obter o total anual?

## 1. Igualdade de Matrizes

Duas matrizes são iguais quando coincidem em ordem e em cada um dos elementos.

### Definição

[<img src="media/image19.png" style="width:0.45833in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20B#0) se, e somente se:

- [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) e [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0) têm a mesma ordem [<img src="media/image91.png" style="width:0.44444in" />](https://www.codecogs.com/eqnedit.php?latex=m%20%5Ctimes%20n#0)

- [<img src="media/image164.png" style="width:0.56944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=a_%7Bij%7D%20%3D%20b_%7Bij%7D#0) para todo [<img src="media/image230.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=i#0) e [<img src="media/image41.png" style="height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=j#0)

Veja o exemplo abaixo.

Determine [<img src="media/image248.png" />](https://www.codecogs.com/eqnedit.php?latex=x#0) e [<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=y#0) para que as matrizes sejam iguais:

[<img src="media/image11.png" style="width:2.59722in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cbegin%7Bbmatrix%7D%202x%20%26%203%20%5C%20-1%20%26%20y%2B4%20%5Cend%7Bbmatrix%7D%20%3D%20%5Cbegin%7Bbmatrix%7D%206%20%26%203%20%5C%20-1%20%26%207%20%5Cend%7Bbmatrix%7D#0)

**Resolução:**

Igualando os elementos correspondentes:

[<img src="media/image10.png" style="width:0.45833in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2x%20%3D%206#0)

[<img src="media/image235.png" style="width:0.38889in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=x%20%3D%203#0)

[<img src="media/image158.png" style="width:0.66667in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=y%20%2B%204%20%3D%207#0)

[<img src="media/image86.png" style="width:0.375in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=y%20%3D%203#0)

**Resposta:** [<img src="media/image235.png" style="width:0.38889in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=x%20%3D%203#0) e [<img src="media/image86.png" style="width:0.375in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=y%20%3D%203#0).

## 2. Adição, Subtração e Multiplicação por Escalar

Estas três operações atuam elemento a elemento.

### Adição e subtração

A soma [<img src="media/image153.png" style="width:0.45833in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%2B%20B#0) e a diferença [<img src="media/image71.png" style="width:0.45833in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A%20-%20B#0) só existem se [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) e [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0) têm a mesma ordem:

[<img src="media/image240.png" style="width:1.52778in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(A%20%2B%20B)%7Bij%7D%20%3D%20a%7Bij%7D%20%2B%20b_%7Bij%7D#0)

[<img src="media/image14.png" style="width:1.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(A%20-%20B)%7Bij%7D%20%3D%20a%7Bij%7D%20-%20b_%7Bij%7D#0)

Propriedades da adição:

- **Comutativa:** [<img src="media/image189.png" style="width:1.13889in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%2B%20B%20%3D%20B%20%2B%20A#0)

- **Associativa:** [<img src="media/image33.png" style="width:2.05556in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(A%20%2B%20B)%20%2B%20C%20%3D%20A%20%2B%20(B%20%2B%20C)#0)

- **Elemento neutro:** [<img src="media/image250.png" style="width:0.79167in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%2B%20O%20%3D%20A#0)

- **Elemento oposto:** [<img src="media/image221.png" style="width:1.05556in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%2B%20(-A)%20%3D%20O#0)

### Multiplicação por escalar

Multiplicar [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) por um real [<img src="media/image130.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0) significa multiplicar cada elemento por [<img src="media/image130.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0):

[<img src="media/image141.png" style="width:1.125in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(kA)%7Bij%7D%20%3D%20k%20%5Ccdot%20a%7Bij%7D#0)

Propriedades ([<img src="media/image213.png" style="width:0.56944in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=k%2C%20p%20%5Cin%20%5Cmathbb%7BR%7D#0)):

- [<img src="media/image5.png" style="width:1.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=k(A%20%2B%20B)%20%3D%20kA%20%2B%20kB#0)

- [<img src="media/image22.png" style="width:1.47222in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(k%20%2B%20p)A%20%3D%20kA%20%2B%20pA#0)

- [<img src="media/image134.png" style="width:1.05556in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(kp)A%20%3D%20k(pA)#0)

- [<img src="media/image201.png" style="width:0.66667in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=1%20%5Ccdot%20A%20%3D%20A#0)

Veja só:

Dadas as matrizes [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) e [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0) abaixo, calcule [<img src="media/image162.png" style="width:0.54167in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=2A%20-%20B#0).

[<img src="media/image49.png" style="width:1.25in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%20-3%20%5C%204%20%26%200%20%5Cend%7Bbmatrix%7D#0)

[<img src="media/image73.png" style="width:1.33333in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=B%20%3D%20%5Cbegin%7Bbmatrix%7D%202%20%26%205%20%5C%20-1%20%26%203%20%5Cend%7Bbmatrix%7D#0)

**Resolução:**

- **Passo 1:** Calcular [<img src="media/image216.png" style="width:0.19444in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=2A#0).

[<img src="media/image8.png" style="width:1.33333in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=2A%20%3D%20%5Cbegin%7Bbmatrix%7D%202%20%26%20-6%20%5C%208%20%26%200%20%5Cend%7Bbmatrix%7D#0)

- **Passo 2:** Subtrair [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0).

[<img src="media/image232.png" style="width:3.125in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=2A%20-%20B%20%3D%20%5Cbegin%7Bbmatrix%7D%202-2%20%26%20-6-5%20%5C%208-(-1)%20%26%200-3%20%5Cend%7Bbmatrix%7D#0)

[<img src="media/image24.png" style="width:1.29167in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%20%5Cbegin%7Bbmatrix%7D%200%20%26%20-11%20%5C%209%20%26%20-3%20%5Cend%7Bbmatrix%7D#0)

**Resposta:** [<img src="media/image79.png" style="width:1.90278in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=2A%20-%20B%20%3D%20%5Cbegin%7Bbmatrix%7D%200%20%26%20-11%20%5C%209%20%26%20-3%20%5Cend%7Bbmatrix%7D#0)

> ⚠️ **Atenção:**\
> Só é possível somar ou subtrair matrizes de mesma ordem — não existe [<img src="media/image115.png" style="width:0.875in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=A_%7B2%20%5Ctimes%203%7D%20%2B%20B_%7B2%20%5Ctimes%202%7D#0).

## 3. Multiplicação de Matrizes

Multiplicar matrizes não é multiplicar elemento a elemento.

### Condição de existência

O produto [<img src="media/image98.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccdot%20B#0) só existe quando o número de colunas de [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) é igual ao número de linhas de [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0):

[<img src="media/image160.png" style="width:1.5in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=A_%7Bm%20%5Ctimes%20n%7D%20%5Ccdot%20B_%7Bn%20%5Ctimes%20p%7D%20%3D%20C_%7Bm%20%5Ctimes%20p%7D#0)

Se [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) é [<img src="media/image176.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%203#0) e [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0) é [<img src="media/image30.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=3%20%5Ctimes%204#0), o produto existe e resulta numa matriz [<img src="media/image128.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%204#0). Se [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0) fosse [<img src="media/image128.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%204#0), o produto não existiria.

### Cálculo do produto

Cada elemento [<img src="media/image48.png" style="width:0.15278in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=c_%7Bij%7D#0) é a soma dos produtos dos elementos da linha [<img src="media/image230.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=i#0) de [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) pelos da coluna [<img src="media/image41.png" style="height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=j#0) de [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0):

[<img src="media/image65.png" style="width:2.76389in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=c_%7Bij%7D%20%3D%20a_%7Bi1%7D%20%5Ccdot%20b_%7B1j%7D%20%2B%20a_%7Bi2%7D%20%5Ccdot%20b_%7B2j%7D%20%2B%20%5Ccdots%20%2B%20a_%7Bin%7D%20%5Ccdot%20b_%7Bnj%7D#0)

Olhe o exemplo abaixo.

Calcule [<img src="media/image98.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccdot%20B#0), sendo:

[<img src="media/image62.png" style="width:1.70833in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Cbegin%7Bbmatrix%7D%202%20%26%201%20%26%203%20%5C%200%20%26%20-1%20%26%204%20%5Cend%7Bbmatrix%7D#0)

[<img src="media/image237.png" style="width:1.70833in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=B%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%200%20%5C%20-2%20%26%203%20%5C%205%20%26%201%20%5Cend%7Bbmatrix%7D#0)

**Resolução:**

[<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) é [<img src="media/image176.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%203#0) e [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0) é [<img src="media/image66.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=3%20%5Ctimes%202#0): o produto existe e terá ordem [<img src="media/image208.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%202#0).

- **Elemento** [<img src="media/image247.png" style="width:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=c_%7B11%7D#0) (linha 1 × coluna 1):

[<img src="media/image172.png" style="width:1.83333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=c_%7B11%7D%20%3D%202(1)%20%2B%201(-2)%20%2B%203(5)#0)

[<img src="media/image204.png" style="width:1.29167in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%202%20-%202%20%2B%2015%20%3D%2015#0)

- **Elemento** [<img src="media/image182.png" style="width:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=c_%7B12%7D#0) (linha 1 × coluna 2):

[<img src="media/image32.png" style="width:1.70833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=c_%7B12%7D%20%3D%202(0)%20%2B%201(3)%20%2B%203(1)#0)

[<img src="media/image214.png" style="width:1.125in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%200%20%2B%203%20%2B%203%20%3D%206#0)

- **Elemento** [<img src="media/image42.png" style="width:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=c_%7B21%7D#0) (linha 2 × coluna 1):

[<img src="media/image142.png" style="width:2.09722in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=c_%7B21%7D%20%3D%200(1)%20%2B%20(-1)(-2)%20%2B%204(5)#0)

[<img src="media/image70.png" style="width:1.29167in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%200%20%2B%202%20%2B%2020%20%3D%2022#0)

- **Elemento** [<img src="media/image100.png" style="width:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=c_%7B22%7D#0) (linha 2 × coluna 2):

[<img src="media/image245.png" style="width:1.95833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=c_%7B22%7D%20%3D%200(0)%20%2B%20(-1)(3)%20%2B%204(1)#0)

[<img src="media/image51.png" style="width:1.125in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%200%20-%203%20%2B%204%20%3D%201#0)

Logo:

[<img src="media/image69.png" style="width:1.54167in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccdot%20B%20%3D%20%5Cbegin%7Bbmatrix%7D%2015%20%26%206%20%5C%2022%20%26%201%20%5Cend%7Bbmatrix%7D#0)

**Resposta:** [<img src="media/image69.png" style="width:1.54167in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccdot%20B%20%3D%20%5Cbegin%7Bbmatrix%7D%2015%20%26%206%20%5C%2022%20%26%201%20%5Cend%7Bbmatrix%7D#0)

### Propriedades da multiplicação

- **Associativa:** [<img src="media/image179.png" style="width:1.23611in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(AB)C%20%3D%20A(BC)#0)

- **Distributiva:** [<img src="media/image227.png" style="width:1.66667in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=A(B%20%2B%20C)%20%3D%20AB%20%2B%20AC#0)

- **Elemento neutro:** [<img src="media/image177.png" style="width:1.23611in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccdot%20I%20%3D%20I%20%5Ccdot%20A%20%3D%20A#0)

- **NÃO é comutativa:** em geral, [<img src="media/image193.png" style="width:0.73611in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=AB%20%5Cneq%20BA#0)

> 🔢 **Padrão:**\
> Se [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) é [<img src="media/image91.png" style="width:0.44444in" />](https://www.codecogs.com/eqnedit.php?latex=m%20%5Ctimes%20n#0) e [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0) é [<img src="media/image64.png" style="width:0.44444in" />](https://www.codecogs.com/eqnedit.php?latex=n%20%5Ctimes%20m#0), então [<img src="media/image68.png" style="width:0.25in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=AB#0) é [<img src="media/image147.png" style="width:0.48611in" />](https://www.codecogs.com/eqnedit.php?latex=m%20%5Ctimes%20m#0) e [<img src="media/image191.png" style="width:0.25in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=BA#0) é [<img src="media/image110.png" style="width:0.38889in" />](https://www.codecogs.com/eqnedit.php?latex=n%20%5Ctimes%20n#0) — ordens diferentes quando [<img src="media/image26.png" style="width:0.45833in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=m%20%5Cneq%20n#0).

## 4. Matriz Inversa

A matriz inversa é o equivalente matricial do inverso multiplicativo dos números reais.

### Conceito

Dada uma matriz quadrada [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) de ordem [<img src="media/image77.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0), sua **inversa** [<img src="media/image188.png" style="width:0.26389in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=A%5E%7B-1%7D#0) satisfaz:

[<img src="media/image154.png" style="width:1.66667in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccdot%20A%5E%7B-1%7D%20%3D%20A%5E%7B-1%7D%20%5Ccdot%20A%20%3D%20I_n#0)

Nem toda matriz quadrada possui inversa. Uma que possui é chamada **inversível** (ou **não singular**).

### Condição de existência

[<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) é inversível se, e somente se, [<img src="media/image123.png" style="width:0.77778in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cdet(A)%20%5Cneq%200#0). O cálculo geral de determinantes será estudado na unidade seguinte; por ora, usamos a fórmula para [<img src="media/image208.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%202#0).

### Cálculo para matrizes [<img src="media/image208.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%202#0)

Dada [<img src="media/image74.png" style="width:1.11111in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Cbegin%7Bbmatrix%7D%20a%20%26%20b%20%5C%20c%20%26%20d%20%5Cend%7Bbmatrix%7D#0), seu determinante é:

[<img src="media/image223.png" style="width:1.23611in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cdet(A)%20%3D%20ad%20-%20bc#0)

Se [<img src="media/image123.png" style="width:0.77778in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cdet(A)%20%5Cneq%200#0), a inversa é:

[<img src="media/image113.png" style="width:2.20833in;height:0.33333in" />](https://www.codecogs.com/eqnedit.php?latex=A%5E%7B-1%7D%20%3D%20%5Cfrac%7B1%7D%7Bad%20-%20bc%7D%20%5Cbegin%7Bbmatrix%7D%20d%20%26%20-b%20%5C%20-c%20%26%20a%20%5Cend%7Bbmatrix%7D#0)

Veja o exemplo abaixo.

Determine a inversa da matriz [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0):

[<img src="media/image118.png" style="width:1.125in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Cbegin%7Bbmatrix%7D%203%20%26%201%20%5C%205%20%26%202%20%5Cend%7Bbmatrix%7D#0)

**Resolução:**

- **Passo 1:** Calcular o determinante.

[<img src="media/image150.png" style="width:1.5in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cdet(A)%20%3D%203(2)%20-%201(5)#0)

[<img src="media/image96.png" style="width:0.83333in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%206%20-%205%20%3D%201#0)

Como [<img src="media/image198.png" style="width:1.08333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cdet(A)%20%3D%201%20%5Cneq%200#0), a inversa existe.

- **Passo 2:** Aplicar a fórmula.

[<img src="media/image222.png" style="width:1.77778in;height:0.33333in" />](https://www.codecogs.com/eqnedit.php?latex=A%5E%7B-1%7D%20%3D%20%5Cfrac%7B1%7D%7B1%7D%20%5Cbegin%7Bbmatrix%7D%202%20%26%20-1%20%5C%20-5%20%26%203%20%5Cend%7Bbmatrix%7D#0)

[<img src="media/image151.png" style="width:1.29167in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%20%5Cbegin%7Bbmatrix%7D%202%20%26%20-1%20%5C%20-5%20%26%203%20%5Cend%7Bbmatrix%7D#0)

- **Passo 3:** Verificar ([<img src="media/image249.png" style="width:0.83333in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccdot%20A%5E%7B-1%7D%20%3D%20I#0)).

Elemento [<img src="media/image43.png" style="width:0.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(1%2C1)#0): [<img src="media/image161.png" style="width:1.20833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=3(2)%20%2B%201(-5)%20%3D%201#0)

Elemento [<img src="media/image135.png" style="width:0.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(1%2C2)#0): [<img src="media/image60.png" style="width:1.22222in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=3(-1)%20%2B%201(3)%20%3D%200#0)

Elemento [<img src="media/image17.png" style="width:0.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(2%2C1)#0): [<img src="media/image246.png" style="width:1.22222in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=5(2)%20%2B%202(-5)%20%3D%200#0)

Elemento [<img src="media/image171.png" style="width:0.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(2%2C2)#0): [<img src="media/image169.png" style="width:1.20833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=5(-1)%20%2B%202(3)%20%3D%201#0)

[<img src="media/image180.png" style="width:2.06944in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccdot%20A%5E%7B-1%7D%20%3D%20%5Cbegin%7Bbmatrix%7D%201%20%26%200%20%5C%200%20%26%201%20%5Cend%7Bbmatrix%7D%20%3D%20I_2%20%5Ccheckmark#0)

**Resposta:** [<img src="media/image47.png" style="width:1.625in;height:0.20833in" />](https://www.codecogs.com/eqnedit.php?latex=A%5E%7B-1%7D%20%3D%20%5Cbegin%7Bbmatrix%7D%202%20%26%20-1%20%5C%20-5%20%26%203%20%5Cend%7Bbmatrix%7D#0)

> ⚠️ **Atenção:**\
> Se [<img src="media/image97.png" style="width:0.77778in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cdet(A)%20%3D%200#0), a matriz não possui inversa — é chamada **singular**.

## NA VIDA REAL

Redes de transporte público usam multiplicação de matrizes para calcular rotas: uma matriz armazena conexões entre estações, outra os tempos de percurso, e o produto gera a matriz de tempos totais entre quaisquer dois pontos.

## E A BÍBLIA NISSO?

**"Assim como o corpo é um e tem muitos membros, e todos os membros, sendo muitos, constituem um só corpo, assim também é Cristo." — 1 Coríntios 12:12**

Na multiplicação de matrizes, cada resultado depende de uma linha e uma coluna inteiras trabalhando juntas — nenhum elemento isolado produz o valor final.

- **Cooperação que gera resultado:** na matriz e na vida, o todo só funciona quando as partes colaboram. "O olho não pode dizer à mão: Não tenho necessidade de ti" (1 Coríntios 12:21).

> 💬 **Para Conversar:** Em que áreas da sua vida o resultado depende mais da cooperação do que do esforço individual?

## Simplificando

Matrizes podem ser somadas (mesma ordem, elemento a elemento), multiplicadas por escalar e multiplicadas entre si (linha por coluna, com condição de compatibilidade). A multiplicação não é comutativa, e apenas matrizes quadradas com determinante não nulo possuem inversa.

## Para não esquecer

- **Soma/subtração:** mesma ordem, elemento a elemento — escalar distribui sobre a soma

- **Produto** [<img src="media/image68.png" style="width:0.25in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=AB#0)**:** colunas de [<img src="media/image106.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=A#0) = linhas de [<img src="media/image178.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=B#0) — linha × coluna — não comutativo

- **Inversa** [<img src="media/image208.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%20%5Ctimes%202#0)**:** [<img src="media/image38.png" style="width:1.66667in;height:0.33333in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cfrac%7B1%7D%7Bad-bc%7D%5Cbegin%7Bbmatrix%7D%20d%20%26%20-b%20%5C%20-c%20%26%20a%20%5Cend%7Bbmatrix%7D#0) — só existe se [<img src="media/image78.png" style="width:0.81944in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=ad%20-%20bc%20%5Cneq%200#0)
