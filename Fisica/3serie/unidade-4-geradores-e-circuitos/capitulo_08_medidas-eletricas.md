# Capítulo 8 — Medidas Elétricas

## Pergunta-problema

Como medir sem alterar o circuito que se mede? Um instrumento mal ligado pode mudar a corrente, alterar a tensão ou até causar curto-circuito. Medir bem exige técnica e responsabilidade.

> 💭 **Pense um pouco:**  
> Por que um amperímetro não deve ser ligado diretamente nos polos de uma tomada?

![TikZ 1 — Amperímetro em série e voltímetro em paralelo](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/3serie/unidade-4-geradores-e-circuitos/figuras/cap08_tikz-1.png)

---

## 1. Amperímetro

O amperímetro mede corrente elétrica. Como corrente é fluxo de carga no circuito, ele deve ser ligado em série.

Para não atrapalhar a medida, o amperímetro ideal teria resistência muito pequena:

$$R_A \rightarrow 0$$

Se ele fosse ligado em paralelo com uma fonte, poderia criar um caminho de baixa resistência. Isso se aproxima de um curto-circuito.

---

## 2. Voltímetro

O voltímetro mede diferença de potencial. Ele deve ser ligado em paralelo com o trecho que se quer medir.

Para não desviar corrente de modo significativo, o voltímetro ideal teria resistência muito grande:

$$R_V \rightarrow \infty$$

Assim, ele "observa" a tensão sem roubar corrente relevante do circuito.

### 2.1 Medida correta não é detalhe

Ligar instrumentos corretamente não é formalidade. É parte da segurança e da validade da medida.

Uma medida errada pode:

- alterar o circuito;
- queimar o instrumento;
- gerar risco para quem mede.

---

## 3. Curto-circuito e Segurança

Em um curto-circuito, a resistência externa fica muito baixa. A corrente pode crescer rapidamente:

$$I_{curto} = \frac{\varepsilon}{r}$$

📝 **Exemplo:**

Para uma pilha com:

$$\varepsilon = 1{,}5\ \mathrm{V}$$

e:

$$r = 0{,}15\ \Omega$$

temos:

$$I_{curto} = \frac{1{,}5}{0{,}15} = 10\ \mathrm{A}$$

Isso explica por que curto-circuito pode aquecer fios e danificar componentes.

![TikZ 2 — Dispositivos de proteção em um circuito residencial](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/3serie/unidade-4-geradores-e-circuitos/figuras/cap08_tikz-2.png)

---

## 4. Choque Elétrico

O risco do choque depende da corrente que atravessa o corpo, do caminho, do tempo de exposição e das condições da pele.

Uma estimativa simples usa:

$$I_{choque} = \frac{V}{R_{corpo}}$$

📝 **Exemplo:**

Se:

$$V = 127\ \mathrm{V}$$

e:

$$R_{corpo} = 1000\ \Omega$$

então:

$$I_{choque} = \frac{127}{1000} = 0{,}127\ \mathrm{A} = 127\ \mathrm{mA}$$

Esse valor é maior que 30 mA, corrente de referência para dispositivos DR residenciais. Por isso, instalações molhadas exigem atenção especial.

---

## NA VIDA REAL

Disjuntores protegem contra correntes altas. Fusíveis interrompem o circuito quando aquecem demais. O DR detecta fuga de corrente e pode desligar o circuito rapidamente, especialmente em áreas como banheiros, cozinhas e lavanderias.

---

## E A BÍBLIA NISSO?

> *"Quem é fiel no pouco também é fiel no muito; e quem é desonesto no pouco também é desonesto no muito."*  
> Lucas 16.10

Um bom instrumento mede sem distorcer. Essa é uma imagem forte de fidelidade: interferir pouco, observar corretamente e responder com responsabilidade.

- **Medir com fidelidade.** Quando avaliamos algo ou alguém, precisamos evitar interferir tanto que a medida deixe de ser justa.

> 💬 **Para Conversar:**  
> Como uma avaliação pode se tornar injusta quando o observador interfere demais?

---

## Simplificando

Amperímetro mede corrente e deve ser ligado em série. Voltímetro mede tensão e deve ser ligado em paralelo. Segurança elétrica exige entender curto-circuito, choque e dispositivos de proteção.

---

## Para não esquecer

- **Amperímetro:** série e resistência ideal quase zero.
- **Voltímetro:** paralelo e resistência ideal muito alta.
- **Segurança:** corrente alta pode aquecer, danificar e ferir.

---

## Fórmulas do capítulo

- **Amperímetro ideal:** $$R_A \rightarrow 0$$.
- **Voltímetro ideal:** $$R_V \rightarrow \infty$$.
- **Corrente de choque:** $$I_{choque} = \frac{V}{R_{corpo}}$$.
