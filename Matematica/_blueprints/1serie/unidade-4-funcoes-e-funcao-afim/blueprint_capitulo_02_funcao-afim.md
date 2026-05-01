# Blueprint Técnico — Capítulo 2: Função Afim

## 1. Identificação
- Disciplina: Matemática
- Ano/Série: 1ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 — Introdução às Funções e Função Afim
- Capítulo: 2 de 2
- Título: Função Afim
- Código BNCC principal: EM13MAT302
- Código BNCC complementar: EM13MAT303
- Profundidade geral: N3 — CONSOLIDA + APLICA

## 2. Objetivo do capítulo
Levar o aluno a compreender e aplicar a função afim `f(x) = ax + b`, interpretando seus coeficientes, gráfico, crescimento, zero, estudo do sinal e usos em modelagem de situações com parte fixa e parte variável proporcional.

## 3. Pergunta-problema
*"Como uma única fórmula pode representar uma cobrança com valor fixo e valor variável ao mesmo tempo?"*

## 4. Tensão narrativa
Uma empresa cobra R$ 80 fixos mais R$ 12 por hora de serviço. O preço não começa do zero, mas cresce sempre na mesma taxa. A função afim organiza essa situação em uma regra simples: `C(t) = 12t + 80`. O capítulo mostra como ler essa fórmula, desenhar seu gráfico, encontrar seu zero e decidir quando a função é positiva ou negativa.

## 5. Sequência conceitual obrigatória
1. Retomar o conceito de função do Capítulo 1.
2. Apresentar a forma geral `f(x) = ax + b`, com `a \neq 0`.
3. Interpretar `b` como valor inicial/intercepto no eixo y.
4. Interpretar `a` como taxa de variação ou coeficiente angular.
5. Construir a reta a partir de tabela e de dois pontos.
6. Explicar crescimento e decrescimento a partir do sinal de `a`.
7. Calcular o zero da função `x_0 = -b/a`.
8. Fazer estudo do sinal por intervalos.
9. Aplicar a função afim a tarifas, comissões, conversões e comparação de planos.
10. Apresentar Legendre e o método dos mínimos quadrados como referência histórica para ajuste linear.
11. Conectar a taxa constante à VP Integridade.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Definição `f(x) = ax + b` | 10% | N2 | Revisar o modelo já visto no 9º ano. |
| Coeficientes `a` e `b` | 20% | N3 | `a` como taxa/inclinação; `b` como valor inicial/intercepto. |
| Gráfico e reta | 15% | N3 | Construir por tabela, pontos e interpretação dos coeficientes. |
| Crescimento e decrescimento | 15% | N3 | `a > 0` cresce; `a < 0` decresce. |
| Zero da função | 15% | N3 | Resolver `ax + b = 0` e interpretar cruzamento no eixo x. |
| Estudo do sinal | 15% | N3 | Determinar onde a função é positiva, negativa ou nula. |
| Aplicações práticas | 10% | N3 | Modelagem e comparação de planos. |

## 7. Conceitos obrigatórios
- Função afim
- Função linear como caso particular
- Coeficiente angular
- Coeficiente linear
- Taxa de variação
- Valor inicial
- Reta
- Crescimento
- Decrescimento
- Zero da função
- Estudo do sinal
- Modelagem linear
- Parte fixa
- Parte variável proporcional
- Adrien-Marie Legendre
- Mínimos quadrados

