# Capítulo 1 — Classificação e Propriedades Gerais

## Uma figura pode ter várias identidades?

Uma janela retangular do colégio não é apenas um retângulo: ela também satisfaz as definições de paralelogramo, trapézio e quadrilátero. A aparência sugere um nome único, mas a geometria classifica por propriedades e por inclusão de classes. Quanto mais específica é uma figura, mais propriedades ela acumula sem abandonar as anteriores.

> 💭 **Pense um pouco:**  
> O que muda quando você troca o olhar da aparência pela definição?

## 1. O que é um Quadrilátero

Quadriláteros são polígonos de quatro lados, mas essa definição precisa ser lida com seus elementos.

### 1.1 Quatro lados, quatro vértices

Um **quadrilátero** é um polígono formado por 4 lados, 4 vértices e 4 ângulos internos. Em geral, quando estudamos soma de ângulos e diagonais nesta unidade, trabalhamos com quadriláteros convexos, nos quais as diagonais ficam no interior da figura.

![TikZ 1 — Elementos de um quadrilátero](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/1serie/unidade-4-quadrilateros/figuras/cap01_tikz-1.png)

Elementos principais:

- **vértices:** pontos onde dois lados consecutivos se encontram;
- **lados:** segmentos que formam o contorno;
- **ângulos internos:** aberturas determinadas por lados consecutivos;
- **diagonal:** segmento que liga vértices não consecutivos;
- **classe geométrica:** conjunto de figuras que satisfazem a mesma definição.

A notação $$ABCD$$ indica a ordem dos vértices no contorno. Por isso, $$\overline{AB}$$ e $$\overline{BC}$$ são lados consecutivos, enquanto $$A$$ e $$C$$ são vértices não consecutivos.

### 1.2 Diagonais e ângulos internos

Uma **diagonal** liga dois vértices não consecutivos. Em um quadrilátero, partindo de cada vértice há apenas uma diagonal possível, mas cada diagonal seria contada duas vezes se somássemos vértice por vértice.

![TikZ 2 — Diagonais de um quadrilátero](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/1serie/unidade-4-quadrilateros/figuras/cap01_tikz-2.png)

A quantidade pode ser confirmada pela fórmula geral:

$$D = \frac{4 \cdot (4 - 3)}{2}$$

$$D = \frac{4 \cdot 1}{2}$$

$$D = 2$$

Interpretação: em $$ABCD$$, as diagonais são $$\overline{AC}$$ e $$\overline{BD}$$. Elas não são lados, porque não acompanham o contorno da figura.

## 2. Por que a Soma Dá 360 Graus

A soma dos ângulos internos de um quadrilátero pode ser justificada por decomposição em triângulos.

### 2.1 Retomando a fórmula dos polígonos

Para um polígono convexo de $$n$$ lados, a soma dos ângulos internos é:

$$S = (n - 2) \cdot 180^{\circ}$$

A expressão $$n - 2$$ representa a quantidade de triângulos formados ao traçar diagonais a partir de um único vértice. Como cada triângulo soma 180 graus, a soma total depende da quantidade de triângulos internos.

### 2.2 O caso especial dos quadriláteros

No quadrilátero, temos $$n = 4$$.

$$S = (n - 2) \cdot 180^{\circ}$$

$$S = (4 - 2) \cdot 180^{\circ}$$

$$S = 2 \cdot 180^{\circ}$$

$$S = 360^{\circ}$$

Portanto, em qualquer quadrilátero convexo $$ABCD$$:

$$\hat{A} + \hat{B} + \hat{C} + \hat{D} = 360^{\circ}$$

![TikZ 3 — Quadrilátero dividido em dois triângulos](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/1serie/unidade-4-quadrilateros/figuras/cap01_tikz-3.png)

**Exemplo**

Em um quadrilátero, três ângulos medem $$85^{\circ}$$, $$110^{\circ}$$ e $$70^{\circ}$$. Determine o quarto ângulo.

$$85^{\circ} + 110^{\circ} + 70^{\circ} + x = 360^{\circ}$$

$$265^{\circ} + x = 360^{\circ}$$

$$x = 95^{\circ}$$

## 3. A Hierarquia dos Quadriláteros

Classificar é verificar quais definições a figura satisfaz, e não escolher apenas o nome mais familiar.

### 3.1 Trapézio e paralelogramo

Nesta unidade, usamos a definição inclusiva: **trapézio** é um quadrilátero com pelo menos 1 par de lados paralelos.

Um **paralelogramo** é um quadrilátero com 2 pares de lados opostos paralelos. Como 2 pares incluem pelo menos 1 par, todo paralelogramo é também trapézio nessa definição.

