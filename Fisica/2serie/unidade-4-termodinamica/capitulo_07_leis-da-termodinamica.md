# Capítulo 7 — Leis da Termodinâmica

## Pergunta-problema

Quando um gás empurra um pistão, ele realiza trabalho. Mas essa energia não surge do nada. Então, quando um gás faz trabalho, quem paga essa conta? A Termodinâmica responde acompanhando calor, trabalho e energia interna.

> 💭 **Pense um pouco:**  
> Se um gás recebe calor, toda essa energia vira trabalho útil?

![TikZ 1 — Sistema termodinâmico trocando calor e trabalho](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/2serie/unidade-4-termodinamica/figuras/cap07_tikz-1.png)

---

## 1. Sistema, Calor e Trabalho

Um **sistema termodinâmico** é a parte do mundo que escolhemos estudar. Pode ser o gás dentro de um cilindro, o ar em uma sala ou vapor em uma turbina.

O que fica fora é a vizinhança. Entre sistema e vizinhança pode haver troca de energia.

As duas formas principais são:

- **calor:** energia transferida por diferença de temperatura;
- **trabalho:** energia transferida por força com deslocamento.

### 1.1 Sinal físico das grandezas

Neste capítulo, usaremos a convenção:

- $$Q > 0$$ quando o sistema recebe calor;
- $$W > 0$$ quando o sistema realiza trabalho;
- $$\Delta U$$ indica a variação da energia interna.

Atenção aos sinais. Eles são parte da interpretação física.

---

## 2. Trabalho em Transformações Gasosas

Quando um gás se expande contra uma pressão externa, ele realiza trabalho. Em pressão constante:

$$W = P \cdot \Delta V$$

Se o volume não muda, não há trabalho de expansão:

$$W = 0$$

Em uma transformação isotérmica ideal, o trabalho pode ser calculado por:

$$W = nRT \cdot \ln\left(\frac{V_2}{V_1}\right)$$

Essas expressões mostram que trabalho depende do caminho da transformação, não apenas do estado inicial e final.

![TikZ 2 — Trabalho como área em um diagrama P x V](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/2serie/unidade-4-termodinamica/figuras/cap07_tikz-2.png)

---

## 3. Energia Interna e Primeira Lei

A energia interna está ligada à agitação microscópica das partículas. Para um gás ideal monoatômico:

$$U = \frac{3}{2}nRT$$

Logo:

$$\Delta U = \frac{3}{2}nR\Delta T$$

A primeira lei da Termodinâmica organiza a contabilidade:

$$\Delta U = Q - W$$

Se o sistema recebe calor e realiza trabalho, parte da energia pode aumentar a energia interna e parte pode sair como trabalho.

📝 **Exemplo 1:**

Um gás recebe:

$$Q = 800\ \mathrm{J}$$

e realiza:

$$W = 500\ \mathrm{J}$$

Então:

$$\Delta U = 800 - 500 = 300\ \mathrm{J}$$

A energia interna aumenta.

📝 **Exemplo 2:**

Um gás é comprimido, com:

$$W = -200\ \mathrm{J}$$

e perde calor:

$$Q = -100\ \mathrm{J}$$

Então:

$$\Delta U = -100 - (-200) = 100\ \mathrm{J}$$

Mesmo perdendo calor, a compressão aumentou a energia interna.

---

## 4. Ciclos e Sentido Físico

Em um ciclo termodinâmico, o sistema volta ao estado inicial. Por isso, a variação total de energia interna é zero:

$$\Delta U_{ciclo} = 0$$

Isso não significa que nada aconteceu. Pode ter havido entrada de calor, saída de calor e trabalho líquido.

Um motor térmico depende exatamente disso: transformar parte do calor recebido em trabalho, rejeitando outra parte ao ambiente.

---

## NA VIDA REAL

Motores de combustão e usinas termelétricas usam transformações termodinâmicas para gerar movimento ou eletricidade. Em todos os casos, existe uma contabilidade energética: energia entra, parte vira trabalho útil e parte se perde como calor rejeitado.

---

## E A BÍBLIA NISSO?

> *"Quem é fiel no pouco também é fiel no muito; e quem é desonesto no pouco também é desonesto no muito."*  
> Lucas 16.10

A primeira lei ensina que energia precisa ser contabilizada com honestidade. O que entra, sai ou fica no sistema deve aparecer na conta.

- **Contabilidade fiel.** Em ciência e na vida, esconder perdas ou custos produz uma conclusão falsa.

> 💬 **Para Conversar:**  
> Onde uma conta parece boa só porque alguém deixou um custo de fora?

---

## Simplificando

A primeira lei da Termodinâmica relaciona calor, trabalho e energia interna. Ela não diz que toda energia vira trabalho; ela mostra para onde a energia foi.

---

## Para não esquecer

- **Calor e trabalho são transferências de energia.**
- **Primeira lei:** $$\Delta U = Q - W$$.
- **Em ciclo completo:** $$\Delta U_{ciclo} = 0$$.

---

## Fórmulas do capítulo

- **Trabalho a pressão constante:** $$W = P \cdot \Delta V$$.
- **Energia interna de gás ideal monoatômico:** $$U = \frac{3}{2}nRT$$.
- **Primeira lei:** $$\Delta U = Q - W$$.
