<!--
Convertido automaticamente de Google Docs para Markdown.
Origem .gdoc: _legado/estrutura-antiga/Unidade 3-/Matemática 3/2ª Série (2026)/Unidade 3 - Binômio de Newton/Unidade 3 — Binômio de Newton.gdoc
Doc ID: 1dIxwgk5JB5LanWMOu4eczUlBQhFSTge-1ne1xP8QGpg
Convertido em: 2026-05-01T14:18:58-03:00
-->

# Capítulo 1 — O Triângulo de Pascal e o Desenvolvimento do Binômio

## Existe atalho para expandir \$(a + b)^{10}\$?

Na aula de Análise Combinatória, Pedro precisava expandir \$\$(x + 2)^5\$\$ para resolver um problema de geometria analítica. Ele começou pela distribuição: \$\$(x+2)(x+2)(x+2)(x+2)(x+2)\$\$... e logo percebeu que ia precisar de uma folha inteira só para os produtos intermediários.

Existe um padrão escondido nos coeficientes de \$\$(a+b)^n\$\$ — e um matemático francês do século XVII já havia mapeado esse padrão numa estrutura triangular antes mesmo de Newton formalizar o teorema.

💭 **Pense um pouco:** os coeficientes de \$\$(a+b)^2\$\$ são 1, 2, 1. Os de \$\$(a+b)^3\$\$ são 1, 3, 3, 1. O que você consegue prever para \$\$(a+b)^4\$\$?

## 1. O Triângulo de Pascal

Cada linha do triângulo de Pascal contém os coeficientes do desenvolvimento de \$\$(a+b)^n\$\$ para um valor de \$\$n\$\$.

### 1.1 Construção

A regra de formação tem três elementos:

- a linha 0 contém apenas o número 1;

- toda linha começa e termina com 1;

- cada número interior é a soma dos dois números diretamente acima dele.

Veja as primeiras seis linhas:

| **Linha (\$\$n\$\$)** | **Coeficientes** | **Corresponde a** |
|-----------------------|------------------|-------------------|
| 0                     | 1                | \$\$(a+b)^0\$\$   |
| 1                     | 1 1              | \$\$(a+b)^1\$\$   |
| 2                     | 1 2 1            | \$\$(a+b)^2\$\$   |
| 3                     | 1 3 3 1          | \$\$(a+b)^3\$\$   |
| 4                     | 1 4 6 4 1        | \$\$(a+b)^4\$\$   |
| 5                     | 1 5 10 10 5 1    | \$\$(a+b)^5\$\$   |

> 💡 **Você sabia?**\
> Pascal não foi o primeiro a estudar esse triângulo — ele já era conhecido na China no século XIII, mas foi Pascal quem sistematizou suas propriedades.

### 1.2 Relação com os números binomiais

Cada entrada do triângulo é um número binomial (combinação): o elemento da linha \$\$n\$\$ na posição \$\$k\$\$ (contando a partir de 0) é exatamente \$\$C(n, k)\$\$.

Veja a correspondência para \$\$n = 4\$\$:

\$\$C(4,0) = 1 \qquad C(4,1) = 4 \qquad C(4,2) = 6 \qquad C(4,3) = 4 \qquad C(4,4) = 1\$\$

Isso explica a regra de formação do triângulo: ela é a própria **Relação de Stifel**,

\$\$C(n,k) = C(n-1,,k-1) + C(n-1,,k)\$\$

que diz que qualquer combinação pode ser decomposta nas duas imediatamente acima na tabela de Pascal.

> ⏸️ **Pare e Pense:**\
> Por que \$\$C(n, 0) = 1\$\$ e \$\$C(n, n) = 1\$\$ para qualquer \$\$n\$\$? Isso explica por que toda linha começa e termina com 1.

## 2. O Desenvolvimento do Binômio

A fórmula de Newton expande \$\$(a+b)^n\$\$ como uma soma de \$\$n+1\$\$ termos, cujos coeficientes são os números binomiais da linha \$\$n\$\$:

\$\$(a + b)^n = \sum\_{k=0}^{n} C(n,k) \cdot a^{n-k} \cdot b^{k}\$\$

Cada termo tem a forma \$\$C(n,k) \cdot a^{n-k} \cdot b^k\$\$: o coeficiente binomial multiplica potências decrescentes de \$\$a\$\$ e crescentes de \$\$b\$\$.

### 2.1 Aplicando a fórmula

