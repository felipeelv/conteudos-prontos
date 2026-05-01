# Blueprint Técnico — Capítulo 2: Propriedades e Aplicações

## 1. Identificação
- Disciplina: Matemática
- Ano/Série: 2ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 — Determinantes
- Capítulo: 2 de 2
- Título: Propriedades e Aplicações
- Código BNCC principal: EM13MAT301
- Profundidade geral: N3-N4 — CONSOLIDA + APRESENTA

## 2. Objetivo do capítulo
Levar o aluno a usar propriedades dos determinantes para simplificar cálculos, reconhecer condições que anulam ou alteram o determinante e aplicar determinantes no cálculo de matriz inversa por cofatores e adjunta.

## 3. Pergunta-problema
*"Quais transformações preservam, alteram ou anulam o determinante de uma matriz?"*

## 4. Tensão narrativa
Depois de aprender a calcular determinantes, surge uma pergunta mais eficiente: será que sempre é preciso calcular tudo do zero? As propriedades mostram que algumas mudanças preservam o determinante, outras mudam apenas seu sinal, outras multiplicam seu valor e algumas anulam completamente a matriz. Esse repertório permite calcular melhor e entender por que a inversa só existe quando o determinante não zera.

## 5. Sequência conceitual obrigatória
1. Retomar determinante e matriz singular.
2. Apresentar `det(A^T) = det(A)`.
3. Mostrar que trocar duas linhas ou colunas inverte o sinal do determinante.
4. Mostrar que linha ou coluna nula anula o determinante.
5. Mostrar que linhas ou colunas proporcionais anulam o determinante.
6. Mostrar o efeito de multiplicar uma linha por constante.
7. Apresentar `det(lambda A) = lambda^n det(A)` para matriz `n x n`.
8. Apresentar `det(AB) = det(A) det(B)`.
9. Apresentar o Teorema de Jacobi em nível N4 controlado.
10. Construir matriz dos cofatores.
11. Definir adjunta como transposta da matriz dos cofatores.
12. Calcular inversa via `A^{-1} = (1/det A) adj(A)`.
13. Reforçar que inversa existe se, e somente se, `det(A) != 0`.
14. Conectar propriedades à VP Integridade.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Propriedades dos determinantes | 35% | N3 | Transposta, troca de linhas, linha nula, proporcionalidade, escala e produto. |
| Teorema de Jacobi | 15% | N4 | Apresentar `det(adj A) = (det A)^{n-1}` sem demonstração avançada. |
| Inversa via determinante | 30% | N3 | Usar `A^{-1} = (1/det A) adj(A)` com condição `det A != 0`. |
| Matriz dos cofatores | 10% | N3 | Construção elemento a elemento. |
| Matriz adjunta clássica | 10% | N3 | `adj(A) = (cof A)^T`. |

## 7. Conceitos obrigatórios
- Propriedades dos determinantes
- Transposta
- Troca de linhas ou colunas
- Linha nula
- Coluna nula
- Linhas proporcionais
- Colunas proporcionais
- Multiplicação por constante
- Determinante do produto
- Teorema de Jacobi
- Matriz dos cofatores
- Matriz adjunta
- Matriz inversa
- Pierre-Simon Laplace

## 8. Termos a explicar com tradução curta
- **Propriedade:** regra que permite prever o comportamento do determinante sem refazer todo o cálculo.
- **Transposta:** matriz obtida trocando linhas por colunas.
- **Linhas proporcionais:** linhas em que uma é múltipla da outra.
- **Matriz dos cofatores:** matriz formada pelos cofatores de cada posição.
- **Adjunta:** transposta da matriz dos cofatores.
- **Inversa:** matriz que, multiplicada pela original, resulta na identidade.
- **Teorema de Jacobi:** relação entre o determinante da adjunta e o determinante da matriz original.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- que `det(A^T) = det(A)`;
- que trocar duas linhas ou colunas inverte o sinal;
- que linha ou coluna nula zera o determinante;
- que linhas ou colunas proporcionais zeram o determinante;
- que `det(AB) = det(A) det(B)`;
- que, para matriz `n x n`, `det(lambda A) = lambda^n det(A)`;
- que `det(A + B) != det(A) + det(B)` em geral;
- o Teorema de Jacobi como resultado de referência, sem prova universitária;
- como montar a matriz dos cofatores;
- como obter `adj(A)` pela transposição da matriz dos cofatores;
- como calcular inversa por `A^{-1} = (1/det A) adj(A)`;
- que inversa existe se, e somente se, `det(A) != 0`;
- Laplace como referência histórica ligada ao desenvolvimento por cofatores;
- a ponte VP: propriedades revelam preservação, inversão ou anulação da integridade.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- demonstrar Jacobi com álgebra linear avançada;
- formalizar espaço vetorial, transformação linear ou jacobiano;
- usar decomposição LU;
- introduzir autovalores, autovetores ou diagonalização;
- tratar Cramer como conteúdo principal;
- afirmar que `det(A + B) = det(A) + det(B)`;
- calcular inversa quando `det(A) = 0`.

