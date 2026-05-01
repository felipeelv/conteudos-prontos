# Blueprint Técnico — Capítulo 4: Geometria Analítica Básica

## 1. Identificação
- Disciplina: Geometria
- Ano/Série: 9º Ano EF II
- Bimestre: 2º
- Unidade: 4 — Polígonos e Construções Geométricas
- Capítulo: 4 de 4
- Título: Geometria Analítica Básica
- Código BNCC: EF09MA15; EF09MA16
- Profundidade geral: N3, com pico N4 em distância entre dois pontos

## 2. Objetivo do capítulo
Levar o aluno a usar o plano cartesiano como ferramenta geométrica para localizar pontos, calcular ponto médio, determinar distância entre dois pontos e aplicar esses cálculos em perímetros e áreas simples.

## 3. Pergunta-problema
*"Como transformar a posição de pontos em contas que medem distância, meio do caminho e tamanho de figuras?"*

## 4. Tensão narrativa
Uma figura no papel parece visual, mas suas coordenadas permitem cálculo exato. A tensão do capítulo é desenho × localização numérica: o plano cartesiano traduz geometria em pares ordenados.

## 5. Sequência conceitual obrigatória
1. Reativar eixos $$x$$ e $$y$$, origem e quadrantes.
2. Definir coordenada como par ordenado $$(x, y)$$.
3. Localizar pontos em diferentes quadrantes.
4. Definir ponto médio como ponto que divide o segmento em duas partes iguais.
5. Apresentar fórmula de ponto médio.
6. Resolver exemplos de ponto médio com coordenadas positivas e negativas.
7. Definir distância entre dois pontos como comprimento do segmento.
8. Deduzir a fórmula da distância por triângulo retângulo e Pitágoras.
9. Resolver exemplos de distância.
10. Aplicar distância a perímetros de polígonos no plano.
11. Aplicar base e altura a áreas simples no plano cartesiano.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Plano cartesiano | 15% | N1 | Reativar eixos, origem, quadrantes e pares ordenados. |
| Ponto médio de um segmento | 25% | N3 | Coração 1. Média das coordenadas, coordenada a coordenada. |
| Distância entre dois pontos | 35% | N4 | Coração 2. Aplicação direta de Pitágoras no triângulo de deslocamentos. |
| Perímetros e áreas no plano cartesiano | 25% | N3 | Usar distância e medidas horizontais/verticais em figuras simples. |

## 7. Conceitos obrigatórios
- Plano cartesiano
- Eixo $$x$$
- Eixo $$y$$
- Origem
- Abscissa
- Ordenada
- Par ordenado
- Quadrantes
- Segmento
- Ponto médio
- Distância entre dois pontos
- Deslocamento horizontal
- Deslocamento vertical
- Perímetro
- Área

## 8. Termos a explicar com explicação curta
- **Plano cartesiano:** plano formado por dois eixos perpendiculares que se cruzam na origem.
- **Abscissa:** primeira coordenada do ponto, associada ao eixo $$x$$.
- **Ordenada:** segunda coordenada do ponto, associada ao eixo $$y$$.
- **Ponto médio:** ponto que divide um segmento em duas partes de mesmo comprimento.
- **Distância:** comprimento do segmento entre dois pontos.
- **Deslocamento:** diferença entre coordenadas em uma direção.

## 9. Procedimentos obrigatórios
Coordenadas de um ponto:

$$P = (x, y)$$

Ponto médio de $$A(x_A, y_A)$$ e $$B(x_B, y_B)$$:

$$M = \left(\frac{x_A + x_B}{2}, \frac{y_A + y_B}{2}\right)$$

Distância entre dois pontos:

$$d(A, B) = \sqrt{(x_B - x_A)^2 + (y_B - y_A)^2}$$

Caso sobre o eixo $$x$$:

$$d = |x_B - x_A|$$

Exemplo obrigatório:
- Escola em $$(0, 0)$$ e casa em $$(300, 400)$$.
- Distância:

$$d = \sqrt{300^2 + 400^2}$$

$$d = \sqrt{250000}$$

$$d = 500$$

- Ponto médio:

