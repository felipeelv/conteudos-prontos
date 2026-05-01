# Blueprint Técnico — Capítulo 1: Raízes n-ésimas

## 1. Identificação
- Disciplina: Matemática
- Ano/Série: 3ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 — Raízes Complexas e Aplicações
- Capítulo: 1 de 2
- Título: Raízes n-ésimas
- Código BNCC principal: EM13MAT403
- Profundidade geral: N3-N4 — CONSOLIDA + APRESENTA

## 2. Objetivo do capítulo
Levar o aluno a calcular e interpretar raízes n-ésimas de números complexos, usando a forma trigonométrica e o Teorema de De Moivre para obter todas as `n` raízes distintas, reconhecer raízes da unidade e compreender a representação geométrica como polígono regular.

## 3. Pergunta-problema
*"Por que um único número complexo pode ter várias raízes igualmente legítimas, e como encontrar todas elas?"*

## 4. Tensão narrativa
No conjunto dos reais, muitas vezes pensamos em "a raiz" como uma resposta principal. Nos complexos, essa intuição fica incompleta: uma raiz cúbica, quarta ou quinta pode se espalhar pelo plano em vários pontos. A forma trigonométrica mostra que todas as soluções aparecem quando variamos o índice `k`, e a geometria revela que elas não ficam ao acaso: formam um polígono regular.

## 5. Sequência conceitual obrigatória
1. Retomar forma trigonométrica de um complexo `z = \rho(\cos\theta + i\sin\theta)`.
2. Retomar De Moivre como base para potências e raízes.
3. Definir raiz n-ésima: `w` é raiz n-ésima de `z` se `w^n = z`.
4. Apresentar a fórmula geral das raízes n-ésimas.
5. Explicar o papel do índice `k = 0, 1, ..., n-1`.
6. Mostrar que há exatamente `n` raízes distintas em `\mathbb{C}`.
7. Calcular exemplo completo com raízes cúbicas de `1`.
8. Apresentar raízes da unidade como caso especial.
9. Interpretar argumentos separados por `2\pi/n`.
10. Representar as raízes como vértices de polígono regular.
11. Conectar com o Teorema de Sturm como contraparte real para contagem de raízes.
12. Conectar a simetria das raízes à VP Integridade.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Conceito de raiz n-ésima | 15% | N3 | `w` é raiz n-ésima de `z` se `w^n = z`. |
| Fórmula via De Moivre | 30% | N4 | Gerar todas as raízes por módulo e argumento. |
| `n` raízes distintas | 20% | N3 | Usar `k = 0, ..., n-1`; evitar raiz única. |
| Raízes da unidade | 15% | N3 | Caso especial `z = 1`. |
| Polígono regular | 20% | N3 | Raízes equidistribuídas no plano complexo. |

## 7. Conceitos obrigatórios
- Raiz n-ésima
- Forma trigonométrica
- Módulo
- Argumento
- Teorema de De Moivre
- Índice `k`
- `n` raízes distintas
- Raízes da unidade
- Círculo unitário
- Polígono regular
- Argumentos equidistantes
- Plano complexo
- Charles-François Sturm
- Teorema de Sturm como apresentação intuitiva