## 8. Termos a explicar com tradução curta
- **Função afim:** função da forma `f(x) = ax + b`.
- **Coeficiente angular:** número `a`, que indica a variação de `f(x)` a cada aumento de 1 unidade em `x`.
- **Coeficiente linear:** número `b`, que indica o valor de `f(0)` e o ponto onde a reta cruza o eixo y.
- **Zero da função:** valor de `x` para o qual `f(x) = 0`.
- **Estudo do sinal:** análise dos intervalos em que a função é positiva, negativa ou nula.
- **Modelagem linear:** uso de uma função afim para representar uma situação real com taxa constante.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- a forma `f(x) = ax + b` com `a \neq 0`;
- que função linear é o caso particular com `b = 0`;
- o significado de `a` como taxa de variação e inclinação;
- o significado de `b` como valor inicial/intercepto;
- como construir o gráfico por tabela e por dois pontos;
- que o gráfico de função afim é uma reta;
- crescimento quando `a > 0` e decrescimento quando `a < 0`;
- o cálculo do zero `x_0 = -b/a`;
- o estudo do sinal a partir do zero e do sinal de `a`;
- aplicações em tarifas, salários, comissões, conversão de unidades e comparação de planos;
- Legendre como referência histórica para ajuste linear e mínimos quadrados;
- a ponte VP: taxa constante e coerência.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- usar derivadas para explicar taxa de variação;
- estudar regressão linear por fórmulas matriciais;
- aprofundar mínimos quadrados além da contextualização histórica;
- antecipar função quadrática como conteúdo central;
- trabalhar inequações complexas ou sistemas não lineares;
- discutir coeficiente angular como tangente do ângulo em geometria analítica avançada, salvo menção como conteúdo futuro.

## 11. Linguagem esperada
- Linguagem operacional e aplicada, adequada à 1ª Série EM.
- Sempre interpretar a fórmula antes de calcular.
- Usar unidades nos exemplos: reais, horas, minutos, quilômetros, graus.
- Mostrar a reta como consequência da taxa constante, não apenas como regra.
- Destacar a diferença entre afim e linear sem alongar a discussão terminológica.
- Tratar Legendre em parágrafo breve, conectado à busca pela reta que melhor representa dados.

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 2 — Função Afim`
- Pergunta-problema: `## Como representar uma relação com parte fixa e parte variável?`
- Abertura narrativa: serviço técnico com taxa fixa e valor por hora.
- Para Conversar de intro: "Em uma cobrança, o que muda e o que permanece fixo?"
- Desenvolvimento em 5 blocos:
  - Bloco 1 — A Forma da Função Afim
    - `### 1.1 f(x) = ax + b`
    - `### 1.2 Afim e linear: qual a diferença?`
  - Bloco 2 — Coeficientes
    - `### 2.1 Coeficiente angular`
    - `### 2.2 Coeficiente linear`
  - Bloco 3 — Gráfico
    - `### 3.1 Tabela e pontos`
    - `### 3.2 A reta no plano cartesiano`
  - Bloco 4 — Zero e Sinal
    - `### 4.1 Zero da função`
    - `### 4.2 Estudo do sinal`
  - Bloco 5 — Modelagem
    - `### 5.1 Tarifas e comissões`
    - `### 5.2 Comparação de planos`
- Enquanto isso: Legendre publica o método dos mínimos quadrados em 1805.
- NA VIDA REAL: plano de telefonia, corrida por aplicativo, comissão de vendedor e conversão de temperatura.
- E para hoje: Daniel 6:4 e a ideia de coerência no caminho.
- Simplificando: função afim modela uma relação com valor inicial e taxa constante.
- Para não esquecer: 5 bullets sobre `a`, `b`, reta, zero e sinal.

## 13. Fórmulas e notações centrais
- `f(x) = ax + b`, com `a \neq 0`
- `a = \frac{\Delta y}{\Delta x}`
- `a = \frac{f(x_2) - f(x_1)}{x_2 - x_1}`
- `f(0) = b`
- `x_0 = -\frac{b}{a}`
- Se `a > 0`, a função é crescente.
- Se `a < 0`, a função é decrescente.
- No estudo do sinal:
  - `f(x_0) = 0`
  - para `a > 0`, `f(x) < 0` antes do zero e `f(x) > 0` depois do zero;
  - para `a < 0`, `f(x) > 0` antes do zero e `f(x) < 0` depois do zero.

