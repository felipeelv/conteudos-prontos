# Blueprint Técnico — Capítulo 2: Cartão de Crédito

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 9º Ano EF
- Bimestre: 2º
- Unidade: 4 — Educação Financeira: Crédito e Consumo
- Capítulo: 2 de 4
- Título: Cartão de Crédito
- Código BNCC: EF09MA05
- Profundidade geral: N3

## 2. Objetivo do capítulo
Ensinar o aluno a entender o ciclo da fatura, diferenciar pagamento total e mínimo, simular o efeito do rotativo e reconhecer alternativas mais responsáveis para lidar com uma fatura que não pode ser quitada integralmente.

## 3. Pergunta-problema
*"O que acontece com uma fatura de R$ 1.000 quando alguém paga só o mínimo e deixa o restante no rotativo?"*

## 4. Tensão narrativa
O cartão separa o momento de comprar do momento de pagar. A tensão do capítulo é ferramenta × armadilha: quando a fatura é quitada, o cartão organiza; quando o mínimo vira rotina, ele transforma consumo passado em dívida crescente. 💭

## 5. Sequência conceitual obrigatória
1. Abrir com fatura de R$ 1.000 e pagamento mínimo de 15%.
2. Explicar limite, compra, fechamento, vencimento e fatura.
3. Mostrar a diferença entre pagar total, pagar parte e pagar mínimo.
4. Definir rotativo como saldo que fica para o mês seguinte com juros muito altos.
5. Simular o saldo restante após um mês usando taxa mensal.
6. Mostrar, por tabela curta, como o saldo cresce em dois ou três meses sem novos gastos.
7. Explicar por que pagar total no vencimento evita juros do rotativo.
8. Apresentar alternativas: negociar, parcelar a fatura, trocar por crédito mais barato, reduzir gastos e evitar novos lançamentos.
9. Relacionar uso consciente a limite, orçamento e data de vencimento.
10. Fechar com regra prática: cartão não é extensão da renda.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Funcionamento | 20% | N2 | Ciclo da fatura, limite, fechamento e vencimento. |
| Juros rotativos | 40% | N3 | Coração 1. Saldo restante, taxa mensal e crescimento rápido. |
| Uso consciente | 20% | N2 | Pagar integral, controlar limite e registrar compras no orçamento. |
| Alternativas de pagamento | 20% | N3 | Coração 2. Negociação, parcelamento da fatura e crédito mais barato. |

## 7. Conceitos obrigatórios
- Limite do cartão
- Fatura
- Fechamento
- Vencimento
- Pagamento total
- Pagamento mínimo
- Saldo restante
- Rotativo
- Parcelamento da fatura
- Anuidade
- Encargos
- Juros ao mês
- Uso consciente

## 8. Termos a explicar com tradução curta
- **Limite:** valor máximo que o cartão permite gastar.
- **Fechamento:** data em que os gastos entram na fatura.
- **Vencimento:** data de pagamento da fatura.
- **Pagamento mínimo:** menor valor aceito para não atrasar, mas que deixa dívida.
- **Rotativo:** crédito automático usado quando parte da fatura fica sem pagamento.
- **Encargos:** custos cobrados sobre saldo não quitado.

## 9. Fórmulas obrigatórias
Saldo do rotativo após um mês:

$$S_{1} = (V - p) \cdot (1 + i)$$

Explicar: $$V$$ é o total da fatura, $$p$$ é o pagamento feito, $$i$$ é a taxa mensal em decimal e $$S_{1}$$ é o saldo devedor depois de um mês.

Pagamento mínimo de 15%, quando usado no exemplo:

$$p = 0{,}15 \cdot V$$

Permitir tabela de dois ou três meses para mostrar repetição do fator $$(1+i)$$, sem transformar isso em aula formal de juros compostos.

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que cartão é uma forma de crédito;
- que pagar a fatura integral no vencimento evita juros sobre o saldo;
- que pagar o mínimo não quita a dívida;
- que o rotativo é uma das modalidades mais caras do mercado;
- que a taxa mensal precisa virar decimal para entrar na conta;
- que o saldo restante cresce rapidamente quando não é quitado;
- que parcelamento da fatura pode ser menos ruim que rotativo, mas ainda é dívida;
- que uso consciente exige limite compatível com renda e registro das compras.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- formalizar juros compostos com regra geral $$M = C(1+i)^n$$ como conteúdo central;
- ensinar equivalência de taxa mensal para anual;
- comparar compras à vista e parceladas como foco principal; isso fica para o Capítulo 3;
- fazer análise de financiamento ou amortização;
- tratar score de crédito, milhas, cashback ou benefícios como conteúdo central.