## 8. Termos a explicar com tradução curta
- **Raiz n-ésima:** número `w` que, elevado à potência `n`, resulta em `z`.
- **Módulo:** distância do complexo até a origem no plano.
- **Argumento:** ângulo que localiza o complexo em relação ao eixo real positivo.
- **De Moivre:** regra que conecta potências de complexos aos seus módulos e argumentos.
- **Raízes da unidade:** raízes n-ésimas do número `1`.
- **Polígono regular:** figura com lados e ângulos igualmente distribuídos; aqui, formada pelas raízes no plano complexo.
- **Teorema de Sturm:** método histórico para contar raízes reais em um intervalo sem resolvê-las explicitamente.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- que `w` é raiz n-ésima de `z` quando `w^n = z`;
- que a fórmula depende da forma trigonométrica de `z`;
- que o módulo das raízes é `\sqrt[n]{\rho}`;
- que os argumentos são `(\theta + 2k\pi)/n`;
- que `k` deve variar de `0` até `n-1`;
- que existem `n` raízes distintas em `\mathbb{C}`;
- que raízes consecutivas têm diferença angular de `2\pi/n`;
- que as raízes da unidade ficam sobre o círculo unitário;
- que as raízes formam polígono regular;
- um exemplo completo com raízes cúbicas de `1`;
- Sturm como referência histórica ligada à contagem de raízes;
- a ponte VP: raízes equidistantes e legítimas como imagem de integridade simétrica.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- formalizar análise complexa;
- usar teoria de grupos abstrata;
- demonstrar o Teorema Fundamental da Álgebra;
- desenvolver o Teorema de Sturm em algoritmo completo;
- introduzir Transformada de Fourier;
- trabalhar raízes de polinômios como conteúdo central, pois isso fica para o Capítulo 2;
- tratar apenas a raiz principal como se fosse a resposta completa.

## 11. Linguagem esperada
- Linguagem técnica e visual, adequada à 3ª Série EM.
- Ler a fórmula em partes antes de aplicar.
- Usar `sen` em textos explicativos e aceitar `\sin` nas fórmulas em LaTeX.
- Mostrar o índice `k` explicitamente em todos os exemplos.
- Reforçar que "distintas" não significa módulos diferentes; o módulo é o mesmo, o argumento muda.
- Tratar Sturm em parágrafo breve, conectado à pergunta "quantas raízes existem?".

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Raízes n-ésimas`
- Pergunta-problema: `## Como descobrir todas as raízes de um complexo?`
- Abertura narrativa: as raízes complexas não são uma resposta isolada, mas um conjunto organizado no plano.
- Para Conversar de intro: "Se `1^3 = 1`, será que existe outra raiz cúbica de `1` além do próprio `1`?"
- Desenvolvimento em 5 blocos:
  - Bloco 1 — O que é uma raiz n-ésima
    - `### 1.1 A condição w^n = z`
    - `### 1.2 Por que precisamos da forma trigonométrica`
  - Bloco 2 — A Fórmula Geral
    - `### 2.1 Módulo da raiz`
    - `### 2.2 Argumento da raiz`
    - `### 2.3 O papel do índice k`
  - Bloco 3 — Quantas Raízes Existem
    - `### 3.1 k = 0, 1, ..., n-1`
    - `### 3.2 Raízes distintas no plano complexo`
  - Bloco 4 — Raízes da Unidade
    - `### 4.1 O caso z = 1`
    - `### 4.2 Raízes cúbicas e quartas da unidade`
  - Bloco 5 — Geometria das Raízes
    - `### 5.1 Espaçamento angular 2pi/n`
    - `### 5.2 Polígono regular`
- Enquanto isso: Sturm e a pergunta histórica sobre contagem de raízes.
- NA VIDA REAL: cristalografia, simetria e construções geométricas.
- E para hoje: Provérbios 11:3 e integridade simétrica.
- Simplificando: uma raiz n-ésima de complexo gera `n` soluções igualmente espaçadas no plano.
- Para não esquecer: 5 bullets sobre definição, fórmula, índice `k`, raízes da unidade e polígono regular.

## 13. Fórmulas e notações centrais
- `w^n = z`
- `z = \rho(\cos\theta + i\sin\theta)`
- `z_k = \sqrt[n]{\rho}\left[\cos\left(\frac{\theta + 2k\pi}{n}\right) + i\sin\left(\frac{\theta + 2k\pi}{n}\right)\right]`
- `k = 0, 1, 2, ..., n-1`
- Raízes n-ésimas da unidade:
  - `z_k = \cos\left(\frac{2k\pi}{n}\right) + i\sin\left(\frac{2k\pi}{n}\right)`
  - `z_k = e^{2k\pi i/n}`
