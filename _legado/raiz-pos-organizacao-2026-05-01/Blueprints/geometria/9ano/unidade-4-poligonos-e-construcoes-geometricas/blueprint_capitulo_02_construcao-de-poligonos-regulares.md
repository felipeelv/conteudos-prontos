# Blueprint Técnico — Capítulo 2: Construção de Polígonos Regulares

## 1. Identificação
- Disciplina: Geometria
- Ano/Série: 9º Ano EF II
- Bimestre: 2º
- Unidade: 4 — Polígonos e Construções Geométricas
- Capítulo: 2 de 4
- Título: Construção de Polígonos Regulares
- Código BNCC: EF08MA09 reativada
- Profundidade geral: N3

## 2. Objetivo do capítulo
Levar o aluno a construir triângulo equilátero, quadrado e hexágono regular com régua e compasso, justificando os passos e conferindo a regularidade obtida.

## 3. Pergunta-problema
*"Como construir um polígono regular perfeito sem usar transferidor nem medir ângulos no olho?"*

## 4. Tensão narrativa
Desenhar aproximadamente é rápido, mas não garante regularidade. A tensão do capítulo é aproximação visual × construção exata: a régua e o compasso limitam os movimentos para aumentar a precisão.

## 5. Sequência conceitual obrigatória
1. Reativar régua sem marcações e compasso.
2. Explicar o que cada instrumento pode fazer.
3. Definir construção geométrica como sequência exata de ações.
4. Construir triângulo equilátero a partir de segmento ou circunferência.
5. Conferir lados iguais no triângulo equilátero.
6. Construir quadrado a partir de circunferência com diâmetro e mediatriz.
7. Conferir ângulos retos e lados iguais do quadrado.
8. Construir hexágono regular marcando seis arcos sucessivos com o mesmo raio.
9. Justificar por que o lado do hexágono inscrito é igual ao raio.
10. Comparar construção manual e construção em GeoGebra apenas como apoio.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Instrumentos: régua e compasso | 15% | N1 | Reativar função de cada instrumento e restrição clássica. |
| Construção do triângulo equilátero | 25% | N3 | Coração 1. Passo a passo e conferência de lados iguais. |
| Construção do quadrado | 25% | N3 | Usar diâmetro, mediatriz e ligação de pontos consecutivos. |
| Construção do hexágono regular | 35% | N3 | Coração 2. Marcar seis arcos de raio fixo sobre a circunferência. |

## 7. Conceitos obrigatórios
- Régua sem marcações
- Compasso
- Circunferência
- Centro
- Raio
- Arco
- Diâmetro
- Mediatriz
- Triângulo equilátero
- Quadrado
- Hexágono regular
- Polígono inscrito
- Conferência da regularidade

## 8. Termos a explicar com explicação curta
- **Régua sem marcações:** instrumento usado apenas para traçar retas e segmentos entre pontos.
- **Compasso:** instrumento usado para transportar uma distância e traçar circunferências ou arcos.
- **Construção geométrica:** sequência de ações que produz uma figura exata com instrumentos permitidos.
- **Mediatriz:** reta perpendicular a um segmento que passa por seu ponto médio.
- **Hexágono regular inscrito:** hexágono cujos seis vértices estão sobre uma circunferência.

## 9. Procedimentos obrigatórios
Lado do hexágono regular inscrito:

$$\ell = r$$

Lado do quadrado inscrito:

$$\ell = r \sqrt{2}$$

Lado do triângulo equilátero inscrito:

$$\ell = r \sqrt{3}$$

Construção obrigatória do hexágono:
1. Traçar circunferência de centro $$O$$ e raio $$r$$.
2. Marcar um ponto $$A$$ sobre a circunferência.
3. Manter o compasso com abertura $$r$$.
4. Marcar arcos sucessivos sobre a circunferência.
5. Obter seis pontos.
6. Ligar pontos consecutivos com a régua.
7. Conferir que cada lado mede $$r$$.

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que a régua clássica não mede;
- que o compasso transporta distância;
- como construir triângulo equilátero, quadrado e hexágono regular;
- por que a abertura do compasso não deve mudar na construção do hexágono;
- que o hexágono se apoia em seis triângulos equiláteros formados pelo centro;
- que a construção é exata quando cada passo é preservado.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- ensinar construção do pentágono regular;
- ensinar construção do heptadecágono;
- discutir polígonos não construtíveis;
- entrar em teoria de Galois ou Wantzel;
- formalizar algoritmos em fluxograma, que ficam para o Capítulo 3;
- usar trigonometria;
- transformar Gauss em biografia longa.

