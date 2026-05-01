# Capítulo 3 — Juros Simples - Introdução

## Quanto uma taxa pequena muda o valor final?

Sua avó te deu R$ 1.000 de aniversário e sugeriu aplicar na poupança até a viagem do ano que vem. O gerente do banco diz que a aplicação rende cerca de 1% ao mês. Em 6 meses, você quer descobrir: o dinheiro vai virar quanto? À primeira vista, 1% parece pouco. Mas antes de aceitar essa impressão, vem a pergunta da matemática financeira: quanto uma taxa pequena muda o valor final?

> 💭 **Pense um pouco:**  
> O que é mais importante observar antes de uma aplicação: o valor inicial, a taxa ou o tempo?

---

## 1. O Que São Juros

Juros são o **preço do dinheiro no tempo** — quanto se paga (ou se recebe) por usar um valor durante um período.

### 1.1 Dinheiro no tempo

Quando alguém empresta R$ 100 para você devolver em 6 meses, o dinheiro tem dois custos: o valor em si e o tempo que ele ficou fora da posse de quem emprestou. Os **juros** representam esse custo do tempo.

Em uma aplicação, o sentido se inverte: você empresta seu dinheiro ao banco (ou ao governo, no caso do Tesouro), e ele te paga juros pelo período em que ficou com seu valor.

### 1.2 Capital e juro

Os dois conceitos básicos:

- **Capital** ($$C$$): o valor inicial — quanto você emprestou, aplicou ou pegou emprestado;
- **Juro** ($$J$$): o valor acrescentado ao capital pelo uso do dinheiro no tempo.

> Aplicando ao seu caso: o capital é R$ 1.000 (o presente da avó). Os juros são quanto vai ser somado a esse valor depois dos 6 meses na poupança.

---

## 2. Os Três Dados da Conta

Toda operação de juros simples é definida por três valores: capital, taxa e tempo.

### 2.1 Capital, taxa e tempo

- **Capital ($$C$$)**: valor inicial em reais;
- **Taxa ($$i$$)**: percentual cobrado ou recebido por período;
- **Tempo ($$t$$)**: número de períodos da operação.

A regra crítica: **taxa e tempo precisam usar o mesmo período**. Taxa ao mês exige tempo em meses; taxa ao ano exige tempo em anos. Misturar os dois é fonte clássica de erro.

### 2.2 Taxa percentual e taxa decimal

Antes de entrar em qualquer fórmula, a taxa percentual precisa ser convertida em decimal:

$$ 1\% = \frac{1}{100} = 0{,}01 $$

$$ 5\% = \frac{5}{100} = 0{,}05 $$

$$ 10\% = \frac{10}{100} = 0{,}10 $$

$$ 25\% = \frac{25}{100} = 0{,}25 $$

A regra prática: divida o número por 100 (ou desloque a vírgula duas casas para a esquerda). Substituir 1% direto na fórmula como "1" multiplicaria os juros por 100 vezes.

> 📊 **Nos Números:**  
> Em 2026, a poupança rende cerca de 0,65% ao mês (regra 0,5% + TR enquanto Selic estiver acima de 8,5% ao ano) — ou aproximadamente 8% ao ano.

---

## 3. A Fórmula dos Juros Simples

### 3.1 Substituir em $$J = C \cdot i \cdot t$$

A fórmula dos juros simples é direta:

$$ J = C \cdot i \cdot t $$

Onde $$C$$ é o capital, $$i$$ é a taxa em decimal e $$t$$ é o tempo na mesma unidade da taxa.

> Aplicando ao caso da poupança — C = R$ 1.000, i = 0,01 (1% a.m.), t = 6 meses:

$$ J = 1.000 \cdot 0{,}01 \cdot 6 $$

$$ J = 10 \cdot 6 $$

$$ J = 60 $$

Os juros somam R$ 60 ao longo dos 6 meses.

### 3.2 Tempo e taxa no mesmo período

Atenção crítica: se a taxa é "1% ao mês" mas você quer calcular em anos, é preciso ajustar.

| Taxa anunciada | Tempo dado | O que ajustar |
|:---|:---|:---|
| 1% ao mês | 6 meses | nada — está coerente |
| 1% ao mês | 1 ano | converter tempo para 12 meses |
| 12% ao ano | 6 meses | converter tempo para 0,5 ano |

