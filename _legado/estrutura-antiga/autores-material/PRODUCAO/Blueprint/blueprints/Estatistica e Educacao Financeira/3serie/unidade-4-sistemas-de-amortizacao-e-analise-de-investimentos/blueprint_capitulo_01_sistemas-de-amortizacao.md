# Blueprint Técnico — Capítulo 1: Sistemas de Amortização

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 3ª Série EM
- Bimestre: 2º
- Unidade: 4 — Sistemas de Amortização e Análise de Investimentos
- Capítulo: 1 de 2
- Título: Sistemas de Amortização
- Códigos BNCC: EM13MAT511; EM13MAT302
- Profundidade geral: N4

## 2. Objetivo do capítulo
Ensinar o aluno a calcular e comparar sistemas Price, SAC e SAM, montando tabelas com prestação, juros, amortização e saldo devedor para tomar decisões de financiamento com base no custo total e na capacidade de pagamento.

## 3. Pergunta-problema
*"Se o SAC cobra menos juros no total, por que tanta gente escolhe Price?"*

## 4. Tensão narrativa
Price oferece parcela constante e previsível; SAC começa mais pesado, mas reduz o saldo mais rápido e costuma gerar menos juros. A tensão do capítulo é conforto inicial × custo total.

## 5. Sequência conceitual obrigatória
1. Abrir com financiamento imobiliário de R$ 300.000 em 360 meses e comparar parcela inicial e total pago.
2. Retomar saldo devedor, juros do período, amortização e prestação.
3. Fixar o padrão geral: $$PMT = J + A$$.
4. Apresentar Sistema Price: prestação constante, juros decrescentes e amortização crescente.
5. Aplicar a fórmula da prestação Price.
6. Montar tabela Price com pelo menos 6 períodos.
7. Calcular saldo devedor após $$k$$ pagamentos no Price.
8. Apresentar SAC: amortização constante, juros decrescentes e prestações decrescentes.
9. Montar tabela SAC com o mesmo financiamento usado no Price.
10. Comparar Price e SAC por primeira parcela, última parcela, total pago, total de juros e evolução do saldo.
11. Apresentar SAM como média entre Price e SAC.
12. Montar tabela comparativa final com Price, SAC e SAM.
13. Fechar com decisão contextual: menor parcela inicial, menor juros total ou equilíbrio.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Sistema Price | 30% | N4 | Coração 1. Fórmula da prestação, tabela completa e interpretação de amortização crescente. |
| Sistema SAC | 25% | N4 | Coração 2. Amortização constante, juros decrescentes e prestação decrescente. |
| Comparação Price × SAC | 20% | N4 | Coração 3. Comparar total pago, juros, primeira e última parcela, saldo devedor e cabimento no orçamento. |
| Sistema SAM | 15% | N3 | Mostrar como média entre Price e SAC, com tabela comparativa. |
| Aplicação real | 10% | N3 | Financiamento imobiliário de longo prazo com decisão justificada. |

## 7. Conceitos obrigatórios
- Sistema Price
- Tabela Price
- Sistema de Amortização Constante
- SAC
- Sistema de Amortização Misto
- SAM
- Prestação
- Juros do período
- Amortização
- Saldo devedor
- Custo total nominal
- Total de juros
- Valor presente das parcelas
- Financiamento imobiliário

## 8. Termos a explicar com tradução curta
- **Amortização:** parte da prestação que reduz a dívida principal.
- **Juros do período:** custo calculado sobre o saldo devedor antes do pagamento.
- **Saldo devedor:** parte da dívida que ainda falta pagar.
- **Prestação:** valor pago no período, formado por juros mais amortização.
- **Price:** sistema de prestação constante, com juros decrescentes e amortização crescente.
- **SAC:** sistema de amortização constante, com prestações decrescentes.
- **SAM:** sistema misto em que a prestação é a média entre Price e SAC.
- **Custo total nominal:** soma das prestações pagas, sem desconto para valor presente.

## 9. Fórmulas obrigatórias
Prestação no Sistema Price:

$$PMT = \frac{Pi(1+i)^{n}}{(1+i)^{n} - 1}$$

Saldo devedor após $$k$$ pagamentos no Price:

$$SD_{k} = P(1+i)^{k} - PMT \cdot \frac{(1+i)^{k} - 1}{i}$$

Sistema SAC:

$$A = \frac{P}{n}$$

$$J_{k} = SD_{k-1} \cdot i$$

$$PMT_{k} = A + J_{k}$$

$$SD_{k} = SD_{k-1} - A$$

Sistema SAM:

$$PMT_{k}^{\mathrm{SAM}} = \frac{PMT_{k}^{\mathrm{Price}} + PMT_{k}^{\mathrm{SAC}}}{2}$$

Total de juros:

$$J_{total} = T - P$$

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que a prestação se divide em juros e amortização;
- que os juros incidem sobre o saldo devedor anterior;
- que no Price a prestação é constante;
- que no Price a amortização cresce e os juros decrescem;
- que no SAC a amortização é constante;
- que no SAC as prestações decrescem porque os juros decrescem;
- que o SAM é a média entre Price e SAC;
- que comparar sistemas exige tabela, total pago e total de juros;
- que a melhor escolha depende de orçamento, prazo e tolerância à parcela inicial;
- que uma parcela inicial menor pode custar mais ao longo do tempo.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- ensinar VPL, TIR ou payback como conteúdo principal; isso fica para o Capítulo 2;
- discutir TIR múltiplas;
- trabalhar taxa variável, prepayment, duration ou risco de refinanciamento;
- transformar financiamento em aconselhamento financeiro individualizado;
- usar análise quantitativa de risco, CAPM, beta ou Sharpe.

