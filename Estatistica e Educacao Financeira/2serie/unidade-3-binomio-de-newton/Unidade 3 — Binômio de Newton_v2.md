<!--
Convertido automaticamente de Google Docs para Markdown.
Origem .gdoc: _legado/estrutura-antiga/Unidade 3-/Matemática 3/2ª Série (2026)/Unidade 3 - Binômio de Newton/Unidade 3 — Binômio de Newton_v2.gdoc
Doc ID: 1LMQ9KZ74aYZX6tXLmcH5N6ruLfaCR03FSh_piaJhE04
Convertido em: 2026-05-01T14:18:58-03:00
-->

# Capítulo 1 — O Triângulo de Pascal e o Desenvolvimento do Binômio

## Existe atalho para expandir [<img src="media/image83.png" style="width:0.58333in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%20%2B%20b)%5E%7B10%7D#0)?

Na aula de Análise Combinatória, Pedro precisava expandir [<img src="media/image208.png" style="width:0.54167in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(x%20%2B%202)%5E5#0) para resolver um problema de geometria analítica. Ele começou pela distribuição: [<img src="media/image8.png" style="width:2.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(x%2B2)(x%2B2)(x%2B2)(x%2B2)(x%2B2)#0)... e logo percebeu que ia precisar de uma folha inteira só para os produtos intermediários.

Existe um padrão escondido nos coeficientes de [<img src="media/image41.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5En#0) — e um matemático francês do século XVII já havia mapeado esse padrão numa estrutura triangular antes mesmo de Newton formalizar o teorema.

💭 **Pense um pouco:** os coeficientes de [<img src="media/image61.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E2#0) são 1, 2, 1. Os de [<img src="media/image174.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E3#0) são 1, 3, 3, 1. O que você consegue prever para [<img src="media/image45.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E4#0)?

## 1. O Triângulo de Pascal

Cada linha do triângulo de Pascal contém os coeficientes do desenvolvimento de [<img src="media/image41.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5En#0) para um valor de [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0).

### 1.1 Construção

A regra de formação tem três elementos:

- a linha 0 contém apenas o número 1;

- toda linha começa e termina com 1;

- cada número interior é a soma dos dois números diretamente acima dele.

Veja as primeiras seis linhas:

| **Linha (**[<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0)**)** | **Coeficientes** | **Corresponde a** |
|----|----|----|
| 0 | 1 | [<img src="media/image67.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E0#0) |
| 1 | 1 1 | [<img src="media/image136.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E1#0) |
| 2 | 1 2 1 | [<img src="media/image61.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E2#0) |
| 3 | 1 3 3 1 | [<img src="media/image174.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E3#0) |
| 4 | 1 4 6 4 1 | [<img src="media/image45.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E4#0) |
| 5 | 1 5 10 10 5 1 | [<img src="media/image52.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E5#0) |

> 💡 **Você sabia?**\
> Pascal não foi o primeiro a estudar esse triângulo — ele já era conhecido na China no século XIII, mas foi Pascal quem sistematizou suas propriedades.

### 1.2 Relação com os números binomiais

Cada entrada do triângulo é um número binomial: o elemento da linha [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0) na posição [<img src="media/image181.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0) (contando a partir de 0) é exatamente [<img src="media/image109.png" style="width:0.5in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(n%2Ck)#0), onde:

[<img src="media/image34.png" style="width:1.55556in;height:0.38889in" />](https://www.codecogs.com/eqnedit.php?latex=C(n%2Ck)%20%3D%20%5Cfrac%7Bn!%7D%7Bk!%2C(n-k)!%7D#0)

Veja a correspondência para [<img src="media/image226.png" style="width:0.38889in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=n%20%3D%204#0), posição a posição:

[<img src="media/image104.png" style="width:0.79167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(4%2C0)%20%3D%201#0)

[<img src="media/image40.png" style="width:0.79167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(4%2C1)%20%3D%204#0)

[<img src="media/image134.png" style="width:0.79167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(4%2C2)%20%3D%206#0)

[<img src="media/image198.png" style="width:0.79167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(4%2C3)%20%3D%204#0)

[<img src="media/image93.png" style="width:0.79167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(4%2C4)%20%3D%201#0)

Isso explica a regra de formação do triângulo — ela é a própria **Relação de Stifel**:

[<img src="media/image74.png" style="width:3.02778in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(n%2Ck)%20%3D%20C(n-1%2C%2Ck-1)%20%2B%20C(n-1%2C%2Ck)#0)

Cada combinação pode ser obtida somando as duas imediatamente acima na tabela de Pascal.

> ⏸️ **Pare e Pense:**\
> Por que [<img src="media/image60.png" style="width:0.80556in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(n%2C0)%20%3D%201#0) e [<img src="media/image105.png" style="width:0.81944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(n%2Cn)%20%3D%201#0) para qualquer [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0)? Isso explica por que toda linha começa e termina com 1.

## 2. O Desenvolvimento do Binômio

A fórmula de Newton expande [<img src="media/image41.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5En#0) como uma soma de [<img src="media/image221.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=n%2B1#0) termos, cujos coeficientes são os números binomiais da linha [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0):

[<img src="media/image120.png" style="width:2.29167in;height:0.45833in" />](https://www.codecogs.com/eqnedit.php?latex=(a%20%2B%20b)%5En%20%3D%20%5Csum_%7Bk%3D0%7D%5E%7Bn%7D%20C(n%2Ck)%20%5Ccdot%20a%5E%7Bn-k%7D%20%5Ccdot%20b%5E%7Bk%7D#0)

Cada termo tem a forma [<img src="media/image55.png" style="width:1.22222in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=C(n%2Ck)%20%5Ccdot%20a%5E%7Bn-k%7D%20%5Ccdot%20b%5Ek#0): o coeficiente binomial multiplica potências decrescentes de [<img src="media/image213.png" />](https://www.codecogs.com/eqnedit.php?latex=a#0) e crescentes de [<img src="media/image200.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=b#0).

### 2.1 Aplicando a fórmula

Veja o exemplo abaixo para [<img src="media/image208.png" style="width:0.54167in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(x%20%2B%202)%5E5#0), usando a linha 5 do triângulo (coeficientes: 1, 5, 10, 10, 5, 1):

[<img src="media/image137.png" style="width:1.43056in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_1%20%3D%20C(5%2C0)%5Ccdot%20x%5E5%20%5Ccdot%202%5E0#0)

[<img src="media/image116.png" style="width:0.95833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_1%20%3D%201%20%5Ccdot%20x%5E5%20%5Ccdot%201#0)

[<img src="media/image63.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_1%20%3D%20x%5E5#0)

[<img src="media/image59.png" style="width:1.43056in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_2%20%3D%20C(5%2C1)%5Ccdot%20x%5E4%20%5Ccdot%202%5E1#0)

[<img src="media/image124.png" style="width:0.95833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_2%20%3D%205%20%5Ccdot%20x%5E4%20%5Ccdot%202#0)

[<img src="media/image68.png" style="width:0.70833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_2%20%3D%2010x%5E4#0)

[<img src="media/image38.png" style="width:1.43056in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_3%20%3D%20C(5%2C2)%5Ccdot%20x%5E3%20%5Ccdot%202%5E2#0)

[<img src="media/image73.png" style="width:1.04167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_3%20%3D%2010%20%5Ccdot%20x%5E3%20%5Ccdot%204#0)

[<img src="media/image99.png" style="width:0.70833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_3%20%3D%2040x%5E3#0)

[<img src="media/image98.png" style="width:1.43056in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%20C(5%2C3)%5Ccdot%20x%5E2%20%5Ccdot%202%5E3#0)

[<img src="media/image78.png" style="width:1.04167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%2010%20%5Ccdot%20x%5E2%20%5Ccdot%208#0)

[<img src="media/image183.png" style="width:0.70833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%2080x%5E2#0)

[<img src="media/image30.png" style="width:1.44444in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%20C(5%2C4)%5Ccdot%20x%5E1%20%5Ccdot%202%5E4#0)

[<img src="media/image90.png" style="width:0.97222in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%205%20%5Ccdot%20x%20%5Ccdot%2016#0)

[<img src="media/image158.png" style="width:0.63889in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%2080x#0)

[<img src="media/image172.png" style="width:1.43056in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_6%20%3D%20C(5%2C5)%5Ccdot%20x%5E0%20%5Ccdot%202%5E5#0)

[<img src="media/image112.png" style="width:0.95833in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_6%20%3D%201%20%5Ccdot%201%20%5Ccdot%2032#0)

[<img src="media/image175.png" style="width:0.54167in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_6%20%3D%2032#0)

Portanto:

[<img src="media/image204.png" style="width:3.38889in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(x%2B2)%5E5%20%3D%20x%5E5%20%2B%2010x%5E4%20%2B%2040x%5E3%20%2B%2080x%5E2%20%2B%2080x%20%2B%2032#0)

### 2.2 Binômio com sinal negativo

Quando o segundo termo é negativo, escreva o binômio como [<img src="media/image108.png" style="width:0.80556in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%20%2B%20(-b))%5En#0) e aplique normalmente — os sinais dos termos alternam entre positivo e negativo.

Olhe o exemplo abaixo para [<img src="media/image192.png" style="width:0.55556in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(x%20-%203)%5E4#0), com [<img src="media/image229.png" style="width:0.5in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=b%20%3D%20-3#0):

[<img src="media/image212.png" style="width:1.70833in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_1%20%3D%20C(4%2C0)%5Ccdot%20x%5E4%20%5Ccdot%20(-3)%5E0#0)

[<img src="media/image117.png" style="width:0.95833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_1%20%3D%201%20%5Ccdot%20x%5E4%20%5Ccdot%201#0)

[<img src="media/image168.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_1%20%3D%20x%5E4#0)

[<img src="media/image131.png" style="width:1.69444in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_2%20%3D%20C(4%2C1)%5Ccdot%20x%5E3%20%5Ccdot%20(-3)%5E1#0)

[<img src="media/image201.png" style="width:1.20833in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_2%20%3D%204%20%5Ccdot%20x%5E3%20%5Ccdot%20(-3)#0)

[<img src="media/image179.png" style="width:0.83333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_2%20%3D%20-12x%5E3#0)

[<img src="media/image118.png" style="width:1.70833in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_3%20%3D%20C(4%2C2)%5Ccdot%20x%5E2%20%5Ccdot%20(-3)%5E2#0)

[<img src="media/image106.png" style="width:0.95833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_3%20%3D%206%20%5Ccdot%20x%5E2%20%5Ccdot%209#0)

[<img src="media/image7.png" style="width:0.70833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_3%20%3D%2054x%5E2#0)

[<img src="media/image36.png" style="width:1.70833in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%20C(4%2C3)%5Ccdot%20x%5E1%20%5Ccdot%20(-3)%5E3#0)

[<img src="media/image123.png" style="width:1.22222in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%204%20%5Ccdot%20x%20%5Ccdot%20(-27)#0)

[<img src="media/image10.png" style="width:0.86111in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%20-108x#0)

[<img src="media/image76.png" style="width:1.70833in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%20C(4%2C4)%5Ccdot%20x%5E0%20%5Ccdot%20(-3)%5E4#0)

[<img src="media/image176.png" style="width:0.75in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%201%20%5Ccdot%2081#0)

[<img src="media/image155.png" style="width:0.54167in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%2081#0)

[<img src="media/image173.png" style="width:2.94444in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(x-3)%5E4%20%3D%20x%5E4%20-%2012x%5E3%20%2B%2054x%5E2%20-%20108x%20%2B%2081#0)

> 📐 **Fazendo as Contas:**\
> Em [<img src="media/image233.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%20-%20b)%5En#0), os termos de índice [<img src="media/image181.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0) par têm sinal positivo e os de [<img src="media/image181.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0) ímpar têm sinal negativo — porque [<img src="media/image122.png" style="width:0.69444in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(-b)%5Ek%20%3E%200#0) quando [<img src="media/image181.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0) é par.

## 3. Propriedades dos Coeficientes Binomiais

Os coeficientes de qualquer desenvolvimento têm três propriedades imediatas.

### 3.1 Simetria

Os coeficientes são simétricos em relação ao centro da linha:

[<img src="media/image227.png" style="width:1.63889in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(n%2Ck)%20%3D%20C(n%2C%2Cn-k)#0)

Isso significa que o 1º e o último coeficiente são iguais, o 2º e o penúltimo são iguais, e assim por diante. Em [<img src="media/image52.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E5#0) — coeficientes 1, 5, 10, 10, 5, 1 — o 1º e o 6º valem 1, o 2º e o 5º valem 5, o 3º e o 4º valem 10.

### 3.2 Soma dos coeficientes

A soma de todos os coeficientes de [<img src="media/image41.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5En#0) é sempre [<img src="media/image153.png" style="width:0.13889in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%5En#0).

Para obter essa soma, basta substituir [<img src="media/image56.png" style="width:0.375in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=a%20%3D%201#0) e [<img src="media/image125.png" style="width:0.36111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=b%20%3D%201#0) na fórmula:

[<img src="media/image223.png" style="width:1.58333in;height:0.45833in" />](https://www.codecogs.com/eqnedit.php?latex=(1%20%2B%201)%5En%20%3D%20%5Csum_%7Bk%3D0%7D%5E%7Bn%7D%20C(n%2Ck)#0)

[<img src="media/image21.png" style="width:1.16667in;height:0.45833in" />](https://www.codecogs.com/eqnedit.php?latex=2%5En%20%3D%20%5Csum_%7Bk%3D0%7D%5E%7Bn%7D%20C(n%2Ck)#0)

Veja só: em [<img src="media/image52.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E5#0), a soma é [<img src="media/image111.png" style="width:2.44444in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=1%20%2B%205%20%2B%2010%20%2B%2010%20%2B%205%20%2B%201%20%3D%2032%20%3D%202%5E5#0).

### 3.3 Número de termos

O desenvolvimento de [<img src="media/image41.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5En#0) sempre tem [<img src="media/image221.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=n%20%2B%201#0) termos (de [<img src="media/image171.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%200#0) até [<img src="media/image5.png" style="width:0.40278in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%20n#0)).

| [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0) | **Termos** |
|----|----|
| 2 | 3 |
| 5 | 6 |
| 10 | 11 |

> 📊 **Nos Números:**\
> Uma questão clássica do FUVEST pede a soma dos coeficientes de [<img src="media/image72.png" style="width:0.63889in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(3x%20-%201)%5E8#0): substituindo [<img src="media/image88.png" style="width:0.375in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=x%20%3D%201#0), obtém-se [<img src="media/image85.png" style="width:1.40278in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(3-1)%5E8%20%3D%202%5E8%20%3D%20256#0).

## NA VIDA REAL

Compiladores de linguagens de programação usam a expansão binomial para simplificar expressões polinomiais em tempo de compilação, reduzindo o número de operações aritméticas no código executado.

## E A BÍBLIA NISSO?

> "O início da sabedoria é este: adquire a sabedoria; sim, com tudo o que possuis, adquire o entendimento." Provérbios 4:7

O triângulo de Pascal existe há séculos antes de Pascal, mas foi a sistematização — organizar o que já se sabia numa estrutura compreensível — que transformou um padrão isolado em ferramenta poderosa. Entender não é apenas conhecer o resultado: é enxergar a estrutura por trás dele.

Lembre-se de: **a ordem revela o que o caos esconde.** Os coeficientes binomiais pareciam arbitrários até que Pascal mostrou que seguem uma lei simples e elegante — assim como a sabedoria bíblica organiza princípios que já estão presentes na criação, mas precisam ser reconhecidos e compreendidos ("O coração do prudente adquire o conhecimento." Provérbios 18:15).

💬 **Para Conversar:** você já percebeu um padrão em algo do cotidiano que parecia caótico à primeira vista? Como foi o momento em que a estrutura ficou clara?

## Simplificando

O triângulo de Pascal é uma tabela dos números binomiais [<img src="media/image109.png" style="width:0.5in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(n%2Ck)#0), construída pela Relação de Stifel, que fornece os coeficientes de [<img src="media/image41.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5En#0) de forma direta. A fórmula geral organiza esses coeficientes com potências decrescentes de [<img src="media/image213.png" />](https://www.codecogs.com/eqnedit.php?latex=a#0) e crescentes de [<img src="media/image200.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=b#0), gerando sempre [<img src="media/image221.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=n%2B1#0) termos com soma de coeficientes igual a [<img src="media/image153.png" style="width:0.13889in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%5En#0).

## Para não esquecer

- **Triângulo de Pascal:** linha [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0) contém os coeficientes [<img src="media/image222.png" style="width:2in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(n%2C0)%2C%20C(n%2C1)%2C%20%5Cldots%2C%20C(n%2Cn)#0), obtidos somando os dois elementos acima;

- **Desenvolvimento:** [<img src="media/image120.png" style="width:2.29167in;height:0.45833in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5En%20%3D%20%5Csum_%7Bk%3D0%7D%5E%7Bn%7D%20C(n%2Ck)%5Ccdot%20a%5E%7Bn-k%7D%5Ccdot%20b%5Ek#0) — expoentes de [<img src="media/image213.png" />](https://www.codecogs.com/eqnedit.php?latex=a#0) decrescem, de [<img src="media/image200.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=b#0) crescem;

- **Soma e simetria:** soma dos coeficientes = [<img src="media/image153.png" style="width:0.13889in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%5En#0); coeficientes simétricos: [<img src="media/image4.png" style="width:1.56944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=C(n%2Ck)%20%3D%20C(n%2Cn-k)#0).

# Capítulo 2 — Termo Geral e Aplicações

## Para que desenvolver tudo se você só precisa de um termo?

Numa prova do FUVEST, o enunciado pedia apenas o coeficiente do termo em [<img src="media/image189.png" style="width:0.13889in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=x%5E3#0) no desenvolvimento de [<img src="media/image145.png" style="width:0.63889in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(2x%20-%201)%5E7#0). Desenvolver os oito termos inteiros consumiria tempo — e aumentaria a chance de erro. Existe uma fórmula que localiza qualquer termo diretamente, sem passar pelos demais.

O termo geral é exatamente isso: um acesso direto a qualquer posição do desenvolvimento, sem percorrer o caminho inteiro.

💭 **Pense um pouco:** no desenvolvimento de [<img src="media/image83.png" style="width:0.58333in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5E%7B10%7D#0), quantos termos existem? E se você precisar apenas do 7º, como faria sem calcular os seis anteriores?

## 1. A Fórmula do Termo Geral

O [<img src="media/image182.png" style="width:0.47222in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(k%2B1)#0)-ésimo termo do desenvolvimento de [<img src="media/image41.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5En#0) é:

[<img src="media/image31.png" style="width:1.79167in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_%7Bk%2B1%7D%20%3D%20C(n%2Ck)%20%5Ccdot%20a%5E%7Bn-k%7D%20%5Ccdot%20b%5Ek#0)

onde [<img src="media/image181.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0) assume valores inteiros de [<img src="media/image230.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=0#0) até [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0). O índice [<img src="media/image49.png" style="width:0.36111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=k%2B1#0) existe porque a contagem começa em [<img src="media/image171.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%200#0) — o primeiro termo é [<img src="media/image95.png" style="width:0.13889in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_1#0), correspondente a [<img src="media/image171.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%200#0).

### 1.1 Localizando um termo pela posição

Para encontrar o [<img src="media/image2.png" />](https://www.codecogs.com/eqnedit.php?latex=p#0)-ésimo termo, use [<img src="media/image195.png" style="width:0.66667in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%20p%20-%201#0) na fórmula.

Veja o exemplo abaixo: determine o 4º termo do desenvolvimento de [<img src="media/image211.png" style="width:0.54167in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(x%20%2B%203)%5E6#0).

[<img src="media/image195.png" style="width:0.66667in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%20p%20-%201#0)

[<img src="media/image121.png" style="width:0.66667in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%204%20-%201#0)

[<img src="media/image206.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%203#0)

[<img src="media/image220.png" style="width:1.58333in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%20C(6%2C3)%20%5Ccdot%20x%5E%7B6-3%7D%20%5Ccdot%203%5E3#0)

[<img src="media/image80.png" style="width:1.125in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%2020%20%5Ccdot%20x%5E3%20%5Ccdot%2027#0)

[<img src="media/image97.png" style="width:0.79167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%20540x%5E3#0)

### 1.2 Localizando um termo pela condição no expoente

Quando o problema pede o termo em que uma variável tem expoente específico, iguale o expoente de [<img src="media/image209.png" style="width:0.30556in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=a%5E%7Bn-k%7D#0) (ou de [<img src="media/image205.png" style="width:0.125in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=b%5Ek#0)) ao valor pedido e resolva para [<img src="media/image181.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0).

Olhe o exemplo abaixo: no desenvolvimento de [<img src="media/image65.png" style="width:0.625in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(x%5E2%20%2B%20y)%5E8#0), determine o termo em que o expoente de [<img src="media/image165.png" />](https://www.codecogs.com/eqnedit.php?latex=x#0) é 6.

O expoente de [<img src="media/image165.png" />](https://www.codecogs.com/eqnedit.php?latex=x#0) em cada termo é [<img src="media/image142.png" style="width:0.56944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=2(8-k)#0). Igualando a 6:

[<img src="media/image47.png" style="width:0.88889in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=2(8%20-%20k)%20%3D%206#0)

[<img src="media/image167.png" style="width:0.66667in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=8%20-%20k%20%3D%203#0)

[<img src="media/image231.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%205#0)

[<img src="media/image138.png" style="width:1.63889in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_6%20%3D%20C(8%2C5)%20%5Ccdot%20(x%5E2)%5E3%20%5Ccdot%20y%5E5#0)

[<img src="media/image66.png" style="width:1.09722in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_6%20%3D%2056%20%5Ccdot%20x%5E6%20%5Ccdot%20y%5E5#0)

[<img src="media/image89.png" style="width:0.86111in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_6%20%3D%2056x%5E6y%5E5#0)

> ⏸️ **Pare e Pense:**\
> No desenvolvimento de [<img src="media/image35.png" style="width:0.625in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(x%5E3%20%2B%202)%5E5#0), o expoente de [<img src="media/image165.png" />](https://www.codecogs.com/eqnedit.php?latex=x#0) no termo de índice [<img src="media/image181.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0) é [<img src="media/image157.png" style="width:0.56944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=3(5-k)#0). Que valor de [<img src="media/image181.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0) torna esse expoente igual a 9?

## 2. Termo Médio

Quando [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0) é par, o desenvolvimento tem [<img src="media/image221.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=n%20%2B%201#0) termos — quantidade ímpar — e existe um único termo central: o **termo médio**.

O termo médio ocupa a posição [<img src="media/image96.png" style="width:0.38889in;height:0.30556in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cdfrac%7Bn%7D%7B2%7D%20%2B%201#0), correspondente a [<img src="media/image3.png" style="width:0.41667in;height:0.30556in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%20%5Cdfrac%7Bn%7D%7B2%7D#0).

Veja o exemplo abaixo: encontre o termo médio de [<img src="media/image143.png" style="width:0.52778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(a%20%2B%20b)%5E8#0).

[<img src="media/image18.png" style="width:0.40278in;height:0.33333in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%20%5Cfrac%7B8%7D%7B2%7D#0)

[<img src="media/image190.png" style="width:0.375in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%204#0)

[<img src="media/image14.png" style="width:1.41667in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%20C(8%2C4)%20%5Ccdot%20a%5E%7B4%7D%20%5Ccdot%20b%5E%7B4%7D#0)

[<img src="media/image210.png" style="width:0.91667in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%2070%2Ca%5E4b%5E4#0)

Quando [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0) é ímpar, o desenvolvimento tem [<img src="media/image221.png" style="width:0.375in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=n%20%2B%201#0) termos — quantidade par — e não há um único central. Nesse caso, convencionalmente dizemos que **o desenvolvimento não possui termo médio**.

> 💡 **Você sabia?**\
> Em física, o termo médio do desenvolvimento de [<img src="media/image163.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(1%20%2B%20%5Cvarepsilon)%5En#0) para [<img src="media/image29.png" />](https://www.codecogs.com/eqnedit.php?latex=%5Cvarepsilon#0) pequeno aparece em aproximações de expressões relativísticas e ópticas.

## 3. Soma dos Coeficientes

A soma dos coeficientes de um binômio é obtida substituindo todas as variáveis por 1.

Dois casos frequentes:

**Caso 1 — binômio com coeficientes numéricos puros:** em [<img src="media/image41.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5En#0), a soma é [<img src="media/image153.png" style="width:0.13889in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%5En#0) (substituir [<img src="media/image12.png" style="width:0.66667in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=a%20%3D%20b%20%3D%201#0)).

**Caso 2 — binômio com expressões em** [<img src="media/image165.png" />](https://www.codecogs.com/eqnedit.php?latex=x#0)**:** substitua [<img src="media/image88.png" style="width:0.375in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=x%20%3D%201#0) (e quaisquer outras variáveis também por 1) e calcule o resultado.

Olhe o exemplo abaixo: determine a soma dos coeficientes de [<img src="media/image43.png" style="width:0.63889in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(3x%20-%202)%5E5#0).

Substituindo [<img src="media/image88.png" style="width:0.375in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=x%20%3D%201#0):

[<img src="media/image44.png" style="width:0.75in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(3%20%5Ccdot%201%20-%202)%5E5#0)

[<img src="media/image82.png" style="width:0.72222in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%20(3%20-%202)%5E5#0)

[<img src="media/image132.png" style="width:0.29167in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%201%5E5#0)

[<img src="media/image103.png" style="width:0.23611in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%201#0)

Olhe mais um exemplo: determine a soma dos coeficientes de [<img src="media/image54.png" style="width:0.625in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(2x%20%2B%201)%5E6#0).

[<img src="media/image161.png" style="width:0.75in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(2%20%5Ccdot%201%20%2B%201)%5E6#0)

[<img src="media/image178.png" style="width:0.30556in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%203%5E6#0)

[<img src="media/image24.png" style="width:0.41667in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%3D%20729#0)

> 📊 **Nos Números:**\
> Uma questão de vestibular pediu o [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0) tal que a soma dos coeficientes de [<img src="media/image39.png" style="width:0.65278in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(2x%20%2B%20y)%5En#0) é 243: substituindo [<img src="media/image79.png" style="width:0.69444in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=x%20%3D%20y%20%3D%201#0), obtém-se [<img src="media/image214.png" style="width:1.79167in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(2%2B1)%5En%20%3D%203%5En%20%3D%20243%20%3D%203%5E5#0), logo [<img src="media/image46.png" style="width:0.38889in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=n%20%3D%205#0).

## 4. Cálculo de Potências Numéricas

O binômio de Newton permite calcular potências de números próximos a inteiros decompondo-os como soma ou diferença.

### 4.1 Estratégia

Escreva o número como [<img src="media/image48.png" style="width:0.45833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%20%2B%20b)#0) com [<img src="media/image213.png" />](https://www.codecogs.com/eqnedit.php?latex=a#0) inteiro conveniente e [<img src="media/image200.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=b#0) pequeno. Em geral, desenvolve-se apenas os primeiros termos para aproximações, ou todos os termos quando o problema pede o valor exato.

Veja o exemplo abaixo: calcule [<img src="media/image144.png" style="width:0.45833in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(10%7B%2C%7D1)%5E4#0) de forma exata.

Escreva [<img src="media/image184.png" style="width:1.08333in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=10%7B%2C%7D1%20%3D%2010%20%2B%200%7B%2C%7D1#0):

[<img src="media/image187.png" style="width:1.77778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_1%20%3D%20C(4%2C0)%20%5Ccdot%2010%5E4%20%5Ccdot%20(0%7B%2C%7D1)%5E0#0)

[<img src="media/image141.png" style="width:1.20833in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_1%20%3D%201%20%5Ccdot%2010000%20%5Ccdot%201#0)

[<img src="media/image84.png" style="width:0.79167in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_1%20%3D%2010000#0)

[<img src="media/image128.png" style="width:1.76389in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_2%20%3D%20C(4%2C1)%20%5Ccdot%2010%5E3%20%5Ccdot%20(0%7B%2C%7D1)%5E1#0)

[<img src="media/image64.png" style="width:1.25in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_2%20%3D%204%20%5Ccdot%201000%20%5Ccdot%200%7B%2C%7D1#0)

[<img src="media/image215.png" style="width:0.625in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_2%20%3D%20400#0)

[<img src="media/image159.png" style="width:1.76389in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_3%20%3D%20C(4%2C2)%20%5Ccdot%2010%5E2%20%5Ccdot%20(0%7B%2C%7D1)%5E2#0)

[<img src="media/image70.png" style="width:1.25in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_3%20%3D%206%20%5Ccdot%20100%20%5Ccdot%200%7B%2C%7D01#0)

[<img src="media/image149.png" style="width:0.45833in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_3%20%3D%206#0)

[<img src="media/image225.png" style="width:1.77778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%20C(4%2C3)%20%5Ccdot%2010%5E1%20%5Ccdot%20(0%7B%2C%7D1)%5E3#0)

[<img src="media/image133.png" style="width:1.25in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%204%20%5Ccdot%2010%20%5Ccdot%200%7B%2C%7D001#0)

[<img src="media/image228.png" style="width:0.68056in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_4%20%3D%200%7B%2C%7D04#0)

[<img src="media/image19.png" style="width:1.77778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%20C(4%2C4)%20%5Ccdot%2010%5E0%20%5Ccdot%20(0%7B%2C%7D1)%5E4#0)

[<img src="media/image58.png" style="width:1.25in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%201%20%5Ccdot%201%20%5Ccdot%200%7B%2C%7D0001#0)

[<img src="media/image180.png" style="width:0.83333in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%200%7B%2C%7D0001#0)

[<img src="media/image188.png" style="width:3.02778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(10%7B%2C%7D1)%5E4%20%3D%2010000%20%2B%20400%20%2B%206%20%2B%200%7B%2C%7D04%20%2B%200%7B%2C%7D0001#0)

[<img src="media/image129.png" style="width:1.48611in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=(10%7B%2C%7D1)%5E4%20%3D%2010406%7B%2C%7D0401#0)

### 4.2 Algarismo das unidades de potências grandes

Um tipo clássico de vestibular pede o algarismo das unidades de uma potência como [<img src="media/image156.png" style="width:0.20833in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=11%5E5#0). A estratégia é reescrever a base como [<img src="media/image41.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%20%2B%20b)%5En#0) com [<img src="media/image213.png" />](https://www.codecogs.com/eqnedit.php?latex=a#0) múltiplo de 10 — todos os termos exceto o último serão divisíveis por 10 e não afetam as unidades.

Olhe o exemplo abaixo: determine o algarismo das unidades de [<img src="media/image156.png" style="width:0.20833in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=11%5E5#0).

Escreva [<img src="media/image50.png" style="width:0.81944in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=11%20%3D%2010%20%2B%201#0):

[<img src="media/image57.png" style="width:2.25in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_1%20%3D%20C(5%2C0)%5Ccdot%2010%5E5%20%5Ccdot%201%5E0%20%3D%20100000#0)

[<img src="media/image28.png" style="width:2.16667in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_2%20%3D%20C(5%2C1)%5Ccdot%2010%5E4%20%5Ccdot%201%5E1%20%3D%2050000#0)

[<img src="media/image191.png" style="height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cvdots#0)

[<img src="media/image232.png" style="width:1.91667in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_5%20%3D%20C(5%2C4)%5Ccdot%2010%5E1%20%5Ccdot%201%5E4%20%3D%2050#0)

[<img src="media/image22.png" style="width:1.81944in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_6%20%3D%20C(5%2C5)%5Ccdot%2010%5E0%20%5Ccdot%201%5E5%20%3D%201#0)

Todos os termos de [<img src="media/image95.png" style="width:0.13889in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_1#0) a [<img src="media/image162.png" style="width:0.13889in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_5#0) são múltiplos de 10 — não contribuem para o algarismo das unidades. O único termo que determina as unidades é:

[<img src="media/image199.png" style="width:0.45833in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=T_6%20%3D%201#0)

O algarismo das unidades de [<img src="media/image156.png" style="width:0.20833in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=11%5E5#0) é **1**.

> 🕵️ **Caso Real:**\
> Criptografias de chave pública (RSA) dependem de potências modulares de números muito grandes — o binômio de Newton fundamenta parte dos algoritmos de redução modular usados nesse processo.

## NA VIDA REAL

Engenheiros estruturais usam a expansão binomial para calcular deflexões em vigas sujeitas a cargas distribuídas, onde a expressão [<img src="media/image163.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(1%20%2B%20%5Cvarepsilon)%5En#0) aparece nas equações de deformação para materiais com pequenas variações de rigidez.

## E A BÍBLIA NISSO?

> "Os planos bem elaborados levam à fartura; quem age precipitadamente acaba na pobreza." Provérbios 21:5

O termo geral existe justamente para evitar o trabalho desnecessário de desenvolver todo o binômio quando apenas um termo é necessário. Planejar bem — identificar o que realmente precisa ser feito antes de começar — é mais eficiente do que executar tudo de qualquer forma e filtrar o resultado no final.

Lembre-se de: **precisão e planejamento evitam retrabalho.** Usar a ferramenta certa para o problema certo, em vez de força bruta, é um princípio tanto matemático quanto bíblico — "o prudente examina bem os seus passos" (Provérbios 14:15).

💬 **Para Conversar:** você já resolveu algum problema de um jeito muito complicado e depois descobriu que havia um caminho direto? O que mudou na sua abordagem depois disso?

## Simplificando

O termo geral [<img src="media/image31.png" style="width:1.79167in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_%7Bk%2B1%7D%20%3D%20C(n%2Ck)%5Ccdot%20a%5E%7Bn-k%7D%5Ccdot%20b%5Ek#0) permite acessar qualquer termo do desenvolvimento sem expandir o binômio inteiro, bastando determinar [<img src="media/image181.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=k#0) pela posição desejada ou pela condição imposta ao expoente. Soma dos coeficientes, termo médio e cálculo de potências são aplicações diretas da mesma estrutura.

## Para não esquecer

- **Termo geral:** [<img src="media/image31.png" style="width:1.79167in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=T_%7Bk%2B1%7D%20%3D%20C(n%2Ck)%5Ccdot%20a%5E%7Bn-k%7D%5Ccdot%20b%5Ek#0), com [<img src="media/image86.png" style="width:1.01389in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%200%2C%201%2C%20%5Cldots%2C%20n#0) — para o [<img src="media/image2.png" />](https://www.codecogs.com/eqnedit.php?latex=p#0)-ésimo termo, use [<img src="media/image195.png" style="width:0.66667in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%20p-1#0);

- **Termo médio:** existe (único) quando [<img src="media/image51.png" />](https://www.codecogs.com/eqnedit.php?latex=n#0) é par, na posição [<img src="media/image96.png" style="width:0.38889in;height:0.30556in" />](https://www.codecogs.com/eqnedit.php?latex=%5Cdfrac%7Bn%7D%7B2%7D%2B1#0), com [<img src="media/image3.png" style="width:0.41667in;height:0.30556in" />](https://www.codecogs.com/eqnedit.php?latex=k%20%3D%20%5Cdfrac%7Bn%7D%7B2%7D#0);

- **Soma dos coeficientes:** substitua todas as variáveis por 1 — para [<img src="media/image41.png" style="width:0.54167in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=(a%2Bb)%5En#0) puro, a soma é [<img src="media/image153.png" style="width:0.13889in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=2%5En#0).