Veja o exemplo abaixo para \$\$(x + 2)^5\$\$, usando a linha 5 do triângulo (coeficientes: 1, 5, 10, 10, 5, 1):

\$\$T_1 = C(5,0)\cdot x^5 \cdot 2^0 = 1 \cdot x^5 \cdot 1 = x^5\$\$

\$\$T_2 = C(5,1)\cdot x^4 \cdot 2^1 = 5 \cdot x^4 \cdot 2 = 10x^4\$\$

\$\$T_3 = C(5,2)\cdot x^3 \cdot 2^2 = 10 \cdot x^3 \cdot 4 = 40x^3\$\$

\$\$T_4 = C(5,3)\cdot x^2 \cdot 2^3 = 10 \cdot x^2 \cdot 8 = 80x^2\$\$

\$\$T_5 = C(5,4)\cdot x^1 \cdot 2^4 = 5 \cdot x \cdot 16 = 80x\$\$

\$\$T_6 = C(5,5)\cdot x^0 \cdot 2^5 = 1 \cdot 1 \cdot 32 = 32\$\$

Portanto:

\$\$(x+2)^5 = x^5 + 10x^4 + 40x^3 + 80x^2 + 80x + 32\$\$

### 2.2 Binômio com sinal negativo

Quando o segundo termo é negativo, escreva o binômio como \$\$(a + (-b))^n\$\$ e aplique normalmente — os sinais dos termos alternam entre positivo e negativo.

Olhe o exemplo abaixo para \$\$(x - 3)^4\$\$, com \$\$b = -3\$\$:

\$\$T_1 = C(4,0)\cdot x^4 \cdot (-3)^0 = x^4\$\$

\$\$T_2 = C(4,1)\cdot x^3 \cdot (-3)^1 = 4 \cdot x^3 \cdot (-3) = -12x^3\$\$

\$\$T_3 = C(4,2)\cdot x^2 \cdot (-3)^2 = 6 \cdot x^2 \cdot 9 = 54x^2\$\$

\$\$T_4 = C(4,3)\cdot x^1 \cdot (-3)^3 = 4 \cdot x \cdot (-27) = -108x\$\$

\$\$T_5 = C(4,4)\cdot x^0 \cdot (-3)^4 = 1 \cdot 81 = 81\$\$

\$\$(x-3)^4 = x^4 - 12x^3 + 54x^2 - 108x + 81\$\$

> 📐 **Fazendo as Contas:**\
> Em \$\$(a - b)^n\$\$, os termos de índice \$\$k\$\$ par têm sinal positivo e os de \$\$k\$\$ ímpar têm sinal negativo — porque \$\$(-b)^k \> 0\$\$ quando \$\$k\$\$ é par.

## 3. Propriedades dos Coeficientes Binomiais

Os coeficientes de qualquer desenvolvimento têm três propriedades imediatas.

### 3.1 Simetria

Os coeficientes são simétricos em relação ao centro da linha:

\$\$C(n,k) = C(n,,n-k)\$\$

Isso significa que o \$\$k\$\$-ésimo coeficiente (contando da esquerda) é igual ao \$\$k\$\$-ésimo contando da direita. Em \$\$(a+b)^5\$\$: coeficientes 1, 5, 10, **10**, 5, 1 — o 4º e o 3º são iguais, o 5º e o 2º são iguais, e assim por diante.

### 3.2 Soma dos coeficientes

A soma de todos os coeficientes de \$\$(a+b)^n\$\$ é sempre \$\$2^n\$\$.

Para obter essa soma, basta substituir \$\$a = 1\$\$ e \$\$b = 1\$\$ na fórmula:

\$\$(1 + 1)^n = \sum\_{k=0}^{n} C(n,k) = 2^n\$\$

Veja só: em \$\$(a+b)^5\$\$, a soma é \$1 + 5 + 10 + 10 + 5 + 1 = 32 = 2^5\$.

### 3.3 Número de termos

O desenvolvimento de \$\$(a+b)^n\$\$ sempre tem \$\$n + 1\$\$ termos (de \$\$k = 0\$\$ até \$\$k = n\$\$).

| **\$\$n\$\$** | **Termos** |
|---------------|------------|
| 2             | 3          |
| 5             | 6          |
| 10            | 11         |

> 📊 **Nos Números:**\
> Uma questão clássica do FUVEST pede a soma dos coeficientes de \$\$(3x - 1)^8\$\$, que vale \$\$(3-1)^8 = 2^8 = 256\$\$ — substituindo \$\$x = 1\$\$.

