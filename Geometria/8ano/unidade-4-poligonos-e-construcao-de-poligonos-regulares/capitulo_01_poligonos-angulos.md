# Capítulo 1 — Polígonos: Ângulos

## Como uma fórmula enxerga todos os ângulos?

Medir todos os ângulos de uma placa, de um ladrilho ou de um desenho resolve apenas aquele caso. Uma regra geral precisa explicar por que a soma aparece sempre do mesmo modo. A chave é decompor o polígono em triângulos.

> 💭 **Pense um pouco:**  
> O que muda quando você mede uma figura e quando você demonstra uma regra?

## 1. Do Triângulo ao Quadrilátero

O triângulo é a peça básica para entender somas de ângulos.

### 1.1 O triângulo como peça básica

Em todo triângulo, a soma dos ângulos internos é 180 graus.

$$S = 180^{\circ}$$

Essa propriedade é o ponto de partida porque outros polígonos podem ser divididos em triângulos.

![TikZ 1 — Triângulo como peça básica](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras/cap01_tikz-1.png)

Três ideias importam:

- cada triângulo contribui com 180 graus;
- decompor é dividir uma figura em partes menores;
- a soma total depende de quantos triângulos aparecem.

### 1.2 Por que o quadrilátero soma 360 graus

Um quadrilátero convexo pode ser dividido em 2 triângulos por uma diagonal.

$$S_i = 2 \cdot 180^{\circ}$$

$$S_i = 360^{\circ}$$

![TikZ 2 — Quadrilátero dividido em dois triângulos](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras/cap01_tikz-2.png)

Isso explica por que a soma interna de qualquer quadrilátero convexo é 360 graus.

## 2. A Fórmula Geral

A mesma decomposição funciona para polígonos com mais lados.

### 2.1 Dividindo um polígono em triângulos

Escolha um vértice e trace diagonais para os vértices que não são vizinhos dele. Em um polígono convexo, essas diagonais ficam dentro da figura.

![TikZ 3 — Pentágono e hexágono decompostos em triângulos](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras/cap01_tikz-3.png)

O padrão é:

- pentágono: 3 triângulos;
- hexágono: 4 triângulos;
- octógono: 6 triângulos;
- decágono: 8 triângulos.

### 2.2 De onde vem o n menos 2

Se $$n$$ representa o número de lados, então a quantidade de triângulos formados é $$n - 2$$.

A soma dos ângulos internos é:

$$S_i = (n - 2) \cdot 180^{\circ}$$

onde $$S_i$$ é a soma dos ângulos internos e $$n$$ é o número de lados.

> 👁️ **Observe:**  
> A fórmula não depende do tamanho do polígono, mas da quantidade de lados.

## 3. Aplicando a Fórmula

Aplicar a fórmula exige substituir primeiro e calcular depois.

### 3.1 Substituir antes de calcular

**Exemplo**

Calcule a soma dos ângulos internos de um hexágono.

$$n = 6$$

$$S_i = (n - 2) \cdot 180^{\circ}$$

$$S_i = (6 - 2) \cdot 180^{\circ}$$

$$S_i = 4 \cdot 180^{\circ}$$

$$S_i = 720^{\circ}$$

**Exemplo**

Calcule a soma dos ângulos internos de um decágono.

$$n = 10$$

$$S_i = (10 - 2) \cdot 180^{\circ}$$

$$S_i = 8 \cdot 180^{\circ}$$

$$S_i = 1440^{\circ}$$

### 3.2 Conferir se o resultado faz sentido

Quanto maior o número de lados, maior a quantidade de triângulos internos. Por isso, a soma interna deve crescer quando $$n$$ cresce.

Confira:

- pentágono: $$3 \cdot 180^{\circ} = 540^{\circ}$$;
- hexágono: $$4 \cdot 180^{\circ} = 720^{\circ}$$;
- octógono: $$6 \cdot 180^{\circ} = 1080^{\circ}$$.

## 4. Ângulos em Polígonos Regulares

Em polígonos regulares, a soma interna é dividida igualmente.

### 4.1 Ângulo interno regular

Um **polígono regular** tem todos os lados congruentes e todos os ângulos congruentes. Assim, a medida de cada ângulo interno é:

$$a_i = \frac{(n - 2) \cdot 180^{\circ}}{n}$$

**Exemplo**

Calcule o ângulo interno de um octógono regular.

$$n = 8$$

$$a_i = \frac{(8 - 2) \cdot 180^{\circ}}{8}$$

$$a_i = \frac{1080^{\circ}}{8}$$

$$a_i = 135^{\circ}$$

### 4.2 Ângulo externo regular

O **ângulo externo regular** pode ser visto como a volta completa dividida pelo número de lados.

$$a_e = \frac{360^{\circ}}{n}$$

Também vale:

$$a_i + a_e = 180^{\circ}$$

![TikZ 4 — Ângulo interno e externo em polígono regular](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras/cap01_tikz-4.png)

**Exemplo**

No octógono regular:

$$a_e = \frac{360^{\circ}}{8}$$

$$a_e = 45^{\circ}$$

$$135^{\circ} + 45^{\circ} = 180^{\circ}$$

---

## NA VIDA REAL

Placas de trânsito, ladrilhos, vitrais e peças de design usam polígonos com ângulos planejados. A fórmula permite prever medidas sem depender de medição manual. Isso torna desenhos técnicos e padrões geométricos mais confiáveis.

---

## E A BÍBLIA NISSO?

> *"Quem anda em integridade anda seguro, mas o que perverte os seus caminhos será conhecido."*  
> Provérbios 10.9

A fórmula da soma dos ângulos internos funciona porque segue uma estrutura constante no escopo estudado. A integridade também envolve uma regra interna que permanece quando as situações mudam.

- **Regra coerente sustenta confiança.** O número de lados muda, mas o procedimento correto preserva a verdade do resultado.

> 💬 **Para Conversar:**  
> Como uma regra confiável ajuda a conferir se uma resposta faz sentido?

---

## Simplificando

A soma dos ângulos internos de um polígono convexo vem da quantidade de triângulos formados dentro dele: $$n - 2$$. Em polígonos regulares, essa soma é dividida igualmente entre os vértices, e o ângulo externo é a volta completa dividida por $$n$$.

---

## Para não esquecer

- Todo triângulo soma 180 graus;
- Um polígono convexo de $$n$$ lados forma $$n - 2$$ triângulos;
- A soma interna é $$S_i = (n - 2) \cdot 180^{\circ}$$;
- O ângulo interno regular é a soma dividida por $$n$$;
- O ângulo externo regular é $$a_e = \frac{360^{\circ}}{n}$$.