$$M = (150, 200)$$

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que coordenadas localizam pontos de modo único;
- que ponto médio é média das coordenadas;
- que a fórmula da distância vem do Teorema de Pitágoras;
- como calcular distância quando os pontos têm coordenadas negativas;
- como usar distância para calcular perímetro;
- como usar base e altura em figuras simples no plano cartesiano;
- que GPS e mapas usam a mesma ideia geral de coordenadas, sem exigir geodésia.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- ensinar equação da reta;
- ensinar coeficiente angular como fórmula;
- ensinar equação geral da reta;
- ensinar equação da circunferência;
- ensinar cônicas;
- ensinar vetores;
- ensinar função afim;
- usar fórmula de Heron;
- transformar Descartes em biografia longa.

## 12. Linguagem esperada
- Reativar vocabulário antes de calcular.
- Explicar cada coordenada separadamente.
- Em distância, mostrar os deslocamentos horizontal e vertical antes da fórmula.
- Usar uma operação por linha nos exemplos.
- Evitar chamar toda geometria analítica formal de "conteúdo de agora"; este é apenas o início.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 4 — Geometria Analítica Básica`
- Pergunta-problema: `## Como medir uma figura usando coordenadas?`
- Abertura narrativa: Waze/GPS ou Descartes e o plano cartesiano.
- Para Conversar de intro: "Como um aplicativo sabe onde você está?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Plano Cartesiano
    - `### 1.1 Eixos, origem e quadrantes`
    - `### 1.2 Cada ponto como par ordenado`
  - Bloco 2 — Ponto Médio
    - `### 2.1 Meio do caminho em cada coordenada`
    - `### 2.2 Exemplos com números positivos e negativos`
  - Bloco 3 — Distância
    - `### 3.1 Transformando deslocamentos em triângulo`
    - `### 3.2 Pitágoras no plano cartesiano`
  - Bloco 4 — Figuras no Plano
    - `### 4.1 Perímetro por distância`
    - `### 4.2 Áreas com base e altura`
- Sua Parte: calcular ponto médio e distância entre pares de pontos.
- Curiosidade da Ciência: Descartes e a união entre álgebra e geometria.
- Enquanto isso...: João 14:2 como ponte para lugar único e endereço exato.
- E para hoje...: planta da escola, mapa do bairro e combinados de carona.
- Esse foi o "cara": René Descartes.
- Você já pensou nisso?: por que dois números bastam para localizar um ponto no plano?
- Simplificando: coordenadas transformam posição em cálculo.
- Para não esquecer: 5 bullets sobre eixos, coordenadas, ponto médio, distância e perímetro.

## 14. Âncoras visuais/concretas
- Plano cartesiano com quatro quadrantes.
- Segmento com ponto médio destacado.
- Triângulo retângulo formado pelos deslocamentos $$\Delta x$$ e $$\Delta y$$.
- Mapa simples da escola até a casa.
- Polígono no plano com vértices coordenados.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: João 14:2.
- Ponteiro específico: cada ponto tem um par único de coordenadas.
- Conexão temática: integridade aparece como unicidade e coerência; um ponto não tem dois endereços no mesmo sistema de referência.

## 16. Critérios de aceite
O capítulo está adequado se:
- reativa plano cartesiano sem alongar demais;
- calcula ponto médio por média coordenada a coordenada;
- deduz ou justifica distância via Pitágoras;
- resolve pelo menos um exemplo de distância com substituição explícita;
- aplica distância a perímetro ou área simples;
- não antecipa equação da reta, função afim, vetores, circunferência ou cônicas.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **localizará** pontos no plano cartesiano por pares ordenados.
2. O aluno **determinará** o ponto médio de um segmento.
3. O aluno **calculará** a distância entre dois pontos no plano cartesiano.
4. O aluno **aplicará** coordenadas no cálculo de perímetros e áreas simples.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Identifica abscissa e ordenada.
- Reconhece origem e quadrantes.
- Plota pontos corretamente.

**Para o objetivo 2:**
- Soma coordenadas correspondentes.
- Divide cada soma por 2.
- Interpreta o resultado como meio do segmento.

**Para o objetivo 3:**
- Calcula diferenças entre coordenadas.
- Eleva deslocamentos ao quadrado.
- Extrai a raiz quadrada no final.

**Para o objetivo 4:**
- Usa distância para medir lados.
- Soma lados para obter perímetro.
- Usa base e altura quando a figura permite.

### Habilidades BNCC consolidadas no capítulo
- **EF09MA15**, ao resolver e elaborar problemas envolvendo distância no plano cartesiano.
- **EF09MA16**, ao determinar ponto médio e distância entre dois pontos no plano cartesiano.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- BNCC: EF09MA15; EF09MA16
- René Descartes, `La Géométrie`.
