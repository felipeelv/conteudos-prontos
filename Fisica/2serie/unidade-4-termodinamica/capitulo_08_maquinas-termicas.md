# Capítulo 8 — Máquinas Térmicas

## Pergunta-problema

Por que nenhum motor tem rendimento de 100%? Se uma máquina recebe energia térmica, por que ela não transforma tudo em trabalho útil? A resposta envolve limites físicos, perdas e o sentido natural dos processos.

> 💭 **Pense um pouco:**  
> Uma máquina perfeita seria possível se ela fosse construída com materiais melhores?

![TikZ 1 — Máquina térmica entre fonte quente e fonte fria](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/2serie/unidade-4-termodinamica/figuras/cap08_tikz-1.png)

---

## 1. O Que é Uma Máquina Térmica

Uma máquina térmica opera em ciclos. Ela recebe calor de uma fonte quente, transforma parte em trabalho e rejeita calor para uma fonte fria.

O esquema básico é:

- entra calor da fonte quente;
- sai trabalho útil;
- sobra calor rejeitado à fonte fria.

Essa "sobra" não é só defeito técnico. Ela expressa um limite da Termodinâmica.

---

## 2. Rendimento

O rendimento mede a fração do calor recebido que se transforma em trabalho:

$$\eta = \frac{W}{Q_q}$$

Como o trabalho útil é a diferença entre calor recebido e calor rejeitado:

$$\eta = 1 - \frac{Q_f}{Q_q}$$

📝 **Exemplo:**

Uma máquina recebe:

$$Q_q = 2000\ \mathrm{J}$$

e rejeita:

$$Q_f = 1400\ \mathrm{J}$$

O trabalho é:

$$W = 2000 - 1400 = 600\ \mathrm{J}$$

O rendimento é:

$$\eta = \frac{600}{2000} = 0{,}30 = 30\%$$

---

## 3. Carnot e o Limite Ideal

Carnot mostrou o rendimento máximo possível entre duas temperaturas:

$$\eta_{Carnot} = 1 - \frac{T_f}{T_q}$$

As temperaturas devem estar em kelvin.

![TikZ 2 — Rendimento real e limite de Carnot](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/2serie/unidade-4-termodinamica/figuras/cap08_tikz-2.png)

📝 **Exemplo:**

Com:

$$T_q = 600\ \mathrm{K}$$

e:

$$T_f = 300\ \mathrm{K}$$

temos:

$$\eta_{Carnot} = 1 - \frac{300}{600} = 0{,}50 = 50\%$$

Mesmo uma máquina ideal não chegaria a 100% nesse caso.

---

## 4. Entropia e Refrigeradores

A segunda lei da Termodinâmica também aparece na ideia de entropia. Em processos naturais, a entropia total não diminui:

$$\Delta S \geq 0$$

Em uma leitura estatística:

$$S = k \cdot \ln(W)$$

com:

$$k = 1{,}38 \cdot 10^{-23}\ \mathrm{J/K}$$

Refrigeradores e aparelhos de ar-condicionado não violam a segunda lei. Eles usam trabalho para retirar calor de uma região fria e jogar para uma região mais quente.

O coeficiente de desempenho pode ser escrito como:

$$COP = \frac{Q_f}{W}$$

---

## NA VIDA REAL

Usinas termelétricas, reatores nucleares, motores de carro e refrigeradores lidam com os mesmos limites. Uma lâmpada PROCEL, um ar-condicionado eficiente ou uma usina bem projetada não eliminam perdas, mas reduzem desperdícios e melhoram o uso da energia.

---

## E A BÍBLIA NISSO?

> *"Quem anda com integridade anda seguro, mas quem segue veredas tortuosas será descoberto."*  
> Provérbios 10.9

Máquinas térmicas lembram que conversões reais têm custo. Integridade é reconhecer esse custo em vez de vender a ideia de eficiência perfeita.

- **Reconhecer limites.** Uma boa decisão técnica começa quando aceitamos os limites reais do sistema.

> 💬 **Para Conversar:**  
> Em que situações prometer "100%" pode esconder uma perda que alguém vai pagar?

---

## Simplificando

Máquinas térmicas transformam parte do calor recebido em trabalho. Nenhuma máquina real tem rendimento de 100%, e mesmo a máquina ideal de Carnot tem limite definido pelas temperaturas.

---

## Para não esquecer

- **Rendimento:** fração do calor recebido que vira trabalho.
- **Carnot:** define o limite ideal entre duas temperaturas.
- **Segunda lei:** processos reais têm direção e perdas.

---

## Fórmulas do capítulo

- **Rendimento:** $$\eta = \frac{W}{Q_q}$$ e $$\eta = 1 - \frac{Q_f}{Q_q}$$.
- **Carnot:** $$\eta_{Carnot} = 1 - \frac{T_f}{T_q}$$.
- **Entropia:** $$S = k \cdot \ln(W)$$ e $$\Delta S \geq 0$$.
