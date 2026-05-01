# Capítulo 1 — Sistemas de Amortização

## Qual parcela cabe hoje e quanto ela custa amanhã?

Uma família vai à Caixa em busca do financiamento da casa própria: imóvel de R$ 300.000, prazo de 360 meses, taxa em torno de 11% ao ano somada à TR. O atendente apresenta dois sistemas — Price, com parcela inicial menor e estável, ou SAC, com parcela maior no início que decresce ao longo dos 30 anos. A diferença entre as primeiras prestações chega a quase R$ 800. Mas a diferença no total de juros pagos durante o contrato passa de R$ 250.000. Antes de assinar, vem a pergunta que muda 30 anos da história financeira da família: qual parcela cabe hoje, e quanto ela custa amanhã?

> 💭 **Pense um pouco:**  
> Você escolheria a menor parcela inicial mesmo pagando muito mais no total?

---

## 1. Como Uma Dívida Diminui

Toda parcela de um financiamento se divide em duas partes: o que paga juros do período e o que efetivamente reduz o principal.

### 1.1 Prestação, juros e amortização

A **prestação** ($$PMT$$) é o valor pago a cada período, e ela se decompõe em duas parcelas — juros e amortização:

$$ PMT = J + A $$

Onde $$J$$ é a parcela de **juros do período**, calculada sobre o saldo devedor anterior; e $$A$$ é a parcela de **amortização**, valor que efetivamente reduz a dívida principal.

Em qualquer sistema de amortização, os juros são calculados sobre o saldo devedor ($$SD$$) imediatamente anterior ao pagamento:

$$ J_k = SD_{k-1} \cdot i $$

Onde $$i$$ é a taxa por período e $$k$$ é o número da prestação corrente.

### 1.2 Saldo devedor e custo total

Após cada pagamento, o saldo devedor atualiza-se subtraindo a amortização do mês:

$$ SD_k = SD_{k-1} - A_k $$

O **custo total nominal** ($$T$$) é a soma de todas as prestações pagas, e o **total de juros** ($$J_{total}$$) é a diferença entre o que foi pago e o principal financiado:

$$ J_{total} = T - P $$

> 💡 **Você sabia?**  
> No século XVII, o estadista holandês Johan de Witt foi pioneiro na avaliação atuarial de anuidades — base matemática que evoluiu até os sistemas de amortização modernos.

---

## 2. Sistema Price

No Sistema Francês de Amortização (Price), a prestação é constante ao longo de todo o contrato — só a composição interna entre juros e amortização varia mês a mês.

### 2.1 Prestação constante

A prestação no Sistema Price é dada por:

$$ PMT = \frac{P \cdot i \cdot (1+i)^n}{(1+i)^n - 1} $$

Onde $$P$$ é o valor financiado; $$i$$ é a taxa por período; e $$n$$ é o número total de períodos.

> Aplicando ao financiamento da família — com P = R$ 300.000, i = 1% ao mês e n = 360 meses:

$$ PMT = \frac{300000 \cdot 0{,}01 \cdot (1{,}01)^{360}}{(1{,}01)^{360} - 1} $$

$$ PMT = \frac{300000 \cdot 0{,}01 \cdot 35{,}95}{34{,}95} $$

$$ PMT = \frac{107.840}{34{,}95} $$

$$ PMT \approx 3.085{,}80 $$

A prestação fixa é aproximadamente R$ 3.085,80 — repetida por 360 meses.

### 2.2 Tabela Price: juros caem, amortização cresce

Como a prestação é constante e os juros incidem sobre saldo decrescente, a parcela de juros diminui a cada mês — e a amortização aumenta na mesma proporção.

| Mês | Saldo inicial | Juros (1%) | Amortização | Prestação | Saldo final |
|:---:|---:|---:|---:|---:|---:|
| 1 | 300.000,00 | 3.000,00 | 85,80 | 3.085,80 | 299.914,20 |
| 2 | 299.914,20 | 2.999,14 | 86,66 | 3.085,80 | 299.827,54 |
| 3 | 299.827,54 | 2.998,28 | 87,52 | 3.085,80 | 299.740,02 |
| 4 | 299.740,02 | 2.997,40 | 88,40 | 3.085,80 | 299.651,62 |
| 5 | 299.651,62 | 2.996,52 | 89,28 | 3.085,80 | 299.562,34 |
| 6 | 299.562,34 | 2.995,62 | 90,18 | 3.085,80 | 299.472,16 |

Repare que nos primeiros 6 meses (quase R$ 18.500 pagos), pouco mais de R$ 528 reduziram a dívida — o resto virou juros.

> 📊 **Nos Números:**  
> Em 2026, a taxa média de financiamento imobiliário SBPE pela Caixa fica em torno de 11% ao ano + TR — patamar diretamente influenciado pela Selic em aproximadamente 15% ao ano.

---

## 3. Sistema SAC

No Sistema de Amortização Constante (SAC), o que se mantém constante é a parcela de amortização — não a prestação.

### 3.1 Amortização constante

A amortização é o valor financiado dividido pelo número de períodos:

$$ A = \frac{P}{n} $$

> Aplicando ao mesmo financiamento (P = R$ 300.000, n = 360):

$$ A = \frac{300000}{360} $$

$$ A \approx 833{,}33 $$

A cada mês, R$ 833,33 reduzem o principal — independentemente do mês ou do saldo restante.