- Diferença angular entre raízes consecutivas: `2\pi/n`.

## 14. Exemplo obrigatório
Usar exemplo completo com as raízes cúbicas de `1`:
- Escrever `1 = 1(\cos 0 + i\sin 0)`.
- Aplicar `z_k = \cos(2k\pi/3) + i\sin(2k\pi/3)`, com `k = 0, 1, 2`.
- Calcular:
  - `z_0 = 1`
  - `z_1 = -1/2 + i\sqrt{3}/2`
  - `z_2 = -1/2 - i\sqrt{3}/2`
- Interpretar geometricamente: três pontos no círculo unitário formando triângulo equilátero.
- Fechar com alerta: usar só `k = 0` entrega apenas uma das três raízes.

## 15. Âncoras visuais/concretas
- Plano complexo com círculo de raio `\sqrt[n]{\rho}`.
- Pontos igualmente espaçados por ângulo `2\pi/n`.
- Triângulo equilátero para raízes cúbicas da unidade.
- Quadrado para raízes quartas da unidade.
- Tabela com colunas `k`, argumento, forma trigonométrica e forma algébrica.
- Diagrama comparando "uma raiz principal" com "todas as raízes".

## 16. Conexão VP
- Unidade VP: Integridade.
- Versículo principal sugerido: Provérbios 11:3.
- Personagem bíblico: Daniel.
- Ponteiro específico: raízes n-ésimas de um complexo formam polígono regular; cada vértice é uma raiz legítima, com o mesmo módulo e espaçamento simétrico.
- Conexão temática: integridade não exige uniformidade de posição, mas coerência de estrutura. As raízes são diferentes no argumento, mas preservam a mesma relação com o número original.
- Pergunta formativa: "Você consegue identificar situações em que várias soluções coexistem com igual valor, sem competir entre si?"

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **definirá** raiz n-ésima de um número complexo.
2. O aluno **aplicará** a fórmula das raízes n-ésimas via forma trigonométrica.
3. O aluno **determinará** todas as `n` raízes usando o índice `k`.
4. O aluno **reconhecerá** raízes da unidade e sua representação no círculo unitário.
5. O aluno **interpretará** geometricamente as raízes como vértices de polígono regular.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Escreve corretamente a condição `w^n = z`.
- Diferencia raiz real isolada de conjunto de raízes complexas.

**Para o objetivo 2:**
- Identifica `\rho` e `\theta` na forma trigonométrica.
- Calcula o módulo das raízes por `\sqrt[n]{\rho}`.
- Calcula os argumentos por `(\theta + 2k\pi)/n`.

**Para o objetivo 3:**
- Usa `k = 0, 1, ..., n-1`.
- Não omite raízes por considerar apenas a raiz principal.
- Verifica que obteve `n` respostas.

**Para o objetivo 4:**
- Reconhece o caso `z = 1`.
- Localiza raízes da unidade no círculo unitário.

**Para o objetivo 5:**
- Identifica o espaçamento angular `2\pi/n`.
- Relaciona as raízes a triângulo, quadrado ou polígono regular de `n` lados.

## 18. Critérios de aceite
O capítulo está adequado se:
- define raiz n-ésima por `w^n = z`;
- apresenta a fórmula geral em LaTeX;
- explicita `k = 0, 1, ..., n-1`;
- inclui exemplo completo das raízes cúbicas de `1`;
- afirma que há `n` raízes distintas em `\mathbb{C}`;
- explica raízes da unidade como caso especial;
- interpreta a distribuição como polígono regular;
- apresenta Sturm de modo breve e pertinente;
- mantém a VP Integridade como ponte formativa;
- não formaliza análise complexa, teoria de grupos, Fourier ou Sturm avançado.

## 19. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/3serie/unidade-4-raizes-complexas-aplicacoes.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13MAT403.
- Charles-François Sturm — `Mémoire sur la résolution des équations numériques` (1829).
- Bíblia: Provérbios 11:3; Daniel 6:4.
