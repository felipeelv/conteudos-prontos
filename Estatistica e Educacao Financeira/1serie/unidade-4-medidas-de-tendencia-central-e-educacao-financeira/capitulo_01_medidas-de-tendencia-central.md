# Capítulo 1 — Medidas de Tendência Central

## Qual número representa melhor o conjunto?

Final de ano, cinco amigos se encontram para comemorar em um bar. Em algum momento, surge a pergunta: "qual é a renda média do nosso grupo?". Quatro deles ganham entre R$ 3.000 e R$ 5.500 por mês, mas o quinto — sócio de uma empresa — ganha R$ 49.500. A média aritmética dá pouco mais de R$ 13.000 e ninguém se reconhece nela. Antes de responder, vem a pergunta estatística: a média conta a verdade desse grupo, ou só uma parte distorcida dela?

> 💭 **Pense um pouco:**  
> Se a média sobe, todos melhoraram?

---

## 1. Média: Repartir a Soma

A média aritmética é a primeira medida de tendência central — útil quando os dados são homogêneos, frágil quando há valores extremos.

### 1.1 Média aritmética simples

A **média aritmética simples** ($$\bar{x}$$) é a soma dos valores dividida pela quantidade de valores:

$$ \bar{x} = \frac{x_1 + x_2 + \ldots + x_n}{n} = \frac{\sum x_i}{n} $$

Onde $$\bar{x}$$ é a média; $$x_i$$ representa cada valor do conjunto; e $$n$$ é a quantidade total de valores. O símbolo $$\sum$$ (somatório) compacta a notação da soma de todos os termos.

> Aplicando à mesa do bar: rendas de R$ 3.000, R$ 4.000, R$ 5.000, R$ 5.500 e R$ 49.500.

$$ \bar{x} = \frac{3000 + 4000 + 5000 + 5500 + 49500}{5} $$

$$ \bar{x} = \frac{67000}{5} $$

$$ \bar{x} = 13400 $$

A média do grupo é R$ 13.400 — número que não se aproxima de nenhuma renda real do conjunto.

### 1.2 Média ponderada e pesos

A **média ponderada** ($$\bar{x}_p$$) considera que diferentes valores podem ter importâncias (pesos) distintas:

$$ \bar{x}_p = \frac{x_1 \cdot p_1 + x_2 \cdot p_2 + \ldots + x_k \cdot p_k}{p_1 + p_2 + \ldots + p_k} = \frac{\sum (x_i \cdot p_i)}{\sum p_i} $$

Onde $$x_i$$ é cada valor; $$p_i$$ é o peso correspondente; e o denominador é a soma de todos os pesos.

Veja só: um boletim com avaliações de pesos diferentes — prova mensal (peso 2), prova bimestral (peso 4) e seminário (peso 1). As notas foram 7,0; 6,5; e 9,0 respectivamente.

$$ \bar{x}_p = \frac{7{,}0 \cdot 2 + 6{,}5 \cdot 4 + 9{,}0 \cdot 1}{2 + 4 + 1} $$

$$ \bar{x}_p = \frac{14 + 26 + 9}{7} $$

$$ \bar{x}_p = \frac{49}{7} $$

$$ \bar{x}_p = 7{,}0 $$

A média ponderada é 7,0 — diferente da média simples das três notas (que daria aproximadamente 7,5). O peso da prova bimestral compensou a nota mais baixa.

> 💡 **Você sabia?**  
> No início do século XIX, Carl Friedrich Gauss desenvolveu o método dos mínimos quadrados, mostrando que a média aritmética é a estimativa que minimiza a soma dos erros quadráticos.

---

## 2. Mediana e Moda

Quando os dados têm valores extremos, a média deixa de representar bem o grupo — outras medidas podem ser mais honestas.

### 2.1 Ordenar para encontrar o centro

A **mediana** ($$Md$$) é o valor central de um conjunto ordenado — ela divide o **rol** (lista ordenada) em duas metades iguais.

A posição central de um conjunto com $$n$$ valores é:

$$ P = \frac{n+1}{2} $$

Quando $$n$$ é **ímpar**, a mediana é o valor que ocupa a posição $$P$$:

$$ Md = x_{\frac{n+1}{2}} $$

Quando $$n$$ é **par**, a mediana é a média dos dois valores centrais:

$$ Md = \frac{x_{\frac{n}{2}} + x_{\frac{n}{2}+1}}{2} $$

> Voltando à mesa do bar ($$n = 5$$): rendas em ordem crescente — R$ 3.000, R$ 4.000, R$ 5.000, R$ 5.500, R$ 49.500.

A posição central é $$P = (5+1)/2 = 3$$ — o terceiro valor da lista ordenada.

$$ Md = 5000 $$

A mediana é R$ 5.000 — bem mais próxima da renda da maioria do grupo do que a média de R$ 13.400.

### 2.2 Frequência, moda e tipos de distribuição modal

A **moda** ($$Mo$$) é o valor (ou os valores) que aparece(m) com maior frequência no conjunto — não exige cálculo, apenas contagem.

Conforme a quantidade de modas, classifica-se a distribuição:

- **amodal**: nenhum valor se destaca em frequência;
- **unimodal**: uma única moda;
- **bimodal**: duas modas com mesma frequência máxima;
- **multimodal**: três ou mais modas.

Em {7, 8, 8, 9, 10}, a moda é 8 — distribuição unimodal. Em {6, 7, 7, 8, 9, 9}, há duas modas (7 e 9) — distribuição bimodal.

> ⏸️ **Pare e Pense:**  
> Se em um grupo a média é R$ 13.400 e a mediana é R$ 5.000, qual número você usaria para descrever "a renda do grupo" — e por quê?