## NA VIDA REAL

Compiladores de linguagens de programação usam a expansão binomial para simplificar expressões polinomiais em tempo de compilação, reduzindo o número de operações aritméticas no código executado.

## E A BÍBLIA NISSO?

> "O início da sabedoria é este: adquire a sabedoria; sim, com tudo o que possuis, adquire o entendimento." Provérbios 4:7

O triângulo de Pascal existe há séculos antes de Pascal, mas foi a sistematização — organizar o que já se sabia numa estrutura compreensível — que transformou um padrão isolado em ferramenta poderosa. Entender não é apenas conhecer o resultado: é enxergar a estrutura por trás dele.

Lembre-se de: **a ordem revela o que o caos esconde.** Os coeficientes binomiais pareciam arbitrários até que Pascal mostrou que seguem uma lei simples e elegante — assim como a sabedoria bíblica organiza princípios que já estão presentes na criação, mas precisam ser reconhecidos e compreendidos ("O coração do prudente adquire o conhecimento." Provérbios 18:15).

💬 **Para Conversar:** você já percebeu um padrão em algo do cotidiano que parecia caótico à primeira vista? Como foi o momento em que a estrutura ficou clara?

## Simplificando

O triângulo de Pascal é uma tabela dos números binomiais \$\$C(n,k)\$\$, construída pela Relação de Stifel, que fornece os coeficientes de \$\$(a+b)^n\$\$ de forma direta. A fórmula geral organiza esses coeficientes com potências decrescentes de \$\$a\$\$ e crescentes de \$\$b\$\$, gerando sempre \$\$n+1\$\$ termos com soma de coeficientes igual a \$\$2^n\$\$.

## Para não esquecer

- **Triângulo de Pascal:** linha \$\$n\$\$ contém os coeficientes \$\$C(n,0),,C(n,1),\ldots,C(n,n)\$\$, obtidos somando os dois elementos acima;

- **Desenvolvimento:** \$\$(a+b)^n = \sum\_{k=0}^{n} C(n,k)\cdot a^{n-k}\cdot b^k\$\$ — expoentes de \$\$a\$\$ decrescem, de \$\$b\$\$ crescem;

- **Soma e simetria:** soma dos coeficientes = \$\$2^n\$\$; coeficientes simétricos: \$\$C(n,k) = C(n,n-k)\$\$.

# Capítulo 2 — Termo Geral e Aplicações

## Para que desenvolver tudo se você só precisa de um termo?

Numa prova do FUVEST, o enunciado pedia apenas o coeficiente do termo em \$\$x^3\$\$ no desenvolvimento de \$\$(2x - 1)^7\$\$. Desenvolver os oito termos inteiros consumiria tempo — e aumentaria a chance de erro. Existe uma fórmula que localiza qualquer termo diretamente, sem passar pelos demais.

O termo geral é exatamente isso: um acesso direto a qualquer posição do desenvolvimento, sem percorrer o caminho inteiro.

💭 **Pense um pouco:** no desenvolvimento de \$\$(a+b)^{10}\$\$, quantos termos existem? E se você precisar apenas do 7º, como faria sem calcular os seis anteriores?

## 1. A Fórmula do Termo Geral

O \$\$(k+1)\$\$-ésimo termo do desenvolvimento de \$\$(a+b)^n\$\$ é:

\$\$T\_{k+1} = C(n,k) \cdot a^{n-k} \cdot b^k\$\$

onde \$\$k\$\$ assume valores inteiros de \$\$0\$\$ até \$\$n\$\$, e \$\$C(n,k) = \dfrac{n!}{k!,(n-k)!}\$\$.

O índice \$\$k+1\$\$ existe porque a contagem começa em \$\$k = 0\$\$ — o primeiro termo é \$\$T_1\$\$, correspondente a \$\$k = 0\$.

### 1.1 Localizando um termo pela posição

Para encontrar o \$\$p\$\$-ésimo termo, basta usar \$\$k = p - 1\$\$ na fórmula.

Veja o exemplo abaixo: determine o 4º termo do desenvolvimento de \$\$(x + 3)^6\$\$.

\$\$k = 4 - 1 = 3\$\$

\$\$T_4 = C(6,3) \cdot x^{6-3} \cdot 3^3\$\$

\$\$T_4 = 20 \cdot x^3 \cdot 27\$\$

\$\$T_4 = 540x^3\$\$

### 1.2 Localizando um termo pela condição no expoente

