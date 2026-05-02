# Capítulo 7 — Geradores e Receptores

## Pergunta-problema

Por que uma pilha que ainda tem tensão pode falhar quando ligada a um aparelho? A resposta está na resistência interna. Nem toda energia fornecida pelo gerador chega ao circuito externo.

> 💭 **Pense um pouco:**  
> Uma bateria ideal e uma bateria real entregam a mesma tensão quando a corrente aumenta?

![TikZ 1 — Gerador real com resistência interna](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/3serie/unidade-4-geradores-e-circuitos/figuras/cap07_tikz-1.png)

---

## 1. Gerador Real

Um gerador transforma alguma forma de energia em energia elétrica. Pilhas, baterias e fontes são exemplos.

No modelo ideal, o gerador manteria sempre a mesma tensão. No modelo real, existe resistência interna.

A tensão útil nos terminais é:

$$U = \varepsilon - rI$$

Nessa expressão:

- $$\varepsilon$$ é a força eletromotriz;
- $$r$$ é a resistência interna;
- $$I$$ é a corrente elétrica.

Quanto maior a corrente, maior a perda interna.

### 1.1 Corrente em circuito simples

Para um gerador ligado a um resistor externo:

$$I = \frac{\varepsilon}{R + r}$$

Essa fórmula mostra que o circuito externo e a resistência interna participam da corrente.

📝 **Exemplo:**

Uma pilha tem:

$$\varepsilon = 1{,}5\ \mathrm{V}$$

$$r = 0{,}15\ \Omega$$

e está ligada a:

$$R = 10\ \Omega$$

Então:

$$I = \frac{1{,}5}{10 + 0{,}15} \approx 0{,}148\ \mathrm{A}$$

A tensão nos terminais é:

$$U = 1{,}5 - 0{,}15 \cdot 0{,}148 \approx 1{,}48\ \mathrm{V}$$

O rendimento elétrico é:

$$\eta = \frac{U}{\varepsilon} \approx \frac{1{,}48}{1{,}5} \approx 0{,}99$$

---

## 2. Potências no Gerador

A potência total fornecida pelo gerador é:

$$P_{total} = \varepsilon I$$

A potência útil entregue ao circuito externo é:

$$P_{util} = UI$$

A potência dissipada internamente é:

$$P_{interna} = rI^2$$

Essas três expressões ajudam a enxergar por que uma bateria esquenta e por que sua tensão cai sob carga.

![TikZ 2 — Gráfico U x I de um gerador real](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/3serie/unidade-4-geradores-e-circuitos/figuras/cap07_tikz-2.png)

### 2.1 Curto-circuito

No curto-circuito, a resistência externa é quase zero. A corrente fica limitada principalmente pela resistência interna:

$$I_{curto} = \frac{\varepsilon}{r}$$

Para a pilha do exemplo:

$$I_{curto} = \frac{1{,}5}{0{,}15} = 10\ \mathrm{A}$$

Esse valor é alto para uma pilha pequena e pode causar aquecimento perigoso.

---

## 3. Receptores

Um receptor transforma energia elétrica em outra forma de energia. Motores são exemplos importantes.

Para um receptor real:

$$U = \varepsilon' + r'I$$

A tensão aplicada precisa vencer a força contraeletromotriz e as perdas internas.

Em um motor, parte da energia elétrica vira movimento; outra parte vira calor.

---

## 4. Leis de Kirchhoff

Circuitos maiores exigem organização. As leis de Kirchhoff ajudam a montar equações.

Lei dos nós:

$$\sum I_{entram} = \sum I_{saem}$$

Lei das malhas:

$$\sum_{malha} \Delta V = 0$$

A primeira expressa conservação da carga. A segunda expressa conservação da energia em uma volta fechada.

---

## NA VIDA REAL

Uma pilha AA pode parecer boa sem carga, mas falhar em um aparelho que exige corrente maior. Em carros, a bateria precisa fornecer corrente alta ao motor de partida. Se a resistência interna estiver alta, a tensão nos terminais cai e o sistema pode não funcionar.

---

## E A BÍBLIA NISSO?

> *"Não puderam achar ocasião alguma ou culpa, porque ele era fiel; não se achava nele nenhum erro nem culpa."*  
> Daniel 6.4

Um gerador real mostra que perdas internas afetam a entrega externa. A imagem ajuda a pensar em integridade: o que está dentro também influencia o que chega fora.

- **Coerência interna.** Menos resistência interna significa mais energia útil; menos duplicidade na vida também sustenta melhor o serviço externo.

> 💬 **Para Conversar:**  
> Que tipo de "perda interna" pode reduzir a força de uma boa intenção?

---

## Simplificando

Geradores reais têm resistência interna. Por isso, a tensão útil diminui quando a corrente aumenta. Receptores também têm perdas, e circuitos maiores podem ser analisados com as leis de Kirchhoff.

---

## Para não esquecer

- **Gerador real:** $$U = \varepsilon - rI$$.
- **Curto-circuito:** corrente alta, limitada pela resistência interna.
- **Kirchhoff:** conserva carga nos nós e energia nas malhas.

---

## Fórmulas do capítulo

- **Gerador real:** $$U = \varepsilon - rI$$.
- **Receptor real:** $$U = \varepsilon' + r'I$$.
- **Corrente de curto:** $$I_{curto} = \frac{\varepsilon}{r}$$.
