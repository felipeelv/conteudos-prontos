# Capítulo 3 — Construção de Polígonos Regulares

## Como transformar regularidade em procedimento?

Um desenho aproximado pode parecer correto, mas uma construção geométrica precisa garantir medidas e relações. O compasso preserva distâncias, a régua conecta pontos e o algoritmo impede atalhos. Quando cada passo é verificável, a figura final fica mais confiável.

> 💭 **Pense um pouco:**  
> O que acontece se a abertura do compasso muda no meio da construção?

## 1. Instrumentos e Conferência

Construção geométrica é um desenho feito por passos exatos.

### 1.1 O que a régua garante

A **régua** serve para traçar segmentos retos entre pontos já definidos. Ela não mede a regularidade sozinha, mas conecta os pontos produzidos pela construção.

Em uma construção:

- pontos precisam ser marcados com clareza;
- segmentos ligam pontos em ordem;
- linhas auxiliares ajudam a localizar novos pontos;
- a conferência final verifica se a figura obedece à definição.

### 1.2 O que o compasso mantém

O **compasso** mantém uma distância fixa. Ele pode transportar uma medida, traçar arcos e construir circunferências.

![TikZ 1 — Segmento, raio e compasso](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras/cap03_tikz-1.png)

Ideias centrais:

- a abertura do compasso representa uma distância;
- o arco marca pontos com a mesma distância do centro;
- mudar a abertura sem necessidade altera a construção.

## 2. Construções Conhecidas

Triângulo equilátero e quadrado retomam a lógica de preservar medidas.

### 2.1 Triângulo equilátero

Para construir um triângulo equilátero, comece por um segmento dado $$\overline{AB}$$ e use dois arcos de mesma abertura.

![TikZ 2 — Triângulo equilátero por dois arcos](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras/cap03_tikz-2.png)

Passos:

- trace $$\overline{AB}$$;
- abra o compasso com a medida de $$\overline{AB}$$;
- trace um arco com centro em $$A$$;
- trace outro arco com centro em $$B$$;
- marque uma interseção como $$C$$;
- ligue $$A$$ a $$C$$ e $$B$$ a $$C$$.

Conferência:

$$\overline{AB} = \overline{BC} = \overline{CA}$$

### 2.2 Quadrado

Para construir um quadrado, comece pelo lado $$\overline{AB}$$. Depois, construa perpendiculares por $$A$$ e por $$B$$ e transfira a medida do lado com o compasso.

![TikZ 3 — Quadrado a partir de um lado](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras/cap03_tikz-3.png)

Conferência:

$$\overline{AB} = \overline{BC} = \overline{CD} = \overline{DA}$$

$$\hat{A} = \hat{B} = \hat{C} = \hat{D} = 90^{\circ}$$

## 3. Hexágono Regular

O hexágono regular inscrito nasce naturalmente da circunferência.

### 3.1 Por que o lado é igual ao raio

No hexágono regular inscrito, a volta completa é dividida em 6 ângulos centrais iguais.

$$a_c = \frac{360^{\circ}}{6}$$

$$a_c = 60^{\circ}$$

Essa divisão faz cada lado do hexágono regular inscrito ter a mesma medida do raio da circunferência.

$$lado = raio$$

![TikZ 4 — Hexágono regular inscrito](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras/cap03_tikz-4.png)

### 3.2 Marcando seis pontos na circunferência

Para construir o hexágono, mantenha o compasso aberto com a medida do raio e marque pontos consecutivos sobre a circunferência.

Passos:

- trace uma circunferência de centro $$O$$;
- escolha um ponto $$A$$ sobre a circunferência;
- mantenha o compasso aberto com a medida do raio;
- com centro em $$A$$, marque o próximo ponto;
- repita a marcação até obter 6 pontos;
- ligue pontos consecutivos com régua;
- confira se o último ponto fecha no ponto inicial.

> 📐 **Fazendo as Contas:**  
> Se a volta completa tem 360 graus, seis partes iguais têm 60 graus cada.

## 4. Algoritmo e Fluxograma

Um algoritmo torna a construção repetível e verificável.

### 4.1 Escrevendo os passos

Um **algoritmo** é uma sequência ordenada de ações. Em geometria, ele registra instrumento, ação, ponto produzido e conferência.

Para o hexágono:

- início: circunferência com centro marcado;
- ação: manter a abertura igual ao raio;
- repetição: marcar 6 pontos consecutivos;
- resultado: ligar os vértices;
- conferência: verificar o fechamento e os lados congruentes.

![TikZ 5 — Fluxograma do hexágono regular](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/figuras/cap03_tikz-5.png)

### 4.2 Conferindo o resultado

A construção termina apenas depois da conferência.

Verifique:

- os 6 vértices estão sobre a circunferência;
- os lados consecutivos têm a medida do raio;
- o último ponto fecha no ponto inicial;
- o hexágono não dependeu de olhômetro.

---

## NA VIDA REAL

Construções regulares aparecem em vitrais, cúpulas, mosaicos, peças industriais e desenhos técnicos. O hexágono regular é especialmente comum porque se relaciona diretamente com a circunferência e encaixa bem em padrões. O procedimento garante que a forma não seja apenas parecida, mas regular de fato.

---

## E A BÍBLIA NISSO?

> *"Então, os presidentes e os sátrapas procuravam achar ocasião contra Daniel a respeito do reino; mas não puderam achá-la."*  
> Daniel 6.4

O hexágono regular não nasce de improviso: ele depende de manter a mesma abertura, repetir o passo correto e conferir o fechamento. A integridade também aparece quando processo e resultado permanecem coerentes.

- **Procedimento íntegro produz resultado íntegro.** Cada passo preserva uma medida ou relação necessária para a figura final.

> 💬 **Para Conversar:**  
> Por que um pequeno erro no primeiro passo pode alterar toda a construção?

---

## Simplificando

Construção regular é algoritmo geométrico: cada passo preserva uma medida, uma direção ou uma relação. O triângulo equilátero usa dois arcos, o quadrado usa perpendiculares e transferência de lado, e o hexágono regular inscrito usa a medida do raio repetida seis vezes na circunferência.

---

## Para não esquecer

- Régua conecta pontos por segmentos;
- Compasso mantém e transfere distâncias;
- Triângulo equilátero usa dois arcos de mesma abertura;
- Quadrado exige lados congruentes e ângulos retos;
- Hexágono regular inscrito tem lado igual ao raio.