## 11. Linguagem esperada
- Linguagem operacional, com propriedades nomeadas por efeito.
- Usar exemplos numéricos curtos antes de generalizar.
- Dizer "preserva", "troca sinal", "anula", "escala" e "multiplica" para organizar a memória do aluno.
- Fazer a inversa via adjunta com matriz 2x2 ou 3x3 simples.
- Tratar Laplace em parágrafo breve, conectado à expansão por cofatores.

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 2 — Propriedades e Aplicações`
- Pergunta-problema: `## Quando o determinante muda sem recalcular tudo?`
- Abertura narrativa: propriedades como atalhos confiáveis para diagnosticar a matriz.
- Para Conversar de intro: "Se duas linhas de uma matriz dizem a mesma coisa em proporção, por que a estrutura perde força?"
- Desenvolvimento em 5 blocos:
  - Bloco 1 — Propriedades que Preservam ou Mudam Sinal
    - `### 1.1 Transposta`
    - `### 1.2 Troca de linhas ou colunas`
  - Bloco 2 — Propriedades que Anulam
    - `### 2.1 Linha ou coluna nula`
    - `### 2.2 Linhas ou colunas proporcionais`
  - Bloco 3 — Propriedades de Escala e Produto
    - `### 3.1 Multiplicação por constante`
    - `### 3.2 Determinante do produto`
    - `### 3.3 O erro comum: soma de matrizes`
  - Bloco 4 — Cofatores, Adjunta e Jacobi
    - `### 4.1 Matriz dos cofatores`
    - `### 4.2 Matriz adjunta`
    - `### 4.3 Teorema de Jacobi`
  - Bloco 5 — Matriz Inversa via Determinante
    - `### 5.1 Critério det(A) != 0`
    - `### 5.2 Fórmula da inversa`
    - `### 5.3 Verificação por produto com a identidade`
- Enquanto isso: Laplace e o desenvolvimento por cofatores.
- NA VIDA REAL: engenharia estrutural e matriz de rigidez singular.
- E para hoje: Daniel 6:4 e integridade sem culpa encontrada.
- Simplificando: propriedades permitem prever o comportamento do determinante e decidir quando uma matriz tem inversa.
- Para não esquecer: 5 bullets sobre transposta, troca de linhas, anulação, produto e inversa.

## 13. Fórmulas e notações centrais
- `\det(A^T) = \det(A)`
- `\det(AB) = \det(A) \cdot \det(B)`
- `\det(\lambda A) = \lambda^n \det(A)` para matriz `n x n`
- `\det(A + B) \neq \det(A) + \det(B)` em geral
- `\mathrm{adj}(A) = (\mathrm{cof}\, A)^T`
- `A^{-1} = \frac{1}{\det A} \cdot \mathrm{adj}(A)`
- `\det(\mathrm{adj}(A)) = (\det A)^{n-1}`
- `A^{-1}` existe se, e somente se, `\det A \neq 0`.

## 14. Âncoras visuais/concretas
- Tabela "ação na matriz" x "efeito no determinante".
- Exemplo com duas linhas trocadas mostrando inversão de sinal.
- Exemplo com linha nula mostrando determinante zero.
- Exemplo com linhas proporcionais mostrando redundância estrutural.
- Fluxo visual: matriz → cofatores → transposta dos cofatores → adjunta → inversa.
- Verificação final: `A · A^{-1} = I`.
- Aplicação de engenharia: matriz de rigidez com `det K = 0` como sinal de instabilidade.

## 15. Conexão VP
- Unidade VP: Integridade.
- Versículo principal sugerido: Daniel 6:4.
- Personagem bíblico: Daniel.
- Ponteiro específico: propriedades dos determinantes revelam se a estrutura preserva integridade, muda orientação, ganha escala ou colapsa para zero.
- Conexão temática: linhas iguais ou proporcionais anulam o determinante porque a matriz perde independência estrutural. A integridade de Daniel aparece como coerência que permanece mesmo quando investigada.
- Pergunta formativa: "Que redundâncias, incoerências ou concessões pequenas podem fazer uma estrutura aparentemente forte perder integridade?"

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **aplicará** propriedades dos determinantes para simplificar cálculos.
2. O aluno **identificará** condições que anulam o determinante.
3. O aluno **explicará** o efeito de escala, transposta, troca e produto sobre o determinante.
4. O aluno **construirá** matriz dos cofatores e adjunta.
5. O aluno **calculará** matriz inversa usando determinante e adjunta quando possível.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Usa propriedades antes de expandir cálculos longos.
- Justifica a propriedade aplicada.

**Para o objetivo 2:**
- Reconhece linha ou coluna nula.
- Reconhece linhas ou colunas proporcionais.
- Conclui corretamente que o determinante é zero nesses casos.

**Para o objetivo 3:**
- Afirma que a transposta preserva o determinante.
- Afirma que troca de duas linhas ou colunas inverte o sinal.
- Usa `det(AB) = det(A) det(B)`.
- Evita o erro `det(A + B) = det(A) + det(B)`.

**Para o objetivo 4:**
- Calcula cofatores com sinais corretos.
- Transpõe a matriz dos cofatores para obter a adjunta.

**Para o objetivo 5:**
- Verifica primeiro se `det(A) != 0`.
- Aplica `A^{-1} = (1/det A) adj(A)`.
- Confere a inversa por multiplicação com a identidade em exemplo simples.

## 17. Critérios de aceite
O capítulo está adequado se:
- as propriedades centrais do framework aparecem e são explicadas por efeito;
- o erro `det(A + B) = det(A) + det(B)` é explicitamente prevenido;
- Teorema de Jacobi aparece em nível N4 controlado;
- matriz dos cofatores e adjunta são construídas antes da fórmula da inversa;
- a condição `det(A) != 0` aparece antes de calcular inversa;
- Laplace aparece ligado ao desenvolvimento por cofatores;
- a conexão VP é breve e formativa;
- não há jacobianos formalizados, LU, autovalores ou Cramer como conteúdo central.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/2serie/unidade-4-determinantes.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13MAT301.
- Pierre-Simon Laplace — desenvolvimento por cofatores.
- Carl Gustav Jacob Jacobi — Teorema de Jacobi e determinantes.
- Bíblia: Provérbios 10:9; Daniel 6:4.
