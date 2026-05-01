# Blueprint Técnico — Capítulo 3: MDC e MMC

## 1. Identificação
- Disciplina: Matemática 1
- Ano/Série: 6º Ano — Ensino Fundamental II
- Bimestre: 2º
- Unidade: 4 — Divisibilidade
- Capítulo: 3 de 3
- Título: MDC e MMC
- Códigos BNCC: EF06MA05, EF06MA06
- Profundidade geral: N3 — APRESENTA e CONSOLIDA

## 2. Objetivo do capítulo
Levar o aluno a calcular MDC e MMC por decomposição e procedimentos organizados, distinguindo maior divisor comum de menor múltiplo comum e aplicando ambos em problemas de partilha e ciclos.

## 3. Pergunta-problema
*"Quando dois números compartilham algo, procuramos o maior divisor ou o menor múltiplo?"*

## 4. Tensão narrativa
MDC e MMC parecem parecidos porque os dois comparam números. Mas respondem a perguntas diferentes: o MDC encontra a maior divisão comum; o MMC encontra o primeiro encontro comum.

## 5. Sequência conceitual obrigatória
1. Retomar múltiplos, divisores e fatoração em primos.
2. Definir MDC como maior divisor comum.
3. Encontrar MDC por lista de divisores.
4. Encontrar MDC por decomposição em fatores primos.
5. Definir MMC como menor múltiplo comum.
6. Encontrar MMC por lista de múltiplos.
7. Encontrar MMC por decomposição em fatores primos.
8. Introduzir divisões sucessivas como procedimento organizado, sem formalizar Algoritmo de Euclides.
9. Aplicar MDC em partilha de quantidades.
10. Aplicar MMC em ciclos e encontros periódicos.
11. Verificar a identidade `MDC(a,b) * MMC(a,b) = a * b` em exemplos.
12. Apresentar Gabriel Lamé como referência breve ligada à eficiência de métodos de MDC.
13. Conectar MDC/MMC à VP Integridade por 1 Coríntios 12:14.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| MDC | 30% | N3 | Maior divisor comum; partilha máxima sem sobras. |
| MMC | 30% | N3 | Menor múltiplo comum; primeiro encontro de ciclos. |
| Determinação por decomposição | 20% | N3 | Usar fatores primos para comparar expoentes. |
| Determinação por divisões sucessivas | 10% | N2 | Procedimento introdutório, sem Algoritmo de Euclides formal. |
| Aplicações práticas | 10% | N3 | Partilha, alinhamento de ciclos, calendários e horários. |

## 7. Conceitos obrigatórios
- Divisor comum.
- Maior divisor comum.
- Múltiplo comum.
- Menor múltiplo comum.
- Decomposição em fatores primos.
- Divisões sucessivas.
- Aplicação de partilha.
- Aplicação de ciclos.
- Gabriel Lamé.

## 8. Termos a explicar com tradução curta
- **MDC:** maior número que divide dois ou mais números exatamente.
- **MMC:** menor número positivo que é múltiplo de dois ou mais números.
- **Divisor comum:** divisor que aparece em todos os números comparados.
- **Múltiplo comum:** múltiplo que aparece nas listas de todos os números comparados.
- **Ciclo:** repetição que acontece de tempos em tempos.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- MDC por lista de divisores;
- MMC por lista de múltiplos;
- MDC e MMC por decomposição em fatores primos;
- diferença conceitual entre maior divisor e menor múltiplo;
- divisões sucessivas como técnica introdutória;
- aplicação com 24 maçãs e 36 laranjas;
- aplicação com ônibus a cada 12 minutos e metrô a cada 18 minutos;
- verificação de `MDC(24,36) * MMC(24,36) = 24 * 36`;
- Gabriel Lamé como referência histórica breve;
- ponte VP com 1 Coríntios 12:14.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- formalizar Algoritmo de Euclides;
- provar complexidade computacional;
- ensinar frações como foco central;
- desenvolver equações diofantinas;
- usar notação de conjuntos de modo abstrato;
- transformar Lamé em biografia extensa;
- usar MDC/MMC sem problema contextual.