Quando o problema pede o termo em que uma variável tem expoente específico, iguale o expoente de \$\$a^{n-k}\$\$ (ou de \$\$b^k\$\$) ao valor pedido e resolva para \$\$k\$\$.

Olhe o exemplo abaixo: no desenvolvimento de \$\$(x^2 + y)^8\$\$, determine o termo em que o expoente de \$\$x\$\$ é 6.

O expoente de \$\$x\$\$ em cada termo é \$\$2(8-k)\$\$. Igualando a 6:

\$\$2(8 - k) = 6\$\$

\$\$8 - k = 3\$\$

\$\$k = 5\$\$

\$\$T_6 = C(8,5) \cdot (x^2)^3 \cdot y^5\$\$

\$\$T_6 = 56 \cdot x^6 \cdot y^5\$\$

\$\$T_6 = 56x^6y^5\$\$

> ⏸️ **Pare e Pense:**\
> No desenvolvimento de \$\$(x^3 + 2)^5\$\$, o expoente de \$\$x\$\$ no \$\$k\$\$-ésimo termo é \$\$3(5-k)\$\$. Que valor de \$\$k\$\$ torna esse expoente igual a 9?

## 2. Termo Médio

Quando \$\$n\$\$ é par, o desenvolvimento tem \$\$n + 1\$\$ termos — quantidade ímpar — e existe um único termo central, chamado **termo médio**.

O termo médio ocupa a posição \$\$\dfrac{n}{2} + 1\$\$, correspondente a \$\$k = \dfrac{n}{2}\$\$.

Veja o exemplo abaixo: encontre o termo médio de \$\$(a + b)^8\$\$.

\$\$n = 8 \Rightarrow k = \frac{8}{2} = 4\$\$

\$\$T_5 = C(8,4) \cdot a^4 \cdot b^4\$\$

\$\$T_5 = 70,a^4b^4\$\$

Quando \$\$n\$\$ é ímpar, o desenvolvimento tem \$\$n + 1\$\$ termos — quantidade par — e não existe um único central, mas dois termos centrais nas posições \$\$\dfrac{n+1}{2}\$\$ e \$\$\dfrac{n+3}{2}\$\$.

> 💡 **Você sabia?**\
> Em física, o termo médio do desenvolvimento de \$\$(1 + \varepsilon)^n\$\$ para \$\$\varepsilon\$\$ pequeno aparece em aproximações de expressões relativísticas e ópticas.

## 3. Soma dos Coeficientes

A soma dos coeficientes de um binômio é obtida substituindo as variáveis por 1. Para \$\$(a + b)^n\$\$ com \$\$a\$\$ e \$\$b\$\$ expressões em \$\$x\$\$, substitua \$\$x = 1\$\$.

Dois casos frequentes:

**Caso 1 — binômio com coeficientes numéricos puros.**

No desenvolvimento de \$\$(a+b)^n\$\$, os coeficientes binomiais somam \$\$2^n\$\$ (substituir \$\$a = b = 1\$\$).

**Caso 2 — binômio com expressões em \$\$x\$\$.**

Olhe o exemplo abaixo: determine a soma dos coeficientes de \$\$(3x - 2)^5\$\$.

Substituindo \$\$x = 1\$\$:

\$\$(3 \cdot 1 - 2)^5 = (1)^5 = 1\$\$

A soma dos coeficientes é \$\$1\$\$.

Olhe mais um exemplo: determine a soma dos coeficientes de \$\$(2x + 1)^6\$\$.

\$\$(2 \cdot 1 + 1)^6 = 3^6 = 729\$\$

> 📊 **Nos Números:**\
> Uma questão de vestibular pediu a soma dos coeficientes de \$\$(2x + y)^n = 243\$\$ — como \$\$243 = 3^5\$\$, basta resolver \$\$(2+1)^n = 3^n = 3^5\$\$, logo \$\$n = 5\$\$.

## 4. Cálculo de Potências Numéricas

O binômio de Newton permite calcular potências de números próximos a inteiros decompondo-os como soma ou diferença.

### 4.1 Estratégia

Escreva o número como \$\$(a + b)\$\$ com \$\$a\$\$ inteiro conveniente e \$\$b\$\$ pequeno. Em geral, desenvolve-se apenas os primeiros termos — os demais tornam-se desprezíveis para aproximações, ou o problema pede apenas o valor exato.

Veja o exemplo abaixo: calcule \$\$(10{,}1)^4\$\$ de forma exata.

