# Blueprint Técnico — Capítulo 2: Análise de Investimentos

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 3ª Série EM
- Bimestre: 2º
- Unidade: 4 — Sistemas de Amortização e Análise de Investimentos
- Capítulo: 2 de 2
- Título: Análise de Investimentos
- Códigos BNCC: EM13MAT511; EM13MAT302
- Profundidade geral: N3-N4

## 2. Objetivo do capítulo
Ensinar o aluno a calcular VPL, estimar TIR, determinar payback simples e descontado, e comparar alternativas de investimento considerando custo de oportunidade e fluxo de caixa no tempo.

## 3. Pergunta-problema
*"Como comparar dinheiro que entra hoje com dinheiro que só aparece daqui a anos?"*

## 4. Tensão narrativa
Um projeto pode devolver mais dinheiro no total e ainda assim valer menos hoje. A tensão do capítulo é retorno nominal × valor presente.

## 5. Sequência conceitual obrigatória
1. Abrir com dois projetos: R$ 60.000 em 1 ano ou R$ 120.000 em 5 anos para investimento inicial de R$ 50.000.
2. Retomar valor presente, valor futuro e fluxo de caixa.
3. Definir taxa de desconto como custo de oportunidade.
4. Apresentar VPL como soma dos fluxos trazidos a valor presente menos o investimento inicial.
5. Resolver VPL com fluxo uniforme.
6. Resolver VPL com fluxo não uniforme de até 5 períodos.
7. Formalizar critério: aceitar, rejeitar ou ficar indiferente.
8. Comparar projetos mutuamente exclusivos pelo maior VPL.
9. Definir TIR como taxa que zera o VPL.
10. Estimar TIR por tentativa e interpolação linear em problemas pequenos.
11. Explicar conflito possível entre TIR e VPL em projetos mutuamente exclusivos.
12. Definir payback simples.
13. Definir payback descontado.
14. Integrar VPL, TIR e payback em uma decisão real.
15. Fechar com a diferença entre "retorna o dinheiro rápido" e "gera valor".

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| VPL | 30% | N4 | Coração 1. Calcular para fluxos uniformes e não uniformes; aplicar critério de decisão. |
| Projetos mutuamente exclusivos | 10% | N3 | Maior VPL vence quando só uma alternativa pode ser escolhida. |
| TIR | 20% | N4 | Coração 2. Taxa que zera VPL; cálculo por tentativa e interpolação linear. |
| Payback simples e descontado | 15% | N3 | Recuperação do investimento, com e sem desconto dos fluxos. |
| Custo de oportunidade | 10% | N2-N3 | Taxa mínima exigida; comparação com alternativa segura. |
| Aplicação integrada | 15% | N4 | Comprar versus alugar ou expansão empresarial com fluxo de caixa descontado. |

## 7. Conceitos obrigatórios
- Fluxo de caixa
- Investimento inicial
- Valor presente
- Valor Presente Líquido
- VPL
- Taxa de desconto
- Custo de capital
- Custo de oportunidade
- Taxa Interna de Retorno
- TIR
- Payback simples
- Payback descontado
- Projeto mutuamente exclusivo
- Critério de decisão

## 8. Termos a explicar com tradução curta
- **Fluxo de caixa:** entradas e saídas de dinheiro em cada período.
- **Investimento inicial:** saída de dinheiro no começo do projeto.
- **Taxa de desconto:** taxa usada para trazer fluxos futuros a valor presente.
- **Custo de oportunidade:** retorno da melhor alternativa deixada de lado.
- **VPL:** valor criado ou destruído por um projeto depois de descontar os fluxos.
- **TIR:** taxa de desconto que faz o VPL ser zero.
- **Payback simples:** tempo para recuperar o investimento somando fluxos nominais.
- **Payback descontado:** tempo para recuperar o investimento somando fluxos em valor presente.
- **Projeto mutuamente exclusivo:** situação em que escolher um projeto impede escolher outro.

## 9. Fórmulas obrigatórias
Valor Presente Líquido:

$$VPL = -I_{0} + \sum_{k=1}^{n} \frac{FC_{k}}{(1+r)^{k}}$$

Taxa Interna de Retorno:

$$0 = -I_{0} + \sum_{k=1}^{n} \frac{FC_{k}}{(1+\mathrm{TIR})^{k}}$$

Critério de decisão por VPL:

$$VPL > 0$$

$$VPL = 0$$

$$VPL < 0$$

Payback descontado:

$$\sum_{k=1}^{T} \frac{FC_{k}}{(1+r)^{k}} \geq I_{0}$$

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que dinheiro em datas diferentes não deve ser somado diretamente;
- que a taxa de desconto representa custo de oportunidade ou retorno mínimo exigido;
- que VPL positivo indica criação de valor;
- que VPL negativo indica destruição de valor;
- que em projetos mutuamente exclusivos o maior VPL é o critério principal;
- que TIR é a taxa que zera o VPL;
- que TIR pode conflitar com VPL em alternativas mutuamente exclusivas;
- que payback simples ignora o valor do dinheiro no tempo;
- que payback descontado corrige esse problema parcialmente;
- que payback não mede todo o valor criado após a recuperação do investimento.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- ensinar TIR múltiplas em fluxos com inversões repetidas de sinal;
- usar VPL com taxa variável no tempo;
- ensinar CAPM, beta, Markowitz, Sharpe ou custo médio ponderado de capital;
- usar Monte Carlo;
- aplicar fórmula de Fischer para taxa real;
- transformar a decisão em recomendação financeira personalizada.