## 11. Linguagem esperada
- Repetir a pergunta-guia antes de calcular: "é partilha ou encontro de ciclos?"
- Usar números pequenos e verificáveis.
- Comparar listas antes da técnica por fatoração.
- Destacar "maior" em MDC e "menor" em MMC.
- Evitar usar apenas siglas; escrever os nomes completos no início de cada bloco.
- Tratar divisões sucessivas como organização prática, não como teoria formal.

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 3 — MDC e MMC`
- Pergunta-problema: `## Estamos procurando uma partilha ou um encontro?`
- Abertura narrativa: dividir frutas em cestas iguais e combinar horários de transporte.
- Para Conversar de intro: "Para dividir 24 maçãs e 36 laranjas em cestas iguais, qual pergunta matemática precisamos fazer?"
- Desenvolvimento em 4 blocos:
  - Bloco 1 — MDC
    - `### 1.1 Divisores comuns`
    - `### 1.2 O maior divisor comum`
  - Bloco 2 — MMC
    - `### 2.1 Múltiplos comuns`
    - `### 2.2 O menor múltiplo comum`
  - Bloco 3 — Usando Fatoração
    - `### 3.1 Decompor para calcular MDC`
    - `### 3.2 Decompor para calcular MMC`
  - Bloco 4 — Aplicações
    - `### 4.1 Partilha justa com MDC`
    - `### 4.2 Ciclos e encontros com MMC`
- Enquanto isso: Gabriel Lamé e a eficiência dos métodos para encontrar MDC.
- NA VIDA REAL: cestas, grupos, engrenagens, calendários, ônibus e metrô.
- E para hoje: 1 Coríntios 12:14 e unidade com muitas partes.
- Simplificando: MDC divide melhor; MMC encontra primeiro.
- Para não esquecer: 5 bullets sobre MDC, MMC, decomposição, partilha e ciclos.

## 13. Fórmulas e notações centrais
- $$MDC(24,36) = 12$$
- $$MMC(24,36) = 72$$
- $$MDC(a,b) * MMC(a,b) = a * b$$
- $$12 * 72 = 24 * 36$$

## 14. Âncoras visuais/concretas
- Lista de divisores de 24 e 36.
- Lista de múltiplos de 12 e 18.
- Tabela de decomposição em fatores primos.
- Desenho de cestas com frutas.
- Linha do tempo com encontros de ciclos.
- Cartão de alerta: MDC não é MMC.

## 15. Conexão VP
- Unidade VP: Integridade.
- Versículo principal sugerido: 1 Coríntios 12:14.
- Ponteiro específico: números podem compartilhar divisores ou encontrar múltiplos comuns sem perder sua identidade.
- Conexão temática: integridade comum não apaga a singularidade das partes.
- Pergunta formativa: "O que sua turma compartilha sem que cada pessoa deixe de ser única?"

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **calculará** o MDC de dois números naturais.
2. O aluno **calculará** o MMC de dois números naturais.
3. O aluno **distinguirá** problemas de partilha de problemas de ciclos.
4. O aluno **usará** decomposição em fatores primos para encontrar MDC e MMC.
5. O aluno **verificará** a relação entre MDC, MMC e o produto dos números em exemplos.

### Indicadores de aprendizagem
- Encontra corretamente os divisores comuns e escolhe o maior.
- Encontra corretamente os múltiplos comuns e escolhe o menor positivo.
- Resolve partilha de 24 e 36 por MDC.
- Resolve encontro de 12 e 18 minutos por MMC.
- Usa fatoração para calcular sem depender apenas de listas.

## 17. Critérios de aceite
O capítulo está adequado se:
- MDC e MMC são definidos antes dos procedimentos;
- listas aparecem antes de decomposição;
- decomposição em fatores primos é usada para ambos;
- divisões sucessivas aparecem apenas como procedimento introdutório;
- aplicações de partilha e ciclos estão presentes;
- Lamé aparece de modo breve e conectado ao MDC;
- a conexão VP é curta e ligada à unidade/partes;
- não há formalização do Algoritmo de Euclides;
- não há seção final `## Fórmulas do capítulo`.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/6ano/unidade-4-divisibilidade.md`
- Blueprint da unidade: `blueprint_unidade.md`
- BNCC: EF06MA05, EF06MA06.
- Gabriel Lamé — eficiência de métodos associados ao Algoritmo de Euclides.
- Bíblia: 1 Coríntios 12:14.