---

## 3. Dados Agrupados

Quando os dados estão organizados em classes (intervalos), a mediana exige um cálculo por interpolação dentro da classe central.

### 3.1 Classe mediana e frequência acumulada

Em dados agrupados, os valores individuais são substituídos por **classes** (intervalos) e suas **frequências** ($$f$$). A **frequência acumulada** ($$F_{ac}$$) é a soma progressiva das frequências, classe a classe.

Para localizar a mediana, calcula-se $$n/2$$ e procura-se a primeira classe cuja frequência acumulada atinge ou ultrapassa esse valor — é a **classe mediana**.

Veja o exemplo: 50 funcionários distribuídos por faixa salarial.

| Salário (R$) | Frequência ($$f$$) | Frequência acumulada ($$F_{ac}$$) |
|:---|:---:|:---:|
| 1.500 ⊢ 2.500 | 8 | 8 |
| 2.500 ⊢ 3.500 | 14 | 22 |
| 3.500 ⊢ 4.500 | 18 | 40 |
| 4.500 ⊢ 5.500 | 7 | 47 |
| 5.500 ⊢ 6.500 | 3 | 50 |

Como $$n = 50$$, temos $$n/2 = 25$$. A primeira classe cuja frequência acumulada atinge 25 é a terceira (3.500 ⊢ 4.500) — essa é a **classe mediana**.

### 3.2 Interpolação da mediana

A mediana em dados agrupados é estimada por interpolação dentro da classe mediana:

$$ Md = L_i + \frac{(n/2 - F_{ant})}{f_{Md}} \cdot h $$

Onde $$L_i$$ é o limite inferior da classe mediana; $$F_{ant}$$ é a frequência acumulada da classe imediatamente anterior; $$f_{Md}$$ é a frequência da classe mediana; e $$h$$ é a amplitude (largura) da classe.

Aplicando à tabela acima — classe mediana 3.500 ⊢ 4.500:

- $$L_i = 3.500$$
- $$F_{ant} = 22$$
- $$f_{Md} = 18$$
- $$h = 1.000$$

$$ Md = 3500 + \frac{(25 - 22)}{18} \cdot 1000 $$

$$ Md = 3500 + \frac{3}{18} \cdot 1000 $$

$$ Md = 3500 + 166{,}67 $$

$$ Md \approx 3666{,}67 $$

A mediana estimada é aproximadamente R$ 3.666,67 — valor que divide os 50 funcionários em duas metades.

> 📐 **Fazendo as Contas:**  
> Mediana de 30 valores ordenados ($$n = 30$$, par): $$Md = (x_{15} + x_{16}) / 2$$.

---

## 4. Comparar para Interpretar

Cada medida conta uma parte da história — comparar as três é o que produz interpretação honesta dos dados.

### 4.1 Outliers e assimetria

Um **outlier** é um valor muito distante do padrão geral do conjunto, e ele afeta as três medidas de tendência central de formas diferentes:

- **média**: muito sensível a outliers (eles puxam o valor em direção ao extremo);
- **mediana**: pouco sensível (depende apenas da posição, não da magnitude);
- **moda**: independe de outliers (depende só de repetição).

Quando a distribuição tem **cauda longa**, as três medidas se ordenam de forma previsível:

- assimetria positiva (cauda à direita): $$\bar{x} > Md > Mo$$;
- assimetria negativa (cauda à esquerda): $$\bar{x} < Md < Mo$$;
- distribuição simétrica: $$\bar{x} \approx Md \approx Mo$$.

> 📊 **Nos Números:**  
> No Brasil, a renda domiciliar mediana é cerca da metade da renda média — diferença típica de assimetria positiva, em que poucos ganham muito mais que a maioria.

### 4.2 Quando usar média, mediana ou moda

Antes de escolher uma medida, faça a verificação:

- os dados são homogêneos, sem outliers? → **média** comunica bem o grupo;
- há outliers ou cauda longa na distribuição? → **mediana** é mais representativa;
- a pergunta é sobre o valor mais comum? → **moda** responde diretamente.

Não existe medida certa universal — existe medida adequada à pergunta.

---

## NA VIDA REAL

Quando uma reportagem noticia que "a renda média da população subiu", a frase pode esconder concentração: a mediana costuma indicar melhor a renda do brasileiro típico. A escolha da medida estatística é uma decisão editorial — e tem efeito direto sobre como o leitor entende a realidade.

---

## E A BÍBLIA NISSO?

> "O Senhor abomina balanças desonestas, mas os pesos exatos lhe são agradáveis." (Provérbios 11:1)

Integridade estatística é apresentar a medida que responde à pergunta, não a que sustenta a conclusão desejada. Trocar mediana por média (ou o contrário) sem justificar o motivo é uma forma sofisticada de quebrar a balança.

- **Escolha a medida pelo que ela mostra, não pelo que ela esconde.** Apresentar média quando há outlier — sabendo que a mediana representaria melhor o grupo — é manipular a verdade dos dados (Provérbios 11:1).

> 💬 **Para Conversar:**  
> Em que situação você apresentaria uma média sabendo que a mediana contaria uma história diferente?

---

## Simplificando

Média, mediana e moda são três retratos do mesmo conjunto, e cada um responde a uma pergunta diferente. Escolher a medida certa é parte da interpretação honesta dos dados.

---

## Para não esquecer

- **Média ponderada:** soma dos valores multiplicados pelos pesos, dividida pela soma dos pesos;
- **Mediana:** valor central do conjunto ordenado; pouco sensível a outliers;
- **Assimetria:** quando há cauda longa, $$\bar{x}$$, $$Md$$ e $$Mo$$ se separam — sinal para investigar antes de concluir.