### 3.2 Prestações decrescentes

Como a amortização é fixa e os juros caem com o saldo devedor, a prestação diminui mês a mês:

$$ J_k = SD_{k-1} \cdot i $$

$$ PMT_k = A + J_k $$

| Mês | Saldo inicial | Juros (1%) | Amortização | Prestação | Saldo final |
|:---:|---:|---:|---:|---:|---:|
| 1 | 300.000,00 | 3.000,00 | 833,33 | 3.833,33 | 299.166,67 |
| 2 | 299.166,67 | 2.991,67 | 833,33 | 3.825,00 | 298.333,34 |
| 3 | 298.333,34 | 2.983,33 | 833,33 | 3.816,66 | 297.500,01 |
| 4 | 297.500,01 | 2.975,00 | 833,33 | 3.808,33 | 296.666,68 |
| 5 | 296.666,68 | 2.966,67 | 833,33 | 3.800,00 | 295.833,35 |
| 6 | 295.833,35 | 2.958,33 | 833,33 | 3.791,66 | 295.000,02 |

A última prestação cai para aproximadamente R$ 841,67 — quase quatro vezes menor que a primeira.

> 📈 **No Dia a Dia:**  
> Bancos costumam destacar a parcela inicial nas propagandas, e o SAC perde popularidade exatamente porque sua primeira prestação parece "alta" — mesmo cobrando menos juros no total.

---

## 4. Comparando Sistemas

A escolha entre Price, SAC e SAM depende da combinação entre orçamento mensal disponível e tolerância ao custo total no longo prazo.

### 4.1 Price, SAC e SAM lado a lado

O **SAM** (Sistema de Amortização Misto) é a média entre as prestações Price e SAC:

$$ PMT_k^{\mathrm{SAM}} = \frac{PMT_k^{\mathrm{Price}} + PMT_k^{\mathrm{SAC}}}{2} $$

Para o financiamento da família — R$ 300.000 em 360 meses a 1% ao mês — o quadro comparativo final é:

| Sistema | 1ª parcela | Última parcela | Total pago | Total de juros |
|:---|---:|---:|---:|---:|
| **Price** | 3.085,80 | 3.085,80 | 1.110.888 | 810.888 |
| **SAC** | 3.833,33 | 841,67 | 841.500 | 541.500 |
| **SAM** | 3.459,57 | 1.963,73 | 976.194 | 676.194 |

A diferença entre Price e SAC em juros totais ultrapassa R$ 269.000 — quase o valor original do imóvel financiado.

### 4.2 Decidir pelo orçamento e pelo custo

Antes de assinar um contrato de financiamento, faça a comparação:

- a primeira parcela cabe na faixa de até 30% da renda mensal?
- a parcela mais alta (SAC, 1º mês) também cabe na mesma faixa?
- qual é o custo total nominal de cada sistema ao longo do contrato?
- qual é o total de juros pagos em cada alternativa?

Quem só consegue assumir parcela menor → **Price** é viável, com custo total maior. Quem suporta a parcela maior no início → **SAC** reduz juros totais e quita o saldo mais rápido. Quem busca equilíbrio → **SAM** fica entre os dois extremos.

Não há sistema "melhor" universal — há sistema **adequado** ao orçamento e ao custo aceitável.

> ⏸️ **Pare e Pense:**  
> Na sua família, alguma decisão grande já foi tomada considerando apenas "a parcela que cabe no mês"?

---

## NA VIDA REAL

Em 2026, a maioria dos contratos de financiamento imobiliário no Brasil é assinada pela Tabela Price, exatamente porque a parcela inicial menor cabe melhor no orçamento mensal da família. A diferença entre Price e SAC em um contrato típico de 30 anos pode chegar a 33% a mais em juros totais — diferença que costuma passar despercebida na hora da assinatura.

---

## E A BÍBLIA NISSO?

> "Aquele que anda em integridade anda seguro, mas o que perverte os seus caminhos será conhecido." (Provérbios 10:9)

Integridade financeira é olhar a tabela completa antes de decidir — não a parcela isolada. O sistema que parece mais leve no primeiro mês pode revelar-se o mais pesado ao longo de 360, e essa diferença só aparece quando os 30 anos são lidos por inteiro.

- **Olhe a tabela inteira, não só a primeira linha.** Comparar Price, SAC e SAM exige somar todas as prestações e calcular o total de juros — escolher pelo conforto inicial sem ver o caminho completo é começar uma decisão sem caminho seguro (Provérbios 10:9).

> 💬 **Para Conversar:**  
> Que decisão de longo prazo da sua família foi tomada olhando só a parcela mensal — e o que mudaria se o total tivesse sido calculado primeiro?

---

## Simplificando

Price tem prestação constante e parcela inicial menor, mas cobra mais juros no longo prazo; SAC tem amortização constante, parcela decrescente e menos juros totais, embora a primeira prestação seja mais alta. O SAM fica entre os dois — e a escolha justa depende do orçamento mensal e do custo total aceitável.

---

## Para não esquecer

- **Composição da prestação:** $$PMT = J + A$$, onde os juros sempre incidem sobre o saldo devedor anterior;
- **Price × SAC:** Price tem parcela menor e mais juros totais; SAC tem parcela inicial maior e menos juros totais;
- **Decisão íntegra:** comparar a tabela completa (total pago e total de juros), nunca só a primeira parcela.
