# Blueprint Técnico — Capítulo 1: Medidas de Tendência Central

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 1ª Série EM
- Bimestre: 2º
- Unidade: 4 — Medidas de Tendência Central e Educação Financeira
- Capítulo: 1 de 2
- Título: Medidas de Tendência Central
- Código BNCC: EM13MAT405
- Profundidade geral: N3, com ponto N4 em mediana de dados agrupados

## 2. Objetivo do capítulo
Ensinar o aluno a calcular, comparar e interpretar média aritmética simples, média ponderada, mediana e moda, incluindo mediana em dados agrupados, escolhendo a medida mais adequada ao contexto.

## 3. Pergunta-problema
*"Quando uma única medida resume uma turma, uma renda ou uma nota, ela está contando a verdade inteira ou só uma parte dela?"*

## 4. Tensão narrativa
A média parece a resposta natural para quase tudo, mas ela pode ser puxada por valores extremos. A tensão do capítulo é cálculo correto × interpretação honesta: resumir dados exige saber quando média, mediana e moda contam histórias diferentes. 💭

## 5. Sequência conceitual obrigatória
1. Abrir com um conjunto concreto de dados com outlier, como rendas, tempos de deslocamento ou notas.
2. Retomar média, mediana e moda do 9º Ano como vocabulário conhecido.
3. Formalizar média aritmética simples com somatório e interpretação.
4. Introduzir média ponderada com boletim, avaliações com pesos ou índice composto.
5. Formalizar mediana em dados ordenados, com `n` ímpar e `n` par.
6. Definir posição da mediana por `P = (n+1)/2` quando aplicável.
7. Definir moda e classificar conjuntos amodais, unimodais, bimodais e multimodais.
8. Comparar média, mediana e moda em distribuições simétricas e assimétricas.
9. Mostrar que outliers afetam mais a média que a mediana.
10. Apresentar mediana em dados agrupados por interpolação, com tabela de classes e frequência acumulada.
11. Fechar com escolha justificada da medida mais adequada para cada situação.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Média simples e ponderada | 25% | N3 | Formalizar `\bar{x}` e `\bar{x}_{p}` com exemplos de notas e pesos reais. |
| Mediana e moda em dados não agrupados | 25% | N3 | Ordenação, posição central, par/ímpar, frequências e tipos de moda. |
| Mediana em dados agrupados | 20% | N4 | Ensinar a fórmula por interpolação com tabela curta e passo a passo. |
| Comparação e interpretação | 30% | N3-N4 | Assimetria, outliers e escolha da medida mais honesta para o contexto. |

## 7. Conceitos obrigatórios
- Média aritmética simples
- Média aritmética ponderada
- Somatório
- Peso
- Rol
- Mediana
- Moda
- Distribuição amodal, unimodal, bimodal e multimodal
- Classe mediana
- Frequência acumulada
- Mediana em dados agrupados
- Assimetria positiva
- Assimetria negativa
- Outlier
- Interpretação estatística

## 8. Termos a explicar com tradução curta
- **Somatório:** forma compacta de indicar soma de vários termos.
- **Peso:** importância relativa atribuída a um valor.
- **Rol:** lista de dados organizada em ordem crescente ou decrescente.
- **Mediana:** valor que divide o conjunto ordenado em duas metades.
- **Moda:** valor que aparece com maior frequência.
- **Outlier:** valor muito distante do padrão geral do conjunto.
- **Classe mediana:** classe que contém a posição central em uma tabela agrupada.
- **Assimetria:** desequilíbrio na distribuição, com cauda mais longa para um lado.

## 9. Fórmulas obrigatórias
Média aritmética simples:
$$\bar{x} = \frac{x_{1} + x_{2} + \ldots + x_{n}}{n} = \frac{\sum x_{i}}{n}$$

Média aritmética ponderada:
$$\bar{x}_{p} = \frac{x_{1} \cdot p_{1} + x_{2} \cdot p_{2} + \ldots + x_{k} \cdot p_{k}}{p_{1} + p_{2} + \ldots + p_{k}} = \frac{\sum (x_{i} \cdot p_{i})}{\sum p_{i}}$$

Mediana em dados ordenados:
- Posição: $$P = \frac{n+1}{2}$$
- Se `n` é ímpar: $$Md = x_{\frac{n+1}{2}}$$
- Se `n` é par: $$Md = \frac{x_{\frac{n}{2}} + x_{\frac{n}{2}+1}}{2}$$

Mediana em dados agrupados:
$$Md = L_{i} + \frac{(n/2 - F_{ant})}{f_{Md}} \cdot h$$

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que média, mediana e moda são medidas de tendência central;
- que média simples distribui igualmente a soma pelos elementos;
- que média ponderada incorpora pesos diferentes;
- que mediana exige dados ordenados;
- que moda depende da frequência dos valores;
- que a mediana em dados agrupados estima a posição central dentro de uma classe;
- que `L_i`, `F_{ant}`, `f_{Md}` e `h` precisam ser identificados na tabela antes do cálculo;
- que outliers deslocam a média com mais força que a mediana;
- que assimetria positiva tende a produzir `\bar{x} > Md > Mo`;
- que assimetria negativa tende a produzir `\bar{x} < Md < Mo`;
- que distribuição simétrica tende a aproximar `\bar{x}`, `Md` e `Mo`;
- que a escolha da medida deve ser justificada pelo contexto.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- ensinar variância, desvio padrão, amplitude interquartil ou coeficiente de variação;
- ensinar box-plot formal;
- calcular escore-z;
- formalizar distribuição normal ou área sob curva;
- tratar média como estimador ótimo com demonstração algébrica;
- entrar em inferência estatística, amostragem formal ou testes de hipótese.

