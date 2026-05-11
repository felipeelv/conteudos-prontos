# Capítulo 1 — Definição e Elementos da Elipse

## Por que a órbita da Terra é quase circular, mas ainda assim é uma elipse?

A Terra leva um ano para completar sua volta em torno do Sol, percorrendo uma trajetória que parece um círculo, mas não é. Em janeiro estamos cerca de 5 milhões de quilômetros mais perto do Sol do que em julho, e essa pequena diferença só faz sentido em uma figura com **dois pontos especiais** em vez de um centro único. Esse tipo de curva é a **elipse**, e ela aparece em muito mais lugares do que as órbitas.

> 💭 **Pense um pouco:**  
> Se você prendesse os dois extremos de um barbante em dois pregos e contornasse o barbante esticado com um lápis, que figura desenharia no papel?

---

## 1. A Elipse Como Lugar Geométrico

A definição mais útil da elipse não começa pela aparência da curva, mas pela propriedade que organiza todos os seus pontos.

### 1.1 O que é um lugar geométrico?

Um **lugar geométrico** é o conjunto de todos os pontos que satisfazem uma mesma condição. Três coisas são essenciais:

- a condição precisa estar bem definida;
- todo ponto que satisfaz a condição pertence ao conjunto;
- nenhum ponto fora da condição pertence ao conjunto.

A circunferência, por exemplo, é o lugar geométrico dos pontos cuja distância a um ponto fixo (o centro) é constante. A elipse generaliza essa ideia trocando **um ponto fixo por dois**.

### 1.2 Definição da elipse pelos focos

Sejam $$F_{1}$$ e $$F_{2}$$ dois pontos fixos do plano, chamados **focos**. A **elipse** é o conjunto de todos os pontos $$P$$ do plano tais que a soma das distâncias de $$P$$ até os dois focos é uma constante:

$$|PF_{1}| + |PF_{2}| = 2a$$

O valor $$2a$$ representa o comprimento do eixo maior da elipse, como veremos a seguir. Para que a curva exista de fato, é necessário que essa soma seja maior do que a distância entre os focos:

$$2a > |F_{1}F_{2}|$$

Se essa condição falhar, não há ponto algum capaz de cumprir a definição.

> 💡 **Você sabia?**  
> A construção do barbante com dois pinos é exatamente o método antigo dos jardineiros para traçar canteiros elípticos com geometria precisa.

---

## 2. Elementos Da Elipse

Identificada a elipse pela propriedade da soma constante, podemos nomear seus elementos principais.

### 2.1 Centro, focos e eixos

Imagine uma elipse com focos $$F_{1}$$ e $$F_{2}$$ posicionados sobre uma reta horizontal. Os elementos básicos são:

- **Centro** ($$O$$): ponto médio do segmento $$\overline{F_{1}F_{2}}$$.
- **Eixo maior**: segmento que contém os dois focos, atravessa o centro e tem comprimento $$2a$$.
- **Eixo menor**: segmento perpendicular ao eixo maior, passando pelo centro, com comprimento $$2b$$.
- **Distância focal**: distância entre os focos, igual a $$2c$$.

Os valores $$a$$, $$b$$ e $$c$$ são as metades correspondentes: $$a$$ é o **semieixo maior**, $$b$$ é o **semieixo menor** e $$c$$ é a **semidistância focal**. Em toda elipse, vale:

$$a > b > 0$$

$$0 \leq c < a$$

### 2.2 Vértices

Os pontos em que os eixos encontram a curva são chamados **vértices**. A elipse tem **quatro vértices**, organizados em dois pares:

- Vértices principais ($$A_{1}$$ e $$A_{2}$$): extremos do eixo maior; ficam a distância $$a$$ do centro.
- Vértices secundários ($$B_{1}$$ e $$B_{2}$$): extremos do eixo menor; ficam a distância $$b$$ do centro.

> ⚠️ **Atenção:**  
> Dizer que a elipse tem apenas dois vértices é um erro comum; ela tem quatro, dois em cada eixo.

---

## 3. A Relação Fundamental

Os três valores $$a$$, $$b$$ e $$c$$ não são independentes: uma identidade os conecta diretamente.

### 3.1 De onde vem a relação?

Considere o triângulo formado por:

- o centro $$O$$;
- um foco, digamos $$F_{1}$$;
- um vértice secundário, digamos $$B_{1}$$.