## 12. Linguagem esperada
- Referência operacional: Ensino Médio, 3ª Série.
- Cada exercício resolvido deve apresentar linha do tempo ou tabela de fluxo.
- Indicar $$I_{0}$$, $$FC_{k}$$, $$r$$, $$n$$ e unidade temporal antes da fórmula.
- Usar valores monetários arredondados quando a interpretação for mais importante que centavos.
- Explicar TIR por ideia de "taxa de empate" antes de calcular.
- Evitar planilhas como caixa-preta; se mencionar planilha, mostrar antes o cálculo essencial.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 2 — Análise de Investimentos`
- Pergunta-problema: `## Quanto vale hoje o dinheiro de amanhã?`
- Abertura narrativa: dois projetos com mesmo investimento inicial e retornos em prazos diferentes.
- Para Conversar de intro: "Você prefere receber menos logo ou mais depois? Que cálculo decide?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Fluxos no Tempo
    - `### 1.1 Fluxo de caixa e taxa de desconto`
    - `### 1.2 Custo de oportunidade`
  - Bloco 2 — Valor Presente Líquido
    - `### 2.1 Como calcular VPL`
    - `### 2.2 Critério de decisão`
  - Bloco 3 — TIR e Payback
    - `### 3.1 TIR como taxa de empate`
    - `### 3.2 Payback simples e descontado`
  - Bloco 4 — Comparando Alternativas
    - `### 4.1 Quando os critérios discordam`
    - `### 4.2 Comprar, alugar ou investir`
- Sua Parte: calcular VPL, TIR aproximada, payback simples e payback descontado para dois projetos concorrentes.
- Curiosidade da Ciência: Joel Dean e a popularização do VPL em decisões empresariais.
- Enquanto isso...: Lucas 16:10 como ponte para fidelidade nos pequenos fluxos e decisões maiores.
- E para hoje...: antes de investir, comparar retorno com custo de oportunidade.
- Esse foi o "cara": Joel Dean, com marcação de que foi economista, não matemático puro.
- Você já pensou nisso?: uma decisão com retorno maior pode ser pior se demorar demais?
- Simplificando: VPL traz todos os fluxos a hoje; TIR acha a taxa de empate; payback mede o tempo de recuperação.
- Para não esquecer: 5 bullets sobre fluxo, desconto, VPL, TIR e payback.

## 14. Âncoras visuais/concretas
- Linha do tempo com investimento inicial e fluxos futuros.
- Tabela de VPL com colunas: período, fluxo, fator de desconto, valor presente e acumulado.
- Gráfico de VPL em função da taxa para localizar a TIR.
- Comparador de dois projetos mutuamente exclusivos.
- Tabela de payback simples versus payback descontado.
- Diagrama "melhor alternativa deixada de lado" para custo de oportunidade.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Lucas 16:10.
- Ponteiro específico: VPL pergunta "vale a pena?", e integridade exige aceitar a resposta do cálculo.
- Conexão temática: quando o VPL é negativo, inventar justificativas para aceitar o projeto é abandonar a fidelidade nos detalhes. Decisão íntegra usa o critério certo, mesmo quando a preferência pessoal aponta para outro lado.

## 16. Critérios de aceite
O capítulo está adequado se:
- define fluxo de caixa, taxa de desconto e custo de oportunidade;
- calcula VPL para fluxo uniforme e não uniforme;
- aplica corretamente o critério VPL positivo, zero ou negativo;
- compara projetos mutuamente exclusivos pelo VPL;
- define TIR como taxa que zera o VPL;
- estima TIR por tentativa ou interpolação linear;
- calcula payback simples e descontado;
- mostra que payback não substitui VPL;
- não antecipa temas universitários como múltiplas TIRs, CAPM ou Monte Carlo.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **representará** investimentos por fluxos de caixa.
2. O aluno **calculará** VPL em projetos com fluxos uniformes e não uniformes.
3. O aluno **estimará** TIR em situações simples.
4. O aluno **calculará** payback simples e descontado.
5. O aluno **comparará** alternativas usando custo de oportunidade e critério matemático.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Identifica investimento inicial.
- Organiza entradas e saídas por período.
- Indica corretamente a taxa de desconto.

**Para o objetivo 2:**
- Desconta cada fluxo pelo período correto.
- Soma valores presentes e subtrai o investimento inicial.
- Interpreta VPL positivo, nulo ou negativo.

**Para o objetivo 3:**
- Explica TIR como taxa de empate.
- Testa taxas para encontrar mudança de sinal do VPL.
- Usa interpolação linear quando solicitado.

**Para o objetivo 4:**
- Soma fluxos nominais para payback simples.
- Soma fluxos descontados para payback descontado.
- Reconhece que payback ignora fluxos posteriores à recuperação.

**Para o objetivo 5:**
- Usa custo de oportunidade como taxa mínima.
- Escolhe maior VPL em projetos mutuamente exclusivos.
- Justifica decisão com cálculo, não apenas com retorno nominal.

### Habilidades BNCC consolidadas no capítulo
- **EM13MAT511:** matemática financeira avançada aplicada à análise de investimentos.
- **EM13MAT302:** relações exponenciais no desconto de fluxos ao longo do tempo.

## 18. Referências
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/3serie/unidade-4-sistemas-de-amortizacao-e-analise-de-investimentos.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Referencias/series.md`
- `Referencias/niveis_profundidade.md`
- BNCC: EM13MAT511; EM13MAT302
- Joel Dean: *Capital Budgeting* e popularização do VPL como critério empresarial.
