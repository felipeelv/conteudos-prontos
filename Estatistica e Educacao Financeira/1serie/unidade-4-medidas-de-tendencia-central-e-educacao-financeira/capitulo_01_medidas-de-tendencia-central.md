# Capítulo 1 — Medidas de Tendência Central

## Qual número representa melhor o conjunto?

Cinco amigos em um bar discutem a renda média do grupo. Quatro ganham entre R$ 3.000 e R$ 5.500; o quinto, sócio de empresa, ganha R$ 49.500. A média dá R$ 13.400 — e ninguém se reconhece nela.

> 💭 **Pense um pouco:**  
> Se a média sobe, todos melhoraram?

---

## 1. Média: Repartir a Soma

A média é a primeira medida de tendência central — útil em dados homogêneos, frágil em valores extremos.

### 1.1 Média aritmética simples

$$ \bar{x} = \frac{\sum x_i}{n} $$

> Bar (3.000, 4.000, 5.000, 5.500, 49.500): $$\bar{x} = 67.000 / 5 = 13.400$$ — número que não se aproxima de nenhuma renda real do conjunto.

### 1.2 Média ponderada

Considera importâncias (pesos) distintas:

$$ \bar{x}_p = \frac{\sum (x_i \cdot p_i)}{\sum p_i} $$

> Boletim — mensal (peso 2) 7,0; bimestral (peso 4) 6,5; seminário (peso 1) 9,0:

$$ \bar{x}_p = \frac{14 + 26 + 9}{7} = 7{,}0 $$

O peso 4 da bimestral puxou a média final.

> 💡 **Você sabia?**  
> Carl Friedrich Gauss desenvolveu o método dos mínimos quadrados, mostrando que a média aritmética minimiza a soma dos erros quadráticos.

---

## 2. Mediana e Moda

Quando há valores extremos, a média deixa de representar o grupo.

### 2.1 Mediana: o valor central

A **mediana** ($$Md$$) é o valor central do conjunto ordenado (rol). Posição $$P = (n+1)/2$$:

- **$$n$$ ímpar**: $$Md = x_{(n+1)/2}$$;
- **$$n$$ par**: $$Md = (x_{n/2} + x_{n/2+1})/2$$.

> Bar ($$n = 5$$): rol 3.000, 4.000, 5.000, 5.500, 49.500 → $$Md = 5.000$$ — bem mais próxima da maioria que a média de 13.400.

### 2.2 Moda e distribuição modal

A **moda** ($$Mo$$) é o valor que aparece com maior frequência:

- **amodal**: nenhum valor se destaca;
- **unimodal**: uma moda;
- **bimodal**: duas modas com mesma frequência;
- **multimodal**: três ou mais.

> {7, 8, 8, 9, 10}: moda 8 (unimodal). {6, 7, 7, 8, 9, 9}: modas 7 e 9 (bimodal).

---

## 3. Dados Agrupados

Quando os dados estão em classes (intervalos), a mediana exige interpolação.

### 3.1 Classe mediana e frequência acumulada

- **Classes**: intervalos;
- **Frequência** ($$f$$): quantos caem em cada classe;
- **Frequência acumulada** ($$F_{ac}$$): soma progressiva.

Calcule $$n/2$$ e procure a primeira classe cuja $$F_{ac}$$ atinge esse valor — é a **classe mediana**.

| Salário (R$) | $$f$$ | $$F_{ac}$$ |
|:---|:---:|:---:|
| 1.500 ⊢ 2.500 | 8 | 8 |
| 2.500 ⊢ 3.500 | 14 | 22 |
| 3.500 ⊢ 4.500 | 18 | 40 |
| 4.500 ⊢ 5.500 | 7 | 47 |
| 5.500 ⊢ 6.500 | 3 | 50 |

$$n = 50$$, $$n/2 = 25$$ → classe mediana 3.500 ⊢ 4.500.

### 3.2 Interpolação

$$ Md = L_i + \frac{(n/2 - F_{ant})}{f_{Md}} \cdot h $$

Onde $$L_i$$ é limite inferior da classe mediana, $$F_{ant}$$ a $$F_{ac}$$ anterior, $$f_{Md}$$ a frequência e $$h$$ a amplitude.

> $$Md = 3.500 + \frac{(25 - 22)}{18} \cdot 1.000 \approx 3.666{,}67$$.

---

## 4. Comparar para Interpretar

Cada medida conta uma parte da história — comparar as três produz interpretação honesta.

### 4.1 Outliers e assimetria

Um **outlier** é valor muito distante do padrão:

- **média**: muito sensível (puxa em direção ao extremo);
- **mediana**: pouco sensível (só posição);
- **moda**: independe de outliers.

Cauda longa:

- **assimetria positiva** (direita): $$\bar{x} > Md > Mo$$;
- **assimetria negativa** (esquerda): $$\bar{x} < Md < Mo$$;
- **simétrica**: $$\bar{x} \approx Md \approx Mo$$.

> 📊 **Nos Números:**  
> No Brasil, a renda mediana é cerca da metade da renda média — assimetria positiva, em que poucos ganham muito mais que a maioria.

### 4.2 Quando usar cada uma

- dados homogêneos, sem outliers → **média**;
- outliers ou cauda longa → **mediana**;
- valor mais comum → **moda**.

Não existe medida certa universal — existe medida adequada à pergunta.

---

## NA VIDA REAL

Quando uma reportagem noticia "a renda média subiu", a frase pode esconder concentração — a mediana costuma indicar melhor a renda do brasileiro típico.

---

## E A BÍBLIA NISSO?

> "O Senhor abomina balanças desonestas, mas os pesos exatos lhe são agradáveis." (Provérbios 11:1)

Integridade estatística é apresentar a medida que responde à pergunta, não a que sustenta a conclusão desejada.

- **Escolha a medida pelo que ela mostra, não pelo que ela esconde.** Apresentar média quando há outlier — sabendo que a mediana representaria melhor — é manipular a verdade dos dados (Provérbios 11:1).

> 💬 **Para Conversar:**  
> Em que situação você apresentaria uma média sabendo que a mediana contaria uma história diferente?

---

## Simplificando

Média, mediana e moda são três retratos do mesmo conjunto — escolher a medida certa é parte da interpretação honesta dos dados.

---

## Para não esquecer

- **Média ponderada:** soma dos valores multiplicados pelos pesos, dividida pela soma dos pesos;
- **Mediana:** valor central do conjunto ordenado; pouco sensível a outliers;
- **Assimetria:** quando há cauda longa, $$\bar{x}$$, $$Md$$ e $$Mo$$ se separam.