Escreva \$\$10{,}1 = 10 + 0{,}1\$\$:

\$\$T_1 = C(4,0) \cdot 10^4 \cdot (0{,}1)^0 = 10000\$\$

\$\$T_2 = C(4,1) \cdot 10^3 \cdot (0{,}1)^1 = 4 \cdot 1000 \cdot 0{,}1 = 400\$\$

\$\$T_3 = C(4,2) \cdot 10^2 \cdot (0{,}1)^2 = 6 \cdot 100 \cdot 0{,}01 = 6\$\$

\$\$T_4 = C(4,3) \cdot 10^1 \cdot (0{,}1)^3 = 4 \cdot 10 \cdot 0{,}001 = 0{,}04\$\$

\$\$T_5 = C(4,4) \cdot 10^0 \cdot (0{,}1)^4 = 0{,}0001\$\$

\$\$(10{,}1)^4 = 10000 + 400 + 6 + 0{,}04 + 0{,}0001 = 10406{,}0401\$\$

### 4.2 Aplicação em problemas de vestibular

Um tipo clássico pede o algarismo das unidades (ou dezenas) de uma potência grande, como \$\$3^{100}\$\$ ou \$\$7^{50}\$\$. A estratégia é reescrever a base como \$\$(a + b)^n\$\$ com \$\$a\$\$ múltiplo de 10, de modo que todos os termos exceto o último sejam divisíveis por 10.

Olhe o exemplo abaixo: determine o algarismo das unidades de \$\$11^5\$\$.

Escreva \$\$11 = 10 + 1\$\$:

\$\$(10 + 1)^5 = C(5,0)\cdot10^5 + C(5,1)\cdot10^4 + \cdots + C(5,4)\cdot10^1 + C(5,5)\cdot1^5\$\$

Todos os termos exceto o último são múltiplos de 10. O último termo é:

\$\$C(5,5)\cdot 10^0 \cdot 1^5 = 1\$\$

O algarismo das unidades de \$\$11^5\$\$ é **1**.

> 🕵️ **Caso Real:**\
> Criptografias de chave pública (RSA) dependem de potências modulares de números muito grandes — o binômio de Newton fundamenta parte dos algoritmos de redução modular usados nesse processo.

## NA VIDA REAL

Engenheiros estruturais usam a expansão binomial para calcular deflexões em vigas sujeitas a cargas distribuídas, onde a expressão \$\$(1 + \varepsilon)^n\$\$ aparece nas equações de deformação para materiais com pequenas variações de rigidez.

## E A BÍBLIA NISSO?

> "Os planos bem elaborados levam à fartura; quem age precipitadamente acaba na pobreza." Provérbios 21:5

O termo geral existe justamente para evitar o trabalho desnecessário de desenvolver todo o binômio quando apenas um termo é necessário. Planejar bem — identificar o que realmente precisa ser feito antes de começar — é mais eficiente do que executar tudo de qualquer forma e filtrar o resultado no final.

Lembre-se de: **precisão e planejamento evitam retrabalho.** Usar a ferramenta certa para o problema certo, em vez de força bruta, é um princípio tanto matemático quanto bíblico — "o prudente examina bem os seus passos" (Provérbios 14:15).

💬 **Para Conversar:** você já resolveu algum problema de um jeito muito complicado e depois descobriu que havia um caminho direto? O que mudou na sua abordagem depois disso?

## Simplificando

O termo geral \$\$T\_{k+1} = C(n,k)\cdot a^{n-k}\cdot b^k\$\$ permite acessar qualquer termo do desenvolvimento sem expandir o binômio inteiro, bastando determinar \$\$k\$\$ pela posição desejada ou pela condição imposta ao expoente. Soma dos coeficientes, termo médio e cálculo de potências são aplicações diretas da mesma estrutura.

## Para não esquecer

- **Termo geral:** \$\$T\_{k+1} = C(n,k)\cdot a^{n-k}\cdot b^k\$\$, com \$\$k = 0, 1, \ldots, n\$\$ — para o \$\$p\$\$-ésimo termo, use \$\$k = p-1\$\$;

- **Termo médio:** existe (único) quando \$\$n\$\$ é par, na posição \$\$\frac{n}{2}+1\$\$, com \$\$k = \frac{n}{2}\$\$;

- **Soma dos coeficientes:** substitua as variáveis por 1 — para \$\$(a+b)^n\$\$ puro, a soma é \$\$2^n\$\$.