Se a operação é apresentada em mês mas você precisa do total anual, mantenha a taxa mensal e ajuste o tempo (12 meses) — ou converta a taxa anual e o tempo, mas **sempre na mesma unidade**.

> 📐 **Fazendo as Contas:**  
> Capital R$ 500, taxa 2% ao mês, 4 meses: $$J = 500 \cdot 0{,}02 \cdot 4 = 40$$.

---

## 4. Montante

### 4.1 Somar capital e juros

O **montante** ($$M$$) é o valor final da operação — capital somado aos juros:

$$ M = C + J $$

> Voltando à poupança da avó:

$$ M = 1.000 + 60 $$

$$ M = 1.060 $$

Em 6 meses, R$ 1.000 viraram R$ 1.060. O dinheiro cresceu R$ 60 no período.

Existe também a forma compacta, que combina os dois cálculos em uma fórmula só:

$$ M = C \cdot (1 + i \cdot t) $$

Aplicada ao caso:

$$ M = 1.000 \cdot (1 + 0{,}01 \cdot 6) $$

$$ M = 1.000 \cdot 1{,}06 $$

$$ M = 1.060 $$

Mesmo resultado por dois caminhos diferentes.

### 4.2 Problemas introdutórios

Veja três casos típicos resolvidos:

**Caso 1 — Aplicação:** R$ 2.000 a 0,8% ao mês por 3 meses.

$$ J = 2.000 \cdot 0{,}008 \cdot 3 = 48 $$

$$ M = 2.000 + 48 = 2.048 $$

**Caso 2 — Empréstimo:** R$ 500 a 2% ao mês por 4 meses.

$$ J = 500 \cdot 0{,}02 \cdot 4 = 40 $$

$$ M = 500 + 40 = 540 $$

**Caso 3 — Poupança:** R$ 1.000 a 0,65% ao mês por 12 meses.

$$ J = 1.000 \cdot 0{,}0065 \cdot 12 = 78 $$

$$ M = 1.000 + 78 = 1.078 $$

A regra final: **identificar capital, taxa e tempo antes de qualquer cálculo**. Depois é só substituir.

> ⏸️ **Pare e Pense:**  
> Se você dobrasse o tempo da aplicação (de 6 para 12 meses), os juros dobrariam exatamente — em juros simples. E se a operação fosse de juros compostos? (assunto da 2ª série EM)

---

## NA VIDA REAL

Em 2026, a poupança rende cerca de 8% ao ano (juros simples aproximados na regra 0,5% + TR ao mês). Empréstimos pessoais comuns, parcelamentos e crédito consignado também usam variações da mesma matemática — sempre com capital, taxa e tempo claros.

---

## E A BÍBLIA NISSO?

> "A riqueza obtida com o trabalho aumenta pouco a pouco." (Provérbios 13:11)

Integridade financeira é clareza nos pequenos passos. Uma conta de juros íntegra mostra capital, taxa e tempo sem esconder etapas — e quem entende cada elemento aceita ou recusa uma proposta com base na conta, não na impressão.

- **Confira capital, taxa e tempo antes de aceitar.** Decisão financeira íntegra começa identificando os três dados e calculando o montante — só depois vem a comparação com alternativas (Provérbios 13:11).

> 💬 **Para Conversar:**  
> Que pequena decisão financeira da sua família — uma poupança, um parcelamento, uma mesada poupada — fez diferença ao longo do tempo?

---

## Simplificando

Juros simples são capital vezes taxa decimal vezes tempo: $$J = C \cdot i \cdot t$$, com taxa e tempo sempre no mesmo período, e o montante final é capital mais juros.

---

## Para não esquecer

- **Três dados:** capital ($$C$$), taxa em decimal ($$i$$), tempo ($$t$$) no mesmo período da taxa;
- **Fórmula central:** $$J = C \cdot i \cdot t$$ — depois $$M = C + J$$ para o valor final;
- **Crescimento linear:** dobrar o tempo dobra os juros, em juros simples — diferente de juros compostos (a chegar na 2ª série EM).
