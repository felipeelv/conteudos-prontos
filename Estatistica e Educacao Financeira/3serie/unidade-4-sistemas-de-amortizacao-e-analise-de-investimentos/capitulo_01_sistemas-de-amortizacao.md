# Capítulo 1 — Sistemas de Amortização

## Qual parcela cabe hoje e quanto ela custa amanhã?

Uma família vai à Caixa: imóvel de R$ 300.000, prazo de 360 meses, taxa em torno de 11% a.a. + TR. O atendente apresenta dois sistemas — Price (parcela inicial menor, estável) ou SAC (parcela maior no início, decrescente). A diferença na primeira prestação chega a R$ 800; a diferença em juros totais passa de R$ 250.000.

> 💭 **Pense um pouco:**  
> Você escolheria a menor parcela inicial mesmo pagando muito mais no total?

---

## 1. Como Uma Dívida Diminui

Toda parcela se divide em duas partes: juros do período e amortização que reduz o principal.

### 1.1 Prestação, juros e amortização

$$ PMT = J + A $$

- **$$J$$** (juros do período): calculado sobre o saldo devedor anterior → $$J_k = SD_{k-1} \cdot i$$;
- **$$A$$** (amortização): valor que efetivamente reduz a dívida.

### 1.2 Saldo devedor e custo total

Após cada pagamento, o saldo devedor atualiza-se:

$$ SD_k = SD_{k-1} - A_k $$

- **Custo total nominal** ($$T$$): soma de todas as prestações pagas;
- **Total de juros**: $$J_{total} = T - P$$.

> 💡 **Você sabia?**  
> No século XVII, o estadista holandês Johan de Witt foi pioneiro na avaliação atuarial de anuidades — base matemática que evoluiu até os sistemas de amortização modernos.

---

## 2. Sistema Price

No Sistema Francês (Price), a prestação é constante — só a composição interna entre juros e amortização varia.

### 2.1 Prestação constante

$$ PMT = \frac{P \cdot i \cdot (1+i)^n}{(1+i)^n - 1} $$

> Família — P = 300.000, i = 1% a.m., n = 360:

$$ PMT = \frac{300.000 \cdot 0{,}01 \cdot 35{,}95}{34{,}95} \approx 3.085{,}80 $$

Prestação fixa de ~R$ 3.085,80 por 360 meses.

### 2.2 Tabela Price: juros caem, amortização cresce

Prestação constante + juros sobre saldo decrescente → juros caem, amortização sobe mês a mês:

| Mês | Saldo inicial | Juros (1%) | Amortização | Prestação | Saldo final |
|:---:|---:|---:|---:|---:|---:|
| 1 | 300.000,00 | 3.000,00 | 85,80 | 3.085,80 | 299.914,20 |
| 2 | 299.914,20 | 2.999,14 | 86,66 | 3.085,80 | 299.827,54 |
| 3 | 299.827,54 | 2.998,28 | 87,52 | 3.085,80 | 299.740,02 |
| 6 | 299.562,34 | 2.995,62 | 90,18 | 3.085,80 | 299.472,16 |

Nos primeiros 6 meses (R$ 18.500 pagos), pouco mais de R$ 528 reduziram a dívida — o resto virou juros.

> 📊 **Nos Números:**  
> Em 2026, a taxa média de financiamento imobiliário SBPE pela Caixa fica em torno de 11% a.a. + TR — patamar diretamente influenciado pela Selic em ~15% a.a.

---

## 3. Sistema SAC

No SAC, a amortização é constante; a prestação cai mês a mês.

### 3.1 Amortização constante

$$ A = \frac{P}{n} $$

> Família — P = 300.000, n = 360: $$A \approx 833{,}33$$ todo mês.

### 3.2 Prestações decrescentes

$$ PMT_k = A + J_k \quad ; \quad J_k = SD_{k-1} \cdot i $$

| Mês | Saldo inicial | Juros (1%) | Amortização | Prestação | Saldo final |
|:---:|---:|---:|---:|---:|---:|
| 1 | 300.000,00 | 3.000,00 | 833,33 | 3.833,33 | 299.166,67 |
| 2 | 299.166,67 | 2.991,67 | 833,33 | 3.825,00 | 298.333,34 |
| 3 | 298.333,34 | 2.983,33 | 833,33 | 3.816,66 | 297.500,01 |
| 6 | 295.833,35 | 2.958,33 | 833,33 | 3.791,66 | 295.000,02 |

