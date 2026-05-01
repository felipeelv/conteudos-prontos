# Capítulo 1 — Juros Compostos

## Por que o tempo muda tanto o resultado?

Sua tia te conta que vai aplicar R$ 1.000 em um investimento de longo prazo e pergunta se faz diferença escolher juros simples ou juros compostos. À taxa de 1% ao mês, no primeiro ano a diferença parece pequena: R$ 1.120 contra R$ 1.127. Você responde "praticamente igual". Mas ela diz que o plano é deixar o dinheiro investido por 30 anos, até a aposentadoria. Antes de qualquer resposta, vem a pergunta que define décadas de planejamento: por que o tempo muda tanto o resultado?

> 💭 **Pense um pouco:**  
> Quando uma diferença pequena deixa de ser pequena?

---

## 1. Capitalização Composta

Juros compostos ganham juros sobre juros — cada período aplica a taxa sobre o saldo acumulado, não sobre o capital original.

### 1.1 Juros sobre juros

Em juros simples, a taxa incide sempre sobre o capital inicial. Em juros compostos, os juros de cada período se incorporam ao capital antes do próximo cálculo.

> Aplicando ao caso da tia — R$ 1.000 a 1% ao mês:

No primeiro mês, o saldo passa a ser:

$$ S_1 = 1.000 \cdot 1{,}01 = 1.010 $$

No segundo mês, os juros incidem sobre R$ 1.010, não sobre R$ 1.000:

$$ S_2 = 1.010 \cdot 1{,}01 = 1.020{,}10 $$

A diferença em relação a juros simples começa modesta — R$ 0,10 no segundo mês —, mas se acumula a cada período.

### 1.2 Do primeiro mês ao n-ésimo mês

Aplicando a multiplicação repetida por $$(1+i)$$:

$$ S_1 = C \cdot (1+i) $$

$$ S_2 = C \cdot (1+i)^2 $$

$$ S_3 = C \cdot (1+i)^3 $$

Generalizando para $$n$$ períodos:

$$ M = C \cdot (1+i)^n $$

Onde $$M$$ é o montante; $$C$$ é o capital inicial; $$i$$ é a taxa por período em decimal; e $$n$$ é o número de períodos.

> 💡 **Você sabia?**  
> Jakob Bernoulli, no século XVII, ao estudar juros compostos com capitalização cada vez mais frequente, descobriu um limite que hoje é conhecido como número $$e \approx 2{,}718$$.

---

## 2. A Fórmula do Montante

A fórmula $$M = C(1+i)^n$$ permite calcular qualquer dos quatro elementos quando os outros três são conhecidos.

### 2.1 Montante, capital, taxa e período

> Aplicando ao R$ 1.000 da tia em 12 meses a 1% ao mês:

$$ M = 1.000 \cdot (1{,}01)^{12} $$

$$ M = 1.000 \cdot 1{,}1268 $$

$$ M \approx 1.126{,}83 $$

Em 12 meses, R$ 1.000 viraram cerca de R$ 1.127 — diferença de apenas R$ 7 em relação a juros simples (que daria R$ 1.120).

Em 360 meses (30 anos):

$$ M = 1.000 \cdot (1{,}01)^{360} $$

$$ M \approx 1.000 \cdot 35{,}95 $$

$$ M \approx 35.949{,}70 $$

Em 30 anos, R$ 1.000 viram quase R$ 36.000 — contra os R$ 4.600 que renderiam em juros simples no mesmo período.

### 2.2 Valor presente e juros acumulados

Quando o montante é conhecido e o capital é a incógnita:

$$ C = \frac{M}{(1+i)^n} $$

Esse $$C$$ é o **valor presente** — quanto vale hoje uma quantia $$M$$ que se receberá no futuro.

Os **juros acumulados** ($$J$$) são a diferença entre montante e capital:

$$ J = M - C $$

Ou, equivalentemente:

$$ J = C \cdot [(1+i)^n - 1] $$

> No caso da tia em 30 anos: $$J = 35.949{,}70 - 1.000 = 34.949{,}70$$ — quase 35 vezes o capital inicial.

---

## 3. Descobrindo Taxa e Tempo

Quando a taxa ou o tempo é a incógnita, a álgebra exige raízes ou logaritmos.

### 3.1 Quando a incógnita é a taxa

Isolando $$i$$ na fórmula do montante:

$$ i = \left(\frac{M}{C}\right)^{1/n} - 1 $$

Veja só: você quer dobrar R$ 1.000 em 10 anos (120 meses). Qual taxa mensal é necessária?