Esse triângulo é **retângulo**, com ângulo reto em $$O$$. Os catetos medem $$c$$ (de $$O$$ até $$F_{1}$$) e $$b$$ (de $$O$$ até $$B_{1}$$). Pela definição da elipse, a soma das distâncias de $$B_{1}$$ aos dois focos vale $$2a$$. Como $$B_{1}$$ é simétrico em relação aos dois focos, cada distância individual vale $$a$$. Logo, a hipotenusa do triângulo, que liga $$B_{1}$$ a $$F_{1}$$, mede:

$$|B_{1}F_{1}| = a$$

Aplicando o Teorema de Pitágoras nesse triângulo:

$$a^2 = b^2 + c^2$$

Essa é a **relação fundamental da elipse**.

> 📐 **Fazendo as Contas:**  
> Se $$a = 13$$ e $$c = 5$$, então $$b^2 = 169 - 25 = 144$$, ou seja, $$b = 12$$.

### 3.2 Aplicações da relação fundamental

A relação $$a^2 = b^2 + c^2$$ permite isolar qualquer um dos três valores quando os outros dois são conhecidos:

$$b = \sqrt{a^2 - c^2}$$

$$c = \sqrt{a^2 - b^2}$$

Veja o exemplo abaixo.

Uma elipse tem semieixo maior $$a = 10$$ e semieixo menor $$b = 8$$. Qual é a sua distância focal $$2c$$?

**Resolução:**

Usando a relação fundamental:

$$c^2 = a^2 - b^2$$

$$c^2 = 10^2 - 8^2$$

$$c^2 = 100 - 64$$

$$c^2 = 36$$

$$c = 6$$

A distância focal é $$2c$$:

$$2c = 2 \cdot 6 = 12$$

**Resposta:** a distância focal é igual a 12.

Em paralelo a esse desenvolvimento da geometria das elipses, **Isaac Newton** mostrou em 1687, na obra *Philosophiæ Naturalis Principia Mathematica*, que corpos sob uma força central inversamente proporcional ao quadrado da distância descrevem cônicas — entre elas, elipses. A órbita da Terra ao redor do Sol não é uma escolha caprichosa da natureza: é uma consequência matemática de uma lei física precisa.

---

## NA VIDA REAL

A órbita da Terra ao redor do Sol é uma elipse com semieixo maior de aproximadamente $$149{,}6$$ milhões de km. O ponto da órbita mais próximo do Sol (periélio) fica a cerca de $$147{,}1$$ milhões de km, e o mais distante (afélio) fica a $$152{,}1$$ milhões de km — uma diferença de aproximadamente 5 milhões de km. Essa pequena diferença produz variações reais no fluxo de radiação solar que recebemos e ajuda a definir as estações do ano em combinação com a inclinação do eixo terrestre.

---

## E A BÍBLIA NISSO?

> *"Seja, porém, o vosso falar: Sim, sim; não, não. O que disto passar vem do maligno."* — **Mateus 5:37**

Cada ponto da elipse cumpre exatamente a mesma propriedade: a soma das distâncias aos dois focos vale $$2a$$, sempre. A figura inteira muda de posição ponto a ponto, mas a regra que a define nunca é negociada. Integridade funciona assim — uma palavra dada se cumpre mesmo quando a posição da vida muda.

- **Coerência sob variação:** preservar o compromisso central enquanto as circunstâncias mudam.

> 💬 **Para Conversar:** Em que situações da sua vida você precisa manter coerência com dois referenciais importantes ao mesmo tempo, sem negociar o compromisso principal?

---

## Simplificando

A elipse é o conjunto dos pontos cuja soma das distâncias a dois focos é constante e igual a $$2a$$; seus elementos se organizam pela relação fundamental $$a^2 = b^2 + c^2$$, que liga semieixo maior, semieixo menor e semidistância focal.

---

## Para não esquecer

- **Lugar geométrico:** conjunto de pontos que satisfazem uma mesma condição.
- **Focos:** dois pontos fixos que definem a elipse.
- **Eixos:** eixo maior tem comprimento $$2a$$ e contém os focos; eixo menor tem $$2b$$ e é perpendicular.
- **Vértices:** a elipse tem quatro, dois em cada eixo.
- **Relação fundamental:** $$a^2 = b^2 + c^2$$.

---

## Fórmulas do capítulo

- Definição por lugar geométrico:

$$|PF_{1}| + |PF_{2}| = 2a$$

- Restrição de existência:

$$2a > 2c$$

- Distância focal:

$$|F_{1}F_{2}| = 2c$$

- Relação fundamental:

$$a^2 = b^2 + c^2$$

- Cálculo do semieixo menor a partir de $$a$$ e $$c$$:

$$b = \sqrt{a^2 - c^2}$$

- Cálculo da semidistância focal a partir de $$a$$ e $$b$$:

$$c = \sqrt{a^2 - b^2}$$