A última prestação cai para ~R$ 841,67 — quase quatro vezes menor que a primeira.

> 📈 **No Dia a Dia:**  
> Bancos costumam destacar a parcela inicial nas propagandas, e o SAC perde popularidade exatamente porque sua primeira prestação parece "alta" — mesmo cobrando menos juros no total.

---

## 4. Comparando Sistemas

A escolha depende da combinação entre orçamento mensal disponível e tolerância ao custo total.

### 4.1 Price, SAC e SAM lado a lado

O **SAM** (Sistema de Amortização Misto) é a média entre Price e SAC:

$$ PMT_k^{\mathrm{SAM}} = \frac{PMT_k^{\mathrm{Price}} + PMT_k^{\mathrm{SAC}}}{2} $$

Quadro completo — R$ 300.000 em 360 meses a 1% a.m.:

| Sistema | 1ª parcela | Última parcela | Total pago | Total de juros |
|:---|---:|---:|---:|---:|
| **Price** | 3.085,80 | 3.085,80 | 1.110.888 | 810.888 |
| **SAC** | 3.833,33 | 841,67 | 841.500 | 541.500 |
| **SAM** | 3.459,57 | 1.963,73 | 976.194 | 676.194 |

Diferença entre Price e SAC em juros totais: mais de R$ 269.000 — quase o valor original do imóvel.

### 4.2 Decidir pelo orçamento e pelo custo

Antes de assinar:

- a primeira parcela cabe na faixa de até 30% da renda mensal?
- a parcela mais alta (SAC, 1º mês) também cabe?
- qual é o custo total nominal de cada sistema?
- qual é o total de juros em cada alternativa?

Quem só consegue parcela menor → **Price** (viável, custo total maior). Quem suporta parcela maior no início → **SAC** (menos juros, quita o saldo mais rápido). Quem busca equilíbrio → **SAM**.

Não há sistema "melhor" universal — há sistema **adequado** ao orçamento e ao custo aceitável.

> ⏸️ **Pare e Pense:**  
> Na sua família, alguma decisão grande já foi tomada considerando apenas "a parcela que cabe no mês"?

---

## NA VIDA REAL

Em 2026, a maioria dos contratos imobiliários no Brasil é assinada pela Tabela Price — exatamente porque a parcela inicial menor cabe melhor no orçamento. A diferença entre Price e SAC em contrato típico de 30 anos pode chegar a 33% a mais em juros — diferença que costuma passar despercebida na assinatura.

---

## E A BÍBLIA NISSO?

> "Aquele que anda em integridade anda seguro, mas o que perverte os seus caminhos será conhecido." (Provérbios 10:9)

Integridade financeira é olhar a tabela completa antes de decidir — não a parcela isolada. O sistema que parece mais leve no primeiro mês pode revelar-se o mais pesado ao longo de 360, e essa diferença só aparece quando os 30 anos são lidos por inteiro.

- **Olhe a tabela inteira, não só a primeira linha.** Comparar Price, SAC e SAM exige somar todas as prestações e calcular o total de juros — escolher pelo conforto inicial sem ver o caminho completo é começar uma decisão sem caminho seguro (Provérbios 10:9).

> 💬 **Para Conversar:**  
> Que decisão de longo prazo da sua família foi tomada olhando só a parcela mensal — e o que mudaria se o total tivesse sido calculado primeiro?

---

## Simplificando

Price tem prestação constante e juros maiores no longo prazo; SAC tem amortização constante, parcela decrescente e menos juros totais; SAM fica entre os dois — a escolha justa depende do orçamento e do custo total aceitável.

---

## Para não esquecer

- **Composição da prestação:** $$PMT = J + A$$, juros sempre sobre o saldo devedor anterior;
- **Price × SAC:** Price menor parcela, mais juros totais; SAC maior parcela inicial, menos juros totais;
- **Decisão íntegra:** comparar a tabela completa (total pago e juros), nunca só a primeira parcela.
