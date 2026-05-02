# Capítulo 7 — Movimentos Compostos

## Pergunta-problema

Por que uma bola lançada para frente cai junto com uma bola solta da mesma altura? A resposta está na independência dos movimentos: o movimento horizontal e o vertical acontecem ao mesmo tempo, mas podem ser analisados separadamente.

> 💭 **Pense um pouco:**  
> Se uma bola é lançada horizontalmente, ela deixa de cair por causa da gravidade?

![TikZ 1 — Movimento horizontal e queda vertical simultâneos](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/1serie/unidade-4-cinematica-vetorial/figuras/cap07_tikz-1.png)

---

## 1. Dois Movimentos ao Mesmo Tempo

Um movimento composto é formado por componentes. Em lançamentos, geralmente separamos em:

- eixo horizontal, indicado por $$x$$;
- eixo vertical, indicado por $$y$$.

No modelo ideal, sem resistência do ar, a gravidade atua apenas na vertical. Por isso, o movimento horizontal pode ser uniforme enquanto o vertical é acelerado.

### 1.1 Por que separar ajuda?

Separar componentes não é "dividir a realidade". É organizar o problema.

O objeto faz uma trajetória única, mas podemos calcular:

- quanto avança para frente;
- quanto sobe ou desce;
- quanto tempo permanece em movimento.

Essa leitura torna o problema mais simples e mais fiel.

---

## 2. Lançamento Horizontal

No lançamento horizontal, o objeto sai com velocidade apenas na direção horizontal. A queda vertical começa no mesmo instante.

O tempo de queda depende da altura:

$$t_{queda} = \sqrt{\frac{2h}{g}}$$

O alcance horizontal é:

$$x = v_0 \cdot t_{queda}$$

Isso explica por que duas bolas podem cair juntas: se partem da mesma altura e não consideramos o ar, o tempo vertical é o mesmo.

> ⚡ **Física no Dia a Dia:**  
> Em uma mesa, uma bolinha que rola para fora e outra que apenas cai da borda chegam ao chão quase ao mesmo tempo, se saírem da mesma altura.

---

## 3. Lançamento Oblíquo

No lançamento oblíquo, a velocidade inicial faz um ângulo com a horizontal. Então ela precisa ser decomposta.

As componentes são:

$$V_{0x} = v_0 \cdot \cos(\theta)$$

$$V_{0y} = v_0 \cdot \sin(\theta)$$

![TikZ 2 — Decomposição da velocidade inicial no lançamento oblíquo](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Fisica/1serie/unidade-4-cinematica-vetorial/figuras/cap07_tikz-2.png)

Com isso, podemos calcular:

$$T_{voo} = \frac{2v_0 \cdot \sin(\theta)}{g}$$

$$H_{max} = \frac{(v_0 \cdot \sin(\theta))^2}{2g}$$

$$A = \frac{v_0^2 \cdot \sin(2\theta)}{g}$$

📝 **Exemplo:**

Um objeto é lançado com:

$$v_0 = 20\ \mathrm{m/s}$$

$$\theta = 30^{\circ}$$

$$g = 10\ \mathrm{m/s^2}$$

Componentes:

$$V_{0x} = 20 \cdot \cos(30^{\circ}) \approx 17{,}3\ \mathrm{m/s}$$

$$V_{0y} = 20 \cdot \sin(30^{\circ}) = 10\ \mathrm{m/s}$$

Tempo de voo:

$$T_{voo} = \frac{2 \cdot 10}{10} = 2\ \mathrm{s}$$

Altura máxima:

$$H_{max} = \frac{10^2}{2 \cdot 10} = 5\ \mathrm{m}$$

Alcance:

$$A = \frac{20^2 \cdot \sin(60^{\circ})}{10} \approx 34{,}6\ \mathrm{m}$$

---

## 4. Modelo Ideal e Mundo Real

As fórmulas acima usam um modelo ideal. Elas ignoram resistência do ar, vento, rotação do objeto e detalhes do lançamento.

Isso não torna o modelo inútil. Torna o modelo delimitado.

Na Física, um bom modelo precisa dizer:

- o que considera;
- o que simplifica;
- até onde suas respostas são confiáveis.

---

## NA VIDA REAL

No salto em distância, o ângulo real de saída costuma ser menor que 45 graus. Atletas já chegam com velocidade horizontal alta e precisam combinar impulso, técnica e tempo de contato no solo. Por isso, um valor próximo de 22 graus pode ser mais realista em competições.

---

## E A BÍBLIA NISSO?

> *"Quem é fiel no pouco também é fiel no muito; e quem é desonesto no pouco também é desonesto no muito."*  
> Lucas 16.10

Em movimentos compostos, o resultado depende de componentes bem analisadas. Na vida, decisões grandes também costumam depender de pequenas partes feitas com fidelidade.

- **Cuidar das componentes.** Entender cada parte evita conclusões bonitas, mas erradas.

> 💬 **Para Conversar:**  
> Que situação da sua rotina melhora quando você separa o problema em partes menores?

---

## Simplificando

Movimentos compostos podem ser estudados por componentes. No lançamento horizontal, a queda depende da altura. No lançamento oblíquo, a velocidade inicial é separada em componentes horizontal e vertical.

---

## Para não esquecer

- **Componentes ajudam a calcular:** eixo $$x$$ e eixo $$y$$ são analisados separadamente.
- **A gravidade atua na vertical:** no modelo ideal, ela não muda a velocidade horizontal.
- **Modelo tem limite:** resistência do ar e técnica podem mudar o resultado real.

---

## Fórmulas do capítulo

- **Tempo de queda:** $$t_{queda} = \sqrt{\frac{2h}{g}}$$.
- **Componentes da velocidade:** $$V_{0x} = v_0 \cdot \cos(\theta)$$ e $$V_{0y} = v_0 \cdot \sin(\theta)$$.
- **Alcance oblíquo:** $$A = \frac{v_0^2 \cdot \sin(2\theta)}{g}$$.