## 14. Exemplo obrigatório
Usar pelo menos um exemplo completo com serviço técnico:
- Situação: taxa fixa de R$ 80 mais R$ 12 por hora.
- Função: `C(t) = 12t + 80`.
- Interpretação: `12` é a taxa por hora; `80` é o valor inicial.
- Cálculos:
  - `C(5) = 12 \cdot 5 + 80 = 140`
  - `C(10) = 12 \cdot 10 + 80 = 200`
- Discussão: como a reta cresceria no gráfico e por que não passa pela origem.

Incluir também comparação de planos:
- Plano A: `C_1(m) = 0,80m + 40`
- Plano B: `C_2(m) = 1,20m + 20`
- Igualdade: `0,80m + 40 = 1,20m + 20`
- Resultado: `m = 50`
- Interpretação: antes de 50 minutos um plano é mais barato; depois de 50 minutos, o outro.

## 15. Âncoras visuais/concretas
- Gráfico de uma reta crescente com `a > 0`.
- Gráfico de uma reta decrescente com `a < 0`.
- Destaque visual para intercepto `b` no eixo y.
- Destaque visual para zero da função no eixo x.
- Tabela comparando `x`, `f(x)` e variação constante.
- Diagrama de comparação de dois planos com ponto de equilíbrio.

## 16. Conexão VP
- Unidade VP: Integridade.
- Versículo principal sugerido: Daniel 6:4.
- Personagem bíblico: Daniel.
- Ponteiro específico: a taxa constante da função afim mostra coerência no caminho; a cada passo em `x`, a variação em `y` segue a mesma regra.
- Conexão temática: Daniel foi encontrado sem erro ou culpa porque sua vida preservava coerência mesmo sob avaliação. Na função afim, a reta revela essa coerência: não há salto escondido nem mudança arbitrária de regra.
- Pergunta formativa: "Sua 'taxa de variação' muda quando alguém está observando, ou seus valores permanecem constantes?"

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **identificará** uma função afim e interpretará os coeficientes `a` e `b`.
2. O aluno **representará** graficamente funções afins a partir de tabela, dois pontos ou coeficientes.
3. O aluno **determinará** crescimento ou decrescimento pelo sinal de `a`.
4. O aluno **calculará** o zero da função e fará estudo do sinal.
5. O aluno **modelará** situações reais com funções afins e comparará alternativas.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Reconhece a forma `f(x) = ax + b`.
- Interpreta `a` como taxa de variação.
- Interpreta `b` como valor inicial.

**Para o objetivo 2:**
- Monta tabela de valores coerente.
- Marca pontos corretamente no plano cartesiano.
- Traça a reta sem tratar pontos isolados como gráfico completo.

**Para o objetivo 3:**
- Conclui crescimento quando `a > 0`.
- Conclui decrescimento quando `a < 0`.
- Relaciona sinal de `a` à inclinação da reta.

**Para o objetivo 4:**
- Resolve `ax + b = 0`.
- Calcula `x_0 = -b/a`.
- Indica intervalos de positividade e negatividade.

**Para o objetivo 5:**
- Traduz taxa fixa e taxa variável em uma função.
- Compara duas funções afins por igualdade ou gráfico.
- Interpreta o ponto de equilíbrio em contexto.

## 18. Critérios de aceite
O capítulo está adequado se:
- define função afim e diferencia de função linear;
- interpreta corretamente `a` e `b`;
- inclui gráfico, crescimento/decrescimento, zero e estudo do sinal;
- traz pelo menos um problema de modelagem com taxa fixa e variável;
- inclui comparação de dois planos;
- apresenta Legendre e mínimos quadrados sem aprofundamento técnico excessivo;
- mantém a VP Integridade como ponte breve;
- não usa derivadas, cálculo diferencial ou regressão linear avançada.

## 19. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/1serie/unidade-4-funcoes-e-funcao-afim.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13MAT302 e EM13MAT303.
- Adrien-Marie Legendre — `Éléments de géométrie` (1794); método dos mínimos quadrados (1805).
- Bíblia: Daniel 6:4; Provérbios 11:3.
