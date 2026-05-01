# Blueprint Técnico — Capítulo 1: Média Aritmética

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 6º Ano EF
- Bimestre: 2º
- Unidade: 4 — Média Aritmética e Probabilidade
- Capítulo: 1 de 3
- Título: Média Aritmética
- Código BNCC: EF06MA31
- Profundidade geral: N3

## 2. Objetivo do capítulo
Ensinar o aluno a calcular e interpretar a média aritmética simples como soma dividida pela quantidade, aplicando o conceito a listas de dados e tabelas de frequência simples.

## 3. Pergunta-problema
*"Suas notas no bimestre foram 7, 8, 6, 9 e 5. O boletim mostra média 7. Onde está esse 7?"*

## 4. Tensão narrativa
A média parece uma nota real, mas pode ser um número que ninguém tirou exatamente. Ela resume o conjunto, não cada caso isolado. A tensão do capítulo é particular × geral: como um número só pode representar vários valores diferentes? 💭

## 5. Sequência conceitual obrigatória
1. Começar com uma situação concreta de notas, mesada, consumo ou tempo de tela.
2. Mostrar a ideia intuitiva de repartir igualmente o total entre todos os valores.
3. Definir média aritmética como soma dos valores dividida pela quantidade.
4. Resolver 2-3 exemplos curtos com substituição explícita na fórmula.
5. Interpretar a média como valor típico e ponto de equilíbrio.
6. Mostrar que a média não precisa ser um dos valores da lista.
7. Aplicar a média a notas escolares e consumo mensal.
8. Retomar tabela de frequência simples.
9. Calcular média em tabela repetindo mentalmente cada valor pela sua frequência ou multiplicando valor por frequência, sem nomear média ponderada.
10. Inserir Adolphe Quetelet como referência histórica ao "homem médio".
11. Fechar com integridade: todos os valores precisam entrar na conta.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Conceito: soma dividida pela quantidade | 25% | N2 | Coração 1. Definição direta com 2-3 exemplos curtos. |
| Interpretação como valor típico | 15% | N3 | Mostrar que a média descreve o conjunto e pode não existir nos dados. |
| Cálculo em situações simples | 25% | N2 | Coração 2. Usar 4-5 exercícios resolvidos passo a passo. |
| Cálculo em tabelas de frequência | 20% | N2-N3 | Aplicar o conceito pela repetição dos valores conforme a frequência, sem fórmula formal de média ponderada. |
| Aplicações: notas, consumo e mesada | 15% | N3 | Usar boletim, gasto médio mensal, tempo de tela ou irmãos por família na turma. |

## 7. Conceitos obrigatórios
- Média aritmética
- Soma dos valores
- Quantidade de valores
- Valor típico
- Ponto de equilíbrio
- Tabela de frequência
- Frequência
- Adolphe Quetelet
- L'homme moyen, apenas como curiosidade histórica traduzida como "homem médio"

## 8. Termos a explicar com tradução curta
- **Média aritmética:** soma dos valores dividida pela quantidade de valores.
- **Valor típico:** número que ajuda a representar o comportamento geral de um conjunto.
- **Ponto de equilíbrio:** valor que ficaria para cada item se o total fosse repartido igualmente.
- **Tabela de frequência:** tabela que mostra quantas vezes cada valor aparece.
- **Frequência:** número de repetições de um valor.

## 9. Fórmulas obrigatórias
Usar a fórmula com exemplo numérico imediato:

$$\bar{x} = \frac{x_1 + x_2 + \ldots + x_n}{n}$$

Explicar em linguagem natural: $$\bar{x}$$ é a média; $$x_1, x_2, \ldots, x_n$$ são os valores; $$n$$ é a quantidade de valores.

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que média aritmética é soma dividida pela quantidade;
- que o aluno deve somar todos os valores antes de dividir;
- que a média pode ser decimal;
- que a média pode não aparecer na lista original;
- que a média fica entre o menor e o maior valor quando todos os valores têm o mesmo peso;
- que tabela de frequência permite calcular média sem escrever todos os valores repetidos;
- que valores omitidos mudam a média;
- que Quetelet usou médias para resumir características de populações.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- apresentar a fórmula de média ponderada com somatório;
- nomear formalmente média ponderada como conteúdo consolidado;
- ensinar moda e mediana;
- comparar média, moda e mediana;
- ensinar variância, desvio padrão ou amplitude como medidas formais;
- usar dados grandes com cálculo pesado que esconda o conceito;
- transformar Quetelet em aula de estatística social avançada.