![TikZ 4 — Trapézio e paralelogramo na hierarquia inclusiva](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/1serie/unidade-4-quadrilateros/figuras/cap01_tikz-4.png)

Relação de inclusão:

$$\mathrm{paralelogramo} \subset \mathrm{trapezio}$$

Isso não significa que todo trapézio seja paralelogramo. A inclusão tem direção: todo paralelogramo satisfaz a definição de trapézio, mas um trapézio pode ter apenas um par de lados paralelos.

### 3.2 Retângulo, losango e quadrado

Retângulo, losango e quadrado são casos especiais de paralelogramo. A diferença entre eles não está em deixar de ser paralelogramo, mas em acrescentar condições.

Definições:

- **retângulo:** paralelogramo com 4 ângulos retos;
- **losango:** paralelogramo com 4 lados congruentes;
- **quadrado:** paralelogramo com 4 ângulos retos e 4 lados congruentes.

Relações:

$$\mathrm{quadrado} \subset \mathrm{retangulo}$$

$$\mathrm{quadrado} \subset \mathrm{losango}$$

$$\mathrm{retangulo} \subset \mathrm{paralelogramo}$$

$$\mathrm{losango} \subset \mathrm{paralelogramo}$$

Assim, todo quadrado é retângulo e losango ao mesmo tempo. A recíproca não vale automaticamente: um retângulo só será quadrado se também tiver 4 lados congruentes; um losango só será quadrado se também tiver 4 ângulos retos.

## 4. Classificar é Verificar Definições

Uma classificação de nível médio precisa trazer justificativa, contraexemplo ou condição adicional.

### 4.1 Exemplos do cotidiano

Objetos cotidianos ajudam a testar definições, mas o objeto não substitui a propriedade geométrica.

![TikZ 5 — Hierarquia inclusiva dos quadriláteros](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/1serie/unidade-4-quadrilateros/figuras/cap01_tikz-5.png)

Exemplos:

- uma janela retangular é retângulo, paralelogramo, trapézio e quadrilátero;
- um tabuleiro quadrado é quadrado, retângulo, losango, paralelogramo, trapézio e quadrilátero;
- uma placa em forma de losango é losango se tiver 4 lados congruentes; será paralelogramo quando seus lados opostos forem paralelos;
- uma rampa lateral pode sugerir trapézio, mas a classificação exige verificar o paralelismo das bases.

### 4.2 Erros comuns de classificação

O erro mais comum é tratar classes inclusivas como se fossem exclusivas. Outro erro é aceitar uma condição necessária como se fosse suficiente.

Evite:

- dizer que quadrado não é retângulo;
- dizer que retângulo não é paralelogramo;
- dizer que paralelogramo não é trapézio nesta definição;
- concluir que uma figura é quadrado só porque tem 4 lados congruentes;
- concluir que uma figura é retângulo só porque tem lados opostos paralelos.

> 👁️ **Observe:**  
> Uma figura pode receber vários nomes corretos quando satisfaz várias definições.

---

## NA VIDA REAL

Projetos, esquadrias, ladrilhos e desenhos técnicos dependem de nomes precisos para evitar ambiguidades. Quando um projeto usa a palavra retângulo, espera-se não apenas aparência retangular, mas 4 ângulos retos e as propriedades que decorrem disso. A hierarquia permite saber quais propriedades são herdadas e quais precisam ser verificadas separadamente.

---

## E A BÍBLIA NISSO?

> *"Homem de ânimo dobre é inconstante em todos os seus caminhos."*  
> Tiago 1.8

Na hierarquia dos quadriláteros, uma figura mantém coerência entre sua definição e suas propriedades. O quadrado não deixa de ser quadrado quando também é reconhecido como retângulo, losango, paralelogramo e trapézio.

- **Identidade coerente não entra em contradição.** Uma classificação mais específica deve preservar o que foi assumido nas classes mais gerais.

> 💬 **Para Conversar:**  
> Por que uma definição clara evita respostas contraditórias?

---

## Simplificando

Quadriláteros têm 4 lados, 2 diagonais e soma dos ângulos internos igual a 360 graus. Na classificação inclusiva, trapézio tem pelo menos 1 par de lados paralelos, paralelogramo é caso especial de trapézio, e quadrado é simultaneamente retângulo e losango porque acumula as condições dos dois.

---

## Para não esquecer

- Quadrilátero é polígono de 4 lados;
- Todo quadrilátero tem 2 diagonais;
- A soma dos ângulos internos é 360 graus;
- Trapézio tem pelo menos 1 par de lados paralelos;
- Quadrado é retângulo e losango ao mesmo tempo.