## 12. Linguagem esperada
- Referência operacional: `Referencias/series.md` — seção **8º e 9º Ano — EF2 anos finais**.
- Usar exemplos com faturas redondas e taxa mensal explícita.
- Nomear a armadilha sem exagero: o problema não é ter cartão, é usar o mínimo como plano.
- Explicar "rotativo" antes de usar o termo repetidamente.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 2 — Cartão de Crédito`
- Pergunta-problema: `## O mínimo da fatura resolve ou só empurra a dívida?`
- Abertura narrativa: fatura de R$ 1.000, pagamento mínimo de R$ 150 e saldo de R$ 850 entrando no rotativo.
- Para Conversar de intro: "Por que pagar uma parte pode dar a sensação de problema resolvido?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Como o Cartão Funciona
    - `### 1.1 Limite, compra e fatura`
    - `### 1.2 Fechamento e vencimento`
  - Bloco 2 — O Rotativo
    - `### 2.1 O que sobra vira dívida`
    - `### 2.2 Uma simulação de três meses`
  - Bloco 3 — Uso Consciente
    - `### 3.1 Pagar total é a regra saudável`
    - `### 3.2 Limite não é renda`
  - Bloco 4 — Alternativas
    - `### 4.1 Quando não dá para pagar tudo`
    - `### 4.2 Negociar antes de virar bola de neve`
- Sua Parte: calcular saldo de rotativo de uma fatura com pagamento parcial.
- Curiosidade da Ciência: Frank McNamara e a origem do cartão moderno como separação entre compra e pagamento.
- Enquanto isso...: Romanos 13:8 como ponte para não normalizar dívida.
- E para hoje...: registrar compras no orçamento e evitar usar o mínimo como solução.
- Esse foi o "cara": Frank McNamara.
- Você já pensou nisso?: uma compra antiga pode continuar crescendo mesmo sem novos gastos.
- Simplificando: pagar o mínimo é alugar dinheiro caro.
- Para não esquecer: 5 bullets sobre fatura, vencimento, mínimo, rotativo e pagamento total.

## 14. Âncoras visuais/concretas
- Fatura simplificada com total, mínimo, vencimento e encargos.
- Linha do tempo: compra → fechamento → vencimento → próxima fatura.
- Tabela de saldo restante em três meses.
- Comparação visual: pagar total × pagar mínimo.
- Alerta de orçamento: limite do cartão separado da renda mensal.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Romanos 13:8.
- Ponteiro específico: pagar o mínimo pode parecer solução honesta no presente, mas esconde uma dívida que volta maior.
- Conexão temática: integridade financeira é tratar a fatura como compromisso real, não como problema invisível até o próximo mês.

## 16. Critérios de aceite
O capítulo está adequado se:
- explica o ciclo do cartão com fechamento e vencimento;
- diferencia pagamento total, parcial e mínimo;
- define rotativo e mostra seu efeito por cálculo simples;
- apresenta alternativas ao rotativo;
- conecta uso consciente a orçamento e limite;
- não transforma o capítulo em aula formal de juros compostos, milhas ou benefícios de cartão.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **descreverá** o funcionamento básico de uma fatura de cartão.
2. O aluno **distinguirá** pagamento total, parcial e mínimo.
3. O aluno **calculará** o saldo do rotativo após um mês.
4. O aluno **avaliará** alternativas para uma fatura que não cabe no orçamento.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Identifica limite, fechamento e vencimento.
- Explica quando uma compra entra na fatura.
- Reconhece que cartão é crédito.

**Para o objetivo 2:**
- Explica que pagamento total evita saldo devedor.
- Calcula pagamento mínimo em exemplo simples.
- Reconhece que pagamento mínimo não quita a fatura.

**Para o objetivo 3:**
- Subtrai o pagamento feito do valor total.
- Converte taxa mensal percentual para decimal.
- Multiplica o saldo restante por $$(1+i)$$.

**Para o objetivo 4:**
- Compara rotativo e parcelamento da fatura como alternativas.
- Propõe redução de novos gastos durante negociação.
- Justifica por que ignorar a dívida aumenta o problema.

### Habilidade BNCC consolidada no capítulo
- **EF09MA05:** resolver problemas com porcentagens e percentuais sucessivos no contexto da educação financeira.

## 18. Referências
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/9ano/unidade-4-educacao-financeira-credito-e-consumo.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Referencias/series.md`
- `Referencias/niveis_profundidade.md`
- BNCC: EF09MA05
- Banco Central do Brasil: taxas médias do rotativo do cartão.