$$ i = \left(\frac{2.000}{1.000}\right)^{1/120} - 1 $$

$$ i = 2^{1/120} - 1 $$

$$ i \approx 1{,}00579 - 1 $$

$$ i \approx 0{,}00579 $$

A taxa necessária é cerca de 0,58% ao mês — ou aproximadamente 7,18% ao ano em equivalência composta.

### 3.2 Quando a incógnita é o tempo

Isolando $$n$$ exige logaritmo:

$$ n = \frac{\log(M/C)}{\log(1+i)} $$

Veja só: a 1% ao mês, em quanto tempo R$ 1.000 viram R$ 5.000?

$$ n = \frac{\log(5)}{\log(1{,}01)} $$

$$ n \approx \frac{0{,}699}{0{,}00432} $$

$$ n \approx 161{,}8 $$

São cerca de 162 meses — aproximadamente 13 anos e meio.

> ⏸️ **Pare e Pense:**  
> Por que dividir uma taxa anual por 12 não dá a taxa mensal correta em juros compostos?

---

## 4. Crescimento Exponencial

Juros compostos não crescem em linha reta — crescem como curva que acelera com o tempo.

### 4.1 Juros compostos como função exponencial

A relação $$M(n) = C(1+i)^n$$ é uma função exponencial em $$n$$, com base $$(1+i) > 1$$.

Características do crescimento exponencial em finanças:

- crescimento sempre positivo enquanto $$i > 0$$;
- velocidade de crescimento aumenta com o tempo;
- pequenas diferenças em $$i$$ produzem grandes diferenças em $$M$$ no longo prazo.

### 4.2 Reta ou curva: simples versus compostos

Comparando R$ 1.000 a 1% ao mês nos dois regimes:

| Tempo | Simples | Compostos | Diferença |
|:---:|---:|---:|---:|
| 12 meses | 1.120 | 1.127 | 7 |
| 60 meses | 1.600 | 1.817 | 217 |
| 120 meses | 2.200 | 3.300 | 1.100 |
| 240 meses | 3.400 | 10.893 | 7.493 |
| 360 meses | 4.600 | 35.950 | 31.350 |

A diferença começa pequena e dispara: em 30 anos, juros compostos rendem cerca de **7,8 vezes mais** que juros simples — efeito direto do crescimento exponencial × linear.

A **taxa equivalente** entre períodos diferentes é calculada por:

$$ (1 + i_a) = (1 + i_m)^{12} $$

Em juros compostos, **taxa proporcional** (dividir taxa anual por 12) NÃO equivale à **taxa equivalente** — confundir as duas é fonte clássica de erro em comparações de investimento.

> 📊 **Nos Números:**  
> A Selic de 14,75% ao ano em 2026 corresponde a uma taxa mensal equivalente de aproximadamente 1,15% ao mês — não 1,23% (resultado errado da divisão direta 14,75 ÷ 12).

---

## NA VIDA REAL

A diferença entre juros simples e compostos parece insignificante no primeiro ano: R$ 7 sobre R$ 1.000. Em 30 anos, vira R$ 31.350 — efeito do crescimento exponencial que separa quem investe cedo de quem começa tarde.

---

## E A BÍBLIA NISSO?

> "Aquele que anda em integridade anda seguro." (Provérbios 10:9)

Integridade matemática é fidelidade aos pequenos passos. A fórmula dos juros compostos não aceita atalhos — pular um período, confundir taxa proporcional com equivalente ou esconder etapa altera o resultado de forma exponencial.

- **Conte cada período com fidelidade.** Em juros compostos, atalho da matemática vira distorção real do dinheiro — taxa equivalente nunca é taxa proporcional dividida (Provérbios 10:9).

> 💬 **Para Conversar:**  
> Em que situação da sua vida pequenos atalhos pareciam economia, mas no longo prazo cobraram caro?

---

## Simplificando

Juros compostos multiplicam o saldo por $$(1+i)$$ a cada período — crescem em curva exponencial, não em reta, e transformam o tempo na variável mais decisiva de qualquer investimento.

---

## Para não esquecer

- **Fórmula central:** $$M = C(1+i)^n$$ — multiplica o saldo por $$(1+i)$$ a cada período;
- **Tempo é a alavanca:** a diferença entre simples e compostos quase não aparece em 1 ano e vira gigante em 30;
- **Equivalente ≠ proporcional:** dividir taxa anual por 12 é erro grave em juros compostos.