## 12. Linguagem esperada
- Usar verbos de ação: trace, marque, mantenha, ligue, confira.
- Separar cada etapa da construção em linha própria.
- Dar nome aos pontos antes de usá-los.
- Evitar "desenhe parecido"; preferir "construa" e "confira".
- Usar "régua sem marcações" quando o ponto for precisão clássica.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 2 — Construção de Polígonos Regulares`
- Pergunta-problema: `## Como construir sem medir no olho?`
- Abertura narrativa: hexágono com compasso ou Gauss e a construtibilidade do heptadecágono como curiosidade sem ensinar a construção.
- Para Conversar de intro: "Qual a diferença entre desenhar e construir?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Instrumentos
    - `### 1.1 O que a régua pode fazer`
    - `### 1.2 O que o compasso conserva`
  - Bloco 2 — Triângulo Equilátero
    - `### 2.1 Dois arcos e três lados iguais`
    - `### 2.2 Conferindo a construção`
  - Bloco 3 — Quadrado
    - `### 3.1 Diâmetro e mediatriz`
    - `### 3.2 Ligando pontos consecutivos`
  - Bloco 4 — Hexágono Regular
    - `### 4.1 Seis arcos com o mesmo raio`
    - `### 4.2 Por que o lado é igual ao raio`
- Sua Parte: reproduzir a construção do hexágono e explicar cada passo.
- Curiosidade da Ciência: Gauss e o polígono regular de 17 lados.
- Enquanto isso...: Êxodo 25:9 como ponte para fidelidade ao modelo.
- E para hoje...: marcenaria, desenho técnico e peças hexagonais.
- Esse foi o "cara": Carl Friedrich Gauss.
- Você já pensou nisso?: por que uma abertura mínima no compasso altera toda a figura?
- Simplificando: régua e compasso constroem com precisão porque preservam ações elementares.
- Para não esquecer: 5 bullets sobre instrumento, raio, arco, quadrado e hexágono.

## 14. Âncoras visuais/concretas
- Compasso com abertura fixa.
- Triângulo equilátero formado por interseção de arcos.
- Quadrado inscrito em circunferência.
- Hexágono inscrito dividido em seis triângulos.
- Tampo de mesa hexagonal ou desenho técnico.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Êxodo 25:9.
- Ponteiro específico: construir conforme o modelo, sem improvisar os passos.
- Conexão temática: a regularidade final depende da fidelidade em cada ação; uma pequena alteração no raio compromete a figura inteira.

## 16. Critérios de aceite
O capítulo está adequado se:
- explica a função da régua e do compasso;
- apresenta passo a passo de triângulo equilátero, quadrado e hexágono;
- justifica o hexágono por $$\ell = r$$;
- orienta conferência de regularidade;
- mantém a construção do pentágono e do heptadecágono apenas como curiosidade não ensinada;
- não antecipa fluxogramas formais ou programação.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **descreverá** a função de régua e compasso em construções geométricas.
2. O aluno **construirá** triângulo equilátero, quadrado e hexágono regular.
3. O aluno **justificará** a construção do hexágono regular inscrito.
4. O aluno **verificará** a regularidade da figura construída.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Diferencia traçar reta de medir comprimento.
- Explica que o compasso conserva raio.
- Usa vocabulário de centro, raio e arco.

**Para o objetivo 2:**
- Segue os passos em ordem.
- Nomeia pontos e segmentos.
- Liga pontos consecutivos corretamente.

**Para o objetivo 3:**
- Reconhece seis raios iguais.
- Identifica triângulos equiláteros no hexágono.
- Conclui que o lado do hexágono inscrito é igual ao raio.

**Para o objetivo 4:**
- Confere igualdade de lados.
- Confere coerência dos vértices na circunferência.
- Identifica erro de abertura do compasso quando a figura não fecha.

### Habilidade BNCC consolidada no capítulo
- **EF08MA09**, ao construir polígonos regulares usando instrumentos de desenho ou software de geometria dinâmica.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- BNCC: EF08MA09
- Carl Friedrich Gauss e construtibilidade do heptadecágono.