## 12. Linguagem esperada
- Referência operacional: Ensino Médio, 3ª Série.
- Densidade algébrica alta, mas com tabelas que sustentem a interpretação.
- Em todo exemplo, indicar $$P$$, $$i$$, $$n$$, $$PMT$$, $$J$$, $$A$$ e $$SD$$.
- Evitar apenas afirmar que "SAC é melhor"; justificar pelo custo e pelo orçamento.
- Usar "parcela", "prestação", "saldo devedor" e "principal" com consistência.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Sistemas de Amortização`
- Pergunta-problema: `## Qual parcela cabe hoje e quanto ela custa amanhã?`
- Abertura narrativa: uma família compara financiamento de R$ 300.000 em 360 meses por Price, SAC e SAM.
- Para Conversar de intro: "Você escolheria a menor parcela inicial mesmo pagando mais no total?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Como Uma Dívida Diminui
    - `### 1.1 Prestação, juros e amortização`
    - `### 1.2 Saldo devedor e custo total`
  - Bloco 2 — Sistema Price
    - `### 2.1 Prestação constante`
    - `### 2.2 Tabela Price: juros caem, amortização cresce`
  - Bloco 3 — Sistema SAC
    - `### 3.1 Amortização constante`
    - `### 3.2 Prestações decrescentes`
  - Bloco 4 — Comparando Sistemas
    - `### 4.1 Price, SAC e SAM lado a lado`
    - `### 4.2 Decidir pelo orçamento e pelo custo`
- Sua Parte: montar tabelas Price e SAC para R$ 100.000, 60 meses, 1% ao mês, e comparar com SAM.
- Curiosidade da Ciência: Johan de Witt e a avaliação atuarial de anuidades na República Holandesa.
- Enquanto isso...: Provérbios 10:9 como ponte para comparar a tabela completa com integridade.
- E para hoje...: antes de escolher financiamento, pedir tabela completa e total de juros.
- Esse foi o "cara": Johan de Witt.
- Você já pensou nisso?: por que bancos destacam a parcela, e não o total de juros?
- Simplificando: Price é constante e previsível; SAC cai ao longo do tempo e costuma cobrar menos juros; SAM fica no meio.
- Para não esquecer: 5 bullets sobre prestação, juros, amortização, saldo devedor e comparação.

## 14. Âncoras visuais/concretas
- Tabela Price com pelo menos 6 períodos.
- Tabela SAC com pelo menos 6 períodos.
- Gráfico de prestação ao longo do tempo: Price horizontal, SAC decrescente, SAM intermediário.
- Gráfico de saldo devedor comparando Price e SAC.
- Cartão "prestação = juros + amortização".
- Quadro comparativo: primeira parcela, última parcela, total pago e total de juros.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Provérbios 10:9.
- Ponteiro específico: integridade financeira é comparar a tabela completa, não apenas a prestação inicial.
- Conexão temática: Price pode parecer melhor porque começa menor e fica estável; SAC pode assustar no início, mas revela menor custo total. A decisão íntegra olha para o caminho inteiro.

## 16. Critérios de aceite
O capítulo está adequado se:
- define amortização, juros, prestação e saldo devedor;
- aplica corretamente a fórmula do Price;
- monta tabela Price com prestação constante;
- monta tabela SAC com amortização constante;
- calcula SAM como média entre Price e SAC;
- compara os três sistemas por total pago e total de juros;
- usa pelo menos um financiamento realista de longo prazo;
- não antecipa VPL, TIR e payback como conteúdo principal.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **explicará** a composição da prestação em juros e amortização.
2. O aluno **calculará** prestações e tabelas do Sistema Price.
3. O aluno **calculará** prestações e tabelas do SAC.
4. O aluno **comparará** Price, SAC e SAM em um mesmo financiamento.
5. O aluno **justificará** uma decisão de financiamento com base em custo e orçamento.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Identifica juros do período a partir do saldo devedor.
- Distingue amortização de prestação.
- Atualiza corretamente o saldo devedor.

**Para o objetivo 2:**
- Substitui $$P$$, $$i$$ e $$n$$ na fórmula Price.
- Mantém $$PMT$$ constante na tabela.
- Calcula juros decrescentes e amortização crescente.

**Para o objetivo 3:**
- Calcula $$A = P/n$$.
- Calcula $$J_{k} = SD_{k-1} \cdot i$$.
- Calcula prestações decrescentes.

**Para o objetivo 4:**
- Calcula total pago e total de juros.
- Compara primeira e última parcela.
- Reconhece o SAM como intermediário entre Price e SAC.

**Para o objetivo 5:**
- Relaciona escolha ao orçamento inicial.
- Relaciona escolha ao custo total.
- Argumenta com tabela e não apenas com impressão.

### Habilidades BNCC consolidadas no capítulo
- **EM13MAT511:** aplicação de matemática financeira avançada em sistemas de amortização.
- **EM13MAT302:** uso de funções e relações exponenciais na fórmula Price.

## 18. Referências
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/3serie/unidade-4-sistemas-de-amortizacao-e-analise-de-investimentos.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Referencias/series.md`
- `Referencias/niveis_profundidade.md`
- BNCC: EM13MAT511; EM13MAT302
- Johan de Witt: *Waardye van Lyf-renten* e avaliação atuarial de anuidades.
