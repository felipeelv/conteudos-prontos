# Capítulo 1 — Elementos e Classificação

## O que torna uma pirâmide reta?

A Pirâmide de Quéops impressiona não apenas pelo tamanho, mas pela precisão com que base e ápice se organizam no espaço. Em uma pirâmide, parecer simétrica não basta: é preciso localizar base, centro, altura, apótemas e projeção do ápice. A geometria decide a classificação pela estrutura, não pela impressão do desenho.

> 💭 **Pense um pouco:**  
> Que diferença existe entre uma figura parecer simétrica e satisfazer uma definição geométrica?

## 1. O que é uma Pirâmide

Uma pirâmide é um sólido com uma única base poligonal.

### 1.1 Uma base e faces que convergem

Uma **pirâmide** é um sólido formado por uma base poligonal e faces laterais triangulares que se encontram em um único ponto, chamado **ápice**.

![TikZ 1 — Pirâmide com base, faces e ápice](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/2serie/unidade-4-piramides/figuras/cap01_tikz-1.png)

Elementos essenciais:

- **base:** polígono sobre o qual a pirâmide se apoia;
- **ápice:** ponto comum das faces laterais;
- **faces laterais:** triângulos que ligam a base ao ápice;
- **arestas da base:** lados do polígono da base;
- **arestas laterais:** segmentos que ligam o ápice aos vértices da base.

Uma pirâmide pode ter base triangular, quadrangular, pentagonal, hexagonal ou qualquer outra base poligonal. O nome depende do polígono da base.

### 1.2 Pirâmide e prisma não são a mesma coisa

A diferença central é a quantidade de bases. O prisma tem duas bases paralelas e congruentes; a pirâmide tem uma única base.

Compare:

- no prisma, as faces laterais ligam uma base à outra;
- na pirâmide, as faces laterais convergem para o ápice;
- no prisma, o volume usa a base inteira ao longo da altura;
- na pirâmide, o sólido afunila até um ponto.

![TikZ 2 — Pirâmide e prisma comparados](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/2serie/unidade-4-piramides/figuras/cap01_tikz-2.png)

## 2. Elementos da Pirâmide

Os cálculos em pirâmides dependem de localizar corretamente os segmentos internos.

### 2.1 Base, ápice, faces e arestas

Na pirâmide quadrangular regular, a base é um quadrado e as faces laterais são triângulos congruentes. O ápice fica alinhado com o centro da base.

Use este vocabulário:

- **vértices da base:** pontos do polígono da base;
- **centro da base:** ponto central do polígono regular;
- **aresta lateral:** segmento entre o ápice e um vértice da base;
- **face lateral:** triângulo determinado pelo ápice e por uma aresta da base.

### 2.2 Altura e perpendicularidade

A **altura** da pirâmide é a distância perpendicular do ápice ao plano da base. Ela não é uma aresta lateral e não é necessariamente desenhada na superfície do sólido.

![TikZ 3 — Altura perpendicular ao plano da base](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/2serie/unidade-4-piramides/figuras/cap01_tikz-3.png)

Para identificar a altura:

- localize o ápice;
- projete perpendicularmente esse ponto no plano da base;
- meça a distância entre o ápice e essa projeção.

Em uma pirâmide reta, essa projeção cai no centro da base. Em uma pirâmide oblíqua, a projeção não cai no centro.

## 3. Apótemas e Pitágoras no Sólido

Em pirâmides regulares, altura, apótema da base e apótema lateral formam um triângulo retângulo.

### 3.1 Apótema da base e apótema lateral

O **apótema da base**, indicado por $$m$$, é o segmento que vai do centro da base ao ponto médio de uma aresta da base. Ele fica no plano da base.

O **apótema lateral**, indicado por $$g$$, é o segmento que vai do ápice ao ponto médio de uma aresta da base. Em pirâmide regular, ele é a altura de uma face lateral.

![TikZ 4 — Apótema da base e apótema lateral](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/2serie/unidade-4-piramides/figuras/cap01_tikz-4.png)