## 12. Linguagem esperada
- Referência operacional: `Referencias/series.md` — seção **6º e 7º Ano — EF2 anos iniciais**.
- Frases curtas, cálculo exibido em linhas e interpretação depois do resultado.
- Repetir a pergunta-chave: "somei todos os valores e dividi pela quantidade certa?"
- Em tabelas de frequência, dizer "o valor aparece tantas vezes" antes de usar multiplicação.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Média Aritmética`
- Pergunta-problema: `## Onde está a média quando ninguém tirou exatamente aquela nota?`
- Abertura narrativa: boletim com notas 7, 8, 6, 9 e 5; provocar o aluno a procurar o 7.
- Para Conversar de intro: "A média da turma conta a história de todos os alunos?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Somar e Repartir
    - `### 1.1 A ideia de dividir igualmente`
    - `### 1.2 A fórmula da média`
  - Bloco 2 — O Que a Média Representa
    - `### 2.1 Valor típico`
    - `### 2.2 Média não é sempre um valor real da lista`
  - Bloco 3 — Calculando em Situações Simples
    - `### 3.1 Notas escolares`
    - `### 3.2 Mesada, consumo e tempo de tela`
  - Bloco 4 — Média em Tabelas de Frequência
    - `### 4.1 Quando um valor aparece várias vezes`
    - `### 4.2 Conferir se todos os dados entraram`
- Sua Parte: calcular a média de 5 valores reais ou simulados e explicar o que ela representa.
- Curiosidade da Ciência: Quetelet e o "homem médio" como tentativa histórica de resumir uma população.
- Enquanto isso...: Provérbios 11:1 como ponte para balança justa.
- E para hoje...: não esconder valores que mudam a média.
- Esse foi o "cara": Adolphe Quetelet (1796-1874), belga, astrônomo e estatístico.
- Você já pensou nisso?: média 7 pode esconder alunos com notas muito diferentes.
- Simplificando: média é total repartido igualmente entre os valores.
- Para não esquecer: 5 bullets sobre soma, quantidade, valor típico, tabela de frequência e honestidade na conta.

## 14. Âncoras visuais/concretas
- Balança ou régua de equilíbrio mostrando valores abaixo e acima da média.
- Tabela de notas com linha de soma e divisão.
- Tabela de frequência simples, por exemplo número de livros lidos por alunos.
- Gráfico de pontos com a média marcada por uma linha horizontal.
- Quadro "média conta o conjunto, não cada pessoa".

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Provérbios 11:1.
- Ponteiro específico: a média é uma balança; cálculo errado ou dado omitido quebra o equilíbrio da verdade.
- Conexão temática: calcular média exige incluir todos os valores, inclusive os que baixam o resultado. Integridade é aceitar a conta completa.

## 16. Critérios de aceite
O capítulo está adequado se:
- define média aritmética como soma dividida pela quantidade;
- traz exemplos resolvidos com substituição clara;
- interpreta média como valor típico e ponto de equilíbrio;
- mostra que a média pode não estar na lista de valores;
- inclui cálculo em tabela de frequência sem fórmula de média ponderada;
- usa Quetelet como curiosidade breve;
- não ensina moda, mediana, variância, desvio padrão ou média ponderada formal.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **calculará** a média aritmética de listas curtas de números naturais ou decimais simples.
2. O aluno **interpretará** a média como valor típico ou ponto de equilíbrio de um conjunto de dados.
3. O aluno **calculará** média a partir de tabela de frequência simples, sem usar fórmula de média ponderada.
4. O aluno **verificará** se todos os valores foram incluídos antes de concluir a média.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Soma todos os valores da lista.
- Divide a soma pela quantidade correta.
- Escreve o resultado com unidade ou contexto.

**Para o objetivo 2:**
- Explica que a média resume o conjunto.
- Reconhece que a média pode não ser um dado observado.
- Compara a média com menor e maior valor da lista.

**Para o objetivo 3:**
- Identifica o valor e sua frequência.
- Considera cada repetição na soma total.
- Divide pelo total de observações, não pelo número de linhas da tabela.

**Para o objetivo 4:**
- Confere se nenhum valor ficou fora da soma.
- Identifica erro quando a divisão usa quantidade incorreta.
- Corrige uma média calculada com dado omitido.

### Habilidade BNCC consolidada no capítulo
- **EF06MA31:** identificar variáveis e suas frequências, com uso da frequência como base para cálculo e interpretação de média em tabelas simples.

## 18. Referências
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/6ano/unidade-4-media-aritmetica-e-probabilidade.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Referencias/series.md`
- `Referencias/niveis_profundidade.md`
- BNCC: EF06MA31
- Quetelet, A. (1835). *Sur l'homme et le développement de ses facultés*.