## 12. Linguagem esperada
- Referência operacional: `Referencias/series.md` — seção **1ª e 2ª Série EM**.
- Usar frases analíticas, com notação técnica acompanhada de explicação verbal.
- Em exemplos, nomear as colunas da tabela e explicar cada substituição na fórmula.
- Usar "medida mais adequada" e "medida mais honesta para esta pergunta" como eixos de interpretação.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Medidas de Tendência Central`
- Pergunta-problema: `## Qual número representa melhor o conjunto?`
- Abertura narrativa: renda de um grupo em que uma pessoa ganha muito mais que as demais, gerando diferença entre média e mediana.
- Para Conversar de intro: "Se a média sobe, todos melhoraram?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Média: Repartir a Soma
    - `### 1.1 Média aritmética simples`
    - `### 1.2 Média ponderada e pesos`
  - Bloco 2 — Mediana e Moda
    - `### 2.1 Ordenar para encontrar o centro`
    - `### 2.2 Frequência, moda e tipos de distribuição modal`
  - Bloco 3 — Dados Agrupados
    - `### 3.1 Classe mediana e frequência acumulada`
    - `### 3.2 Interpolação da mediana`
  - Bloco 4 — Comparar para Interpretar
    - `### 4.1 Outliers e assimetria`
    - `### 4.2 Quando usar média, mediana ou moda`
- Sua Parte: calcular média ponderada de boletim, mediana de 30 valores e moda de uma lista de consumo.
- Curiosidade da Ciência: Gauss, mínimos quadrados e a intuição de que a média minimiza erros quadráticos, sem demonstração.
- Enquanto isso...: Provérbios 11:1 como ponte para pesos e medidas honestas.
- E para hoje...: antes de aceitar uma média, perguntar se há outliers e se a mediana foi considerada.
- Esse foi o "cara": Carl Friedrich Gauss, com referência à soma de 1 a 100 e à estatística moderna.
- Você já pensou nisso?: por que renda média e renda mediana podem dar impressões sociais diferentes?
- Simplificando: média, mediana e moda são três retratos; escolher o retrato certo faz parte da interpretação.
- Para não esquecer: 5 bullets sobre média simples, ponderada, mediana, moda e outliers.

## 14. Âncoras visuais/concretas
- Lista de rendas com um valor extremo.
- Boletim com notas e pesos diferentes.
- Rol com `n` ímpar e rol com `n` par.
- Tabela de classes com frequência absoluta e frequência acumulada.
- Linha visual mostrando posição de `n/2` dentro da classe mediana.
- Três mini-histogramas conceituais: simétrico, cauda à direita e cauda à esquerda.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Provérbios 11:1.
- Ponteiro específico: escolher uma medida estatística sem verificar o contexto pode distorcer a verdade dos dados.
- Conexão temática: integridade estatística é apresentar a medida que responde à pergunta, não a que favorece uma conclusão pronta.

## 16. Critérios de aceite
O capítulo está adequado se:
- formaliza média simples, média ponderada, mediana e moda;
- inclui pelo menos um exemplo resolvido de média ponderada;
- inclui mediana em dados agrupados com identificação de `L_i`, `F_{ant}`, `f_{Md}` e `h`;
- compara as três medidas em contexto com outlier;
- explica assimetria positiva, assimetria negativa e simetria sem aprofundar distribuição normal;
- não antecipa variância, desvio padrão ou medidas de dispersão.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **calculará** média aritmética simples e ponderada em situações contextualizadas.
2. O aluno **determinará** mediana e moda em dados ordenados e não agrupados.
3. O aluno **estimará** a mediana em dados agrupados por interpolação.
4. O aluno **comparará** média, mediana e moda para interpretar conjuntos com outliers ou assimetria.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Substitui corretamente valores e pesos nas fórmulas.
- Distingue quantidade de valores de soma dos pesos.
- Interpreta o resultado no contexto do problema.

**Para o objetivo 2:**
- Ordena os dados antes de localizar a mediana.
- Diferencia caso par e caso ímpar.
- Identifica conjunto amodal, unimodal, bimodal ou multimodal.

**Para o objetivo 3:**
- Localiza a classe mediana pela frequência acumulada.
- Identifica `L_i`, `F_{ant}`, `f_{Md}` e `h`.
- Executa a interpolação e interpreta a estimativa.

**Para o objetivo 4:**
- Reconhece efeito de outliers sobre a média.
- Relaciona assimetria à posição relativa entre média, mediana e moda.
- Justifica qual medida comunica melhor o fenômeno analisado.

### Habilidade BNCC consolidada no capítulo
- **EM13MAT405:** utilizar conceitos e procedimentos estatísticos para interpretar e produzir informações em diferentes contextos.

## 18. Referências
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/1serie/unidade-4-medidas-de-tendencia-central-e-educacao-financeira.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Referencias/series.md`
- `Referencias/niveis_profundidade.md`
- BNCC: EM13MAT405
- Gauss, C. F. (1809). *Theoria Motus Corporum Coelestium*.
