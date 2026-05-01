# Blueprint Técnico da Unidade — Unidade 4: Determinantes

## 1. Identificação
- Disciplina: Matemática
- Ano/Série: 2ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: determinantes, com cálculo por Sarrus e Laplace, propriedades, Teorema de Jacobi e matriz inversa via determinante.
- Tipo da unidade: unidade algébrica-operacional de consolidação do estudo de matrizes e preparação para sistemas lineares.
- Recorte geral: ensinar o determinante como número associado a matriz quadrada que diagnostica singularidade, orienta cálculo de inversa e prepara a resolução de sistemas pela Regra de Cramer.
- Capítulos previstos: 2
- Código BNCC principal: EM13MAT301
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/2serie/unidade-4-determinantes.md`
- Diretório obrigatório desta execução: `Gerador de Blueprint/saida/Matematica/2serie/unidade-4-determinantes/`

## 2. Nível do aluno
- Faixa etária aproximada: 16-17 anos.
- Série/faixa: 2ª Série EM, com estudo recente de matrizes na unidade anterior.
- Conhecimento prévio esperado: operações com matrizes, matriz quadrada, linhas e colunas, produto de matrizes, sistemas lineares simples e manipulação algébrica básica.
- Linguagem esperada: técnica, gradual e operacional; termos como menor complementar, cofator, adjunta e matriz singular devem receber definição curta antes de uso.
- Grau de abstração: N3 predominante, com N4 controlado no desenvolvimento de Laplace, no Teorema de Jacobi e na relação entre determinante, adjunta e inversa.
- Estratégia didática: começar com determinantes de ordem 1 e 2, consolidar Sarrus no caso 3x3, introduzir Laplace como método geral e só então organizar propriedades e aplicações.
- Abertura narrativa: "Como saber se uma matriz tem inversa, ou se um sistema associado tende a ter solução única, antes de resolver tudo?"

## 3. Tom da unidade
- Rigor algébrico com forte apoio em procedimento verificável.
- Cálculos devem ser explicitados passo a passo, principalmente em Sarrus e Laplace.
- Fórmulas devem vir acompanhadas de leitura verbal e interpretação.
- Propriedades não devem virar lista decorada: cada uma deve mostrar efeito concreto sobre o determinante.
- A conexão VP Integridade deve ser discreta e formativa: determinante como indicador de coerência estrutural da matriz.
- O capítulo de aplicações deve preparar a próxima unidade, sem resolver Cramer em profundidade.

## 4. Profundidade geral
- Nível predominante: N3.
- Pico de profundidade: N4 em Laplace recursivo, sinais de cofatores, Teorema de Jacobi e inversa por adjunta.
- Núcleos N3: determinante de ordem 2, Sarrus, propriedades, matriz dos cofatores, adjunta e critério de existência de inversa.
- Núcleos N2: notação `det(A)` e `|A|`, matriz quadrada, ordem da matriz e leitura de elementos `a_{ij}`.
- Limite de densidade: não formalizar jacobianos, permanente da matriz, decomposição LU, autovalores, autovetores ou álgebra linear universitária.
- Referência operacional: `Gerador de Blueprint/niveis_profundidade.md`.

## 5. Regras gerais transversais
- Trabalhar apenas com matrizes quadradas ao definir determinante.
- Distinguir cálculo por Sarrus, válido somente para 3x3, de Laplace, válido para qualquer ordem.
- Em Laplace, explicitar menor complementar, cofator e sinal alternado `(-1)^{i+j}`.
- Reforçar que `det(A) = 0` indica matriz singular, sem inversa.
- Reforçar que `det(A) != 0` indica matriz inversível e prepara sistemas determinados.
- Apresentar propriedades por efeito: preserva, troca sinal, anula, escala ou multiplica.
- Ao usar `det(lambda A)`, indicar que para matriz `n x n` vale `lambda^n det(A)`.
- Ao ensinar inversa, deixar explícito que `A^{-1} = (1/det A) adj(A)` só vale quando `det A != 0`.
- Preservar Carl Gustav Jacob Jacobi no Capítulo 1 e Pierre-Simon Laplace no Capítulo 2, conforme o framework.
- Manter a VP Integridade como ponte: estrutura íntegra quando não colapsa para determinante zero.

## 6. Escopo proibido geral (NÃO ANTECIPAR)
- Determinantes funcionais e jacobianos formalizados.
- Permanente da matriz.
- Decomposição LU.
- Autovalores, autovetores e polinômio característico.
- Demonstrações universitárias de álgebra multilinear.
- Regra de Cramer como conteúdo central desta unidade; deve ficar como destino futuro para U5.
- Interpretação geométrica avançada em espaços de dimensão superior.

## 7. Conexão VP da unidade
- Unidade VP: U4 — Integridade.
- Virtude: coerência interior-exterior.
- Personagem bíblico: Daniel.
- Versículos-âncora: Provérbios 10:9 e Daniel 6:4.
- Ideia central: o determinante sintetiza a integridade estrutural de uma matriz. Se o determinante é zero, a matriz é singular, não tem inversa e perde unicidade operacional. Se é diferente de zero, a estrutura preserva uma forma de coerência algébrica.
- Ponte para Daniel: Daniel manteve coerência sob pressão; nada o "anulou". A imagem deve ser usada apenas como apoio formativo, sem substituir o ensino matemático.

## 8. Hierarquia de autoridade para o Autor
- Conteúdo, matemáticos, fórmulas, VP, limites e sequência de capítulos → framework da unidade e estes blueprints.
- Profundidade → seção 4 deste arquivo e pesos dos blueprints de capítulo.
- Objetivos e indicadores → `Gerador de Blueprint/objetivos_aprendizagem.md`.
- Expectativas de série → `Gerador de Blueprint/series.md`.
- Onde houver conflito entre modelo genérico e framework da unidade → vence o framework da unidade.
- Onde houver risco de antecipar álgebra linear universitária → vence o escopo proibido.

## 9. Distribuição dos capítulos

| Capítulo | Título | Coração conceitual | Matemático-âncora | Conexão VP específica |
|---|---|---|---|---|
| 1 | Cálculo de Determinantes | definição, ordem 1, ordem 2, Sarrus, menor complementar, cofator e Laplace | Carl Gustav Jacob Jacobi | determinante como número que sintetiza integridade estrutural |
| 2 | Propriedades e Aplicações | propriedades, Teorema de Jacobi, cofatores, adjunta e inversa via determinante | Pierre-Simon Laplace | propriedades preservam, invertem ou anulam a integridade |

## 10. Ganchos transversais
- Enquanto isso: no século XIX, Jacobi ajuda a sistematizar a teoria dos determinantes; no século XVIII, Laplace organiza o desenvolvimento por cofatores.
- NA VIDA REAL: computação gráfica, engenharia estrutural, economia, matrizes de rigidez e álgebra linear computacional.
- Pergunta de unidade: "Como um único número pode revelar se uma matriz preserva estrutura, colapsa ou permite caminho inverso?"
- Aprendizados transversais:
  - Determinante só é definido para matriz quadrada.
  - Sarrus é um método específico para 3x3.
  - Laplace calcula determinantes de qualquer ordem, mas exige cofatores e sinais alternados.
  - Propriedades permitem simplificar cálculos e prever quando o determinante zera.
  - `det(A) = 0` indica matriz singular.
  - `det(A) != 0` permite matriz inversa.
  - A adjunta é a transposta da matriz dos cofatores.
  - Integridade matemática aparece como coerência estrutural que não colapsa.

## 11. Critérios de aceite da unidade
A unidade está adequada se:
- este arquivo está salvo exatamente como `Gerador de Blueprint/saida/Matematica/2serie/unidade-4-determinantes/blueprint_unidade.md`;
- os capítulos individuais estão salvos no mesmo diretório como `blueprint_capitulo_01_calculo-de-determinantes.md` e `blueprint_capitulo_02_propriedades-e-aplicacoes.md`;
- nenhum arquivo foi salvo em `blueprints/`, `Blueprint/`, pastas antigas de pipeline, pastas de teste, raiz do projeto ou `PLANEJAMENTO/`;
- o Capítulo 1 cobre definição, notação, ordens 1 e 2, Sarrus 3x3, menor complementar, cofator e Laplace;
- o Capítulo 2 cobre propriedades, Teorema de Jacobi, matriz dos cofatores, adjunta e inversa via determinante;
- Jacobi e Laplace aparecem como referências históricas de apoio, sem biografia excessiva;
- as fórmulas centrais do framework aparecem corretamente em LaTeX;
- a conexão VP Integridade aparece como ponte formativa, sem substituir o ensino matemático;
- não há formalização de jacobianos, permanente, LU, autovalores ou álgebra linear universitária.

## 12. Referências
- Framework de unidade: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/2serie/unidade-4-determinantes.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13MAT301.
- Carl Gustav Jacob Jacobi — sistematização de determinantes e determinantes funcionais.
- Pierre-Simon Laplace — desenvolvimento por cofatores.
- Bíblia: Provérbios 10:9; Daniel 6:4.
