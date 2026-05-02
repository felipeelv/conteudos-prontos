# Capítulo 2 — Construção de Polígonos Regulares

## Como construir sem medir no olho?

Desenhar um hexágono aproximado é rápido, mas não garante lados iguais. A construção geométrica usa instrumentos que restringem os movimentos para preservar medidas. Assim, a regularidade final depende de cada ação feita com precisão.

> 💭 **Pense um pouco:**  
> Qual a diferença entre desenhar e construir?

## 1. Instrumentos

Régua e compasso têm funções diferentes nas construções clássicas.

### 1.1 O que a régua pode fazer

A **régua sem marcações** serve para traçar retas e segmentos entre pontos. Ela não é usada para medir comprimentos nessa tradição.

Em uma construção, a régua:

- conecta dois pontos já definidos;
- prolonga linhas quando necessário;
- não cria uma distância por medição direta.

### 1.2 O que o compasso conserva

O **compasso** conserva uma distância. Ele traça circunferências, arcos e transporta a mesma abertura para outro lugar.

![TikZ 1 — Régua, compasso e raio](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/figuras/cap02_tikz-1.png)

Use o compasso para:

- manter a medida de um raio;
- marcar pontos a uma mesma distância de um centro;
- conferir se uma construção preservou lados congruentes.

## 2. Triângulo Equilátero

O triângulo equilátero nasce da interseção de dois arcos iguais.

### 2.1 Dois arcos e três lados iguais

Comece com um segmento $$\overline{AB}$$. Abra o compasso com essa medida e trace um arco com centro em $$A$$ e outro com centro em $$B$$.

![TikZ 2 — Triângulo equilátero por arcos](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/figuras/cap02_tikz-2.png)

Passos:

- trace $$\overline{AB}$$;
- abra o compasso com a medida de $$\overline{AB}$$;
- trace um arco com centro em $$A$$;
- trace outro arco com centro em $$B$$;
- marque uma interseção como $$C$$;
- ligue $$A$$ a $$C$$ e $$B$$ a $$C$$.

### 2.2 Conferindo a construção

Como $$C$$ está nos dois arcos, ele fica à mesma distância de $$A$$ e de $$B$$.

$$\overline{AB} = \overline{BC} = \overline{CA}$$

Essa igualdade confirma que o triângulo é equilátero.

## 3. Quadrado

O quadrado pode ser construído a partir de uma circunferência e dois diâmetros perpendiculares.

### 3.1 Diâmetro e mediatriz

Trace uma circunferência de centro $$O$$ e marque um diâmetro $$\overline{AC}$$. Depois trace a mediatriz desse diâmetro, encontrando os pontos $$B$$ e $$D$$ na circunferência.

![TikZ 3 — Quadrado inscrito por diâmetros perpendiculares](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/figuras/cap02_tikz-3.png)

Elementos usados:

- **diâmetro:** segmento que passa pelo centro e liga dois pontos da circunferência;
- **mediatriz:** reta perpendicular a um segmento que passa por seu ponto médio;
- **vértices:** quatro pontos sobre a circunferência.

### 3.2 Ligando pontos consecutivos

Depois de marcar $$A$$, $$B$$, $$C$$ e $$D$$, ligue pontos consecutivos.

No quadrado inscrito de raio $$r$$:

$$\ell = r\sqrt{2}$$

A construção deve ser conferida por:

- quatro lados congruentes;
- quatro ângulos retos;
- quatro vértices sobre a mesma circunferência.

## 4. Hexágono Regular

O hexágono regular inscrito usa a mesma abertura do raio seis vezes.

### 4.1 Seis arcos com o mesmo raio

Trace uma circunferência de centro $$O$$ e raio $$r$$. Escolha um ponto $$A$$ na circunferência e mantenha o compasso com abertura $$r$$.

![TikZ 4 — Hexágono regular inscrito](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas/figuras/cap02_tikz-4.png)

Passos:

- trace a circunferência de centro $$O$$;
- marque $$A$$ sobre a circunferência;
- mantenha o compasso com abertura $$r$$;
- marque arcos sucessivos sobre a circunferência;
- obtenha seis pontos;
- ligue pontos consecutivos com a régua.

### 4.2 Por que o lado é igual ao raio

O centro do hexágono regular inscrito forma seis triângulos equiláteros com os vértices consecutivos. Por isso, cada lado tem a mesma medida do raio.

$$\ell = r$$

Essa é a razão de a abertura do compasso não mudar durante a construção.

> 👁️ **Observe:**  
> Se a abertura do compasso muda, o sexto ponto pode não fechar no ponto inicial.

---

## NA VIDA REAL

Construções com régua e compasso aparecem em marcenaria, desenho técnico, moldes, peças hexagonais e projetos geométricos. O objetivo não é desenhar bonito, mas produzir uma figura cujas propriedades possam ser conferidas. A precisão do instrumento protege a regularidade da figura.

---

## E A BÍBLIA NISSO?

> *"Segundo tudo o que eu te mostrar para modelo do tabernáculo, assim o fareis."*  
> Êxodo 25.9

Construir conforme um modelo exige fidelidade aos passos e às medidas. Na geometria, improvisar uma abertura ou pular uma marcação compromete o resultado.

- **Fidelidade ao modelo preserva a forma.** A construção correta depende de repetir a ação certa sem alterar a medida.

> 💬 **Para Conversar:**  
> Em que situações um pequeno desvio muda bastante o resultado final?

---

## Simplificando

Régua e compasso constroem com precisão porque cada instrumento preserva uma ação elementar: traçar retas ou transportar distâncias. O triângulo equilátero usa dois arcos, o quadrado usa diâmetros perpendiculares e o hexágono regular mantém o raio como lado.

---

## Para não esquecer

- Régua sem marcações traça linhas, mas não mede;
- Compasso conserva e transporta distâncias;
- Triângulo equilátero vem de dois arcos iguais;
- Quadrado inscrito pode nascer de diâmetros perpendiculares;
- No hexágono regular inscrito, $$\ell = r$$.