Não confunda:

- $$h$$ fica dentro da pirâmide e é perpendicular ao plano da base;
- $$m$$ fica na base e mede do centro ao meio de uma aresta;
- $$g$$ fica na face lateral e mede do ápice ao meio de uma aresta.

### 3.2 A relação g^2 = h^2 + m^2

Na pirâmide regular, os segmentos $$h$$, $$m$$ e $$g$$ formam um triângulo retângulo. Assim:

$$g^2 = h^2 + m^2$$

Também podemos escrever:

$$g = \sqrt{h^2 + m^2}$$

ou:

$$h = \sqrt{g^2 - m^2}$$

**Exemplo**

Uma pirâmide regular tem altura de 12 cm e apótema da base de 5 cm. Determine o apótema lateral.

$$g^2 = h^2 + m^2$$

$$g^2 = 12^2 + 5^2$$

$$g^2 = 144 + 25$$

$$g^2 = 169$$

$$g = 13\mathrm{cm}$$

Para a aresta lateral $$\ell$$, quando usamos o raio circunscrito da base $$R$$, vale:

$$\ell^2 = h^2 + R^2$$

## 4. Classificar é Verificar o Ápice

A classificação depende da posição do ápice e da forma da base.

### 4.1 Pirâmide reta e pirâmide oblíqua

Uma **pirâmide reta** tem o ápice projetado no centro da base. Uma **pirâmide oblíqua** tem o ápice projetado fora do centro da base.

![TikZ 5 — Pirâmide reta e pirâmide oblíqua](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/2serie/unidade-4-piramides/figuras/cap01_tikz-5.png)

Critérios:

- reta: ápice alinhado verticalmente ao centro da base;
- oblíqua: ápice deslocado em relação ao centro;
- a classificação não depende apenas do desenho em perspectiva.

### 4.2 Pirâmide regular e tetraedro regular

Uma **pirâmide regular** é uma pirâmide reta cuja base é um polígono regular. Portanto, ser reta não basta: a base também precisa ser regular.

Um **tetraedro regular** é uma pirâmide triangular com quatro faces equiláteras congruentes.

![TikZ 6 — Tetraedro regular](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/2serie/unidade-4-piramides/figuras/cap01_tikz-6.png)

Classifique com cuidado:

- pirâmide reta com base irregular não é regular;
- pirâmide com base regular, mas ápice deslocado, não é regular;
- tetraedro regular é caso particular de pirâmide triangular.

---

## NA VIDA REAL

Monumentos, coberturas, estruturas decorativas e embalagens podem ter forma piramidal. Em projetos reais, identificar altura, ápice e base corretamente evita erros de cálculo e de construção. A aparência externa não substitui a verificação geométrica dos elementos.

---

## E A BÍBLIA NISSO?

> *"Caiu a chuva, transbordaram os rios, sopraram os ventos e deram com ímpeto contra aquela casa, que não caiu, porque fora edificada sobre a rocha."*  
> Mateus 7.25

Uma pirâmide reta depende da coerência entre base, centro e ápice. A estabilidade geométrica não vem da aparência, mas da estrutura que sustenta a forma.

- **Fundamento e forma precisam concordar.** Quando o ápice se desloca, toda a estrutura métrica da pirâmide muda.

> 💬 **Para Conversar:**  
> Por que uma pequena diferença na posição do ápice pode mudar várias medidas do sólido?

---

## Simplificando

Pirâmide é um sólido com uma base poligonal e faces triangulares que se encontram no ápice. Em pirâmides regulares, altura, apótema da base e apótema lateral formam um triângulo retângulo, permitindo usar $$g^2 = h^2 + m^2$$.

---

## Para não esquecer

- Pirâmide tem uma única base;
- Faces laterais de pirâmides são triângulos;
- Altura é perpendicular ao plano da base;
- Apótema da base $$m$$ e apótema lateral $$g$$ são segmentos diferentes;
- Pirâmide regular é reta e tem base regular.
