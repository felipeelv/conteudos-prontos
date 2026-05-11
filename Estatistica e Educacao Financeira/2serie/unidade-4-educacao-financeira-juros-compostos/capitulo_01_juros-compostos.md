# Capítulo 1 — Juros Compostos

## Por que o tempo muda tanto o resultado?

Sua tia vai aplicar R$ 1.000 a 1% a.m. No primeiro ano, simples e compostos quase empatam: R$ 1.120 contra R$ 1.127. Mas o plano dela é deixar 30 anos. Por que o tempo muda tanto o resultado?

> 💭 **Pense um pouco:**  
> Quando uma diferença pequena deixa de ser pequena?

---

## 1. Capitalização Composta

Juros compostos ganham juros sobre juros — cada período aplica a taxa sobre o saldo acumulado.

### 1.1 Juros sobre juros

Em simples, a taxa incide sempre sobre o capital inicial. Em compostos, os juros se incorporam ao capital antes do próximo cálculo.

> Tia, R$ 1.000 a 1% a.m.:
> - Mês 1: $$S_1 = 1.000 \cdot 1{,}01 = 1.010$$;
> - Mês 2: $$S_2 = 1.010 \cdot 1{,}01 = 1.020{,}10$$ (juros sobre 1.010, não sobre 1.000).

### 1.2 Do primeiro ao n-ésimo mês

Aplicação repetida de $$(1+i)$$ generaliza para:

$$ M = C \cdot (1+i)^n $$

Onde $$M$$ é o montante, $$C$$ o capital, $$i$$ a taxa por período e $$n$$ o número de períodos.

> 💡 **Você sabia?**  
> Jakob Bernoulli, no século XVII, ao estudar capitalização cada vez mais frequente, descobriu o limite hoje conhecido como número $$e \approx 2{,}718$$.

---

## 2. A Fórmula do Montante

A fórmula $$M = C(1+i)^n$$ permite calcular qualquer elemento quando os outros três são conhecidos.

### 2.1 Calcular o montante

> 12 meses a 1% a.m.: $$M = 1.000 \cdot (1{,}01)^{12} \approx 1.126{,}83$$ — R$ 7 a mais que simples.

> 360 meses (30 anos): $$M = 1.000 \cdot (1{,}01)^{360} \approx 35.949{,}70$$ — contra R$ 4.600 em simples.

### 2.2 Valor presente e juros acumulados

- **Valor presente**: quanto vale hoje uma quantia $$M$$ futura:

$$ C = \frac{M}{(1+i)^n} $$

- **Juros acumulados**:

$$ J = M - C = C \cdot [(1+i)^n - 1] $$

> Tia em 30 anos: $$J = 34.949{,}70$$ — quase 35 vezes o capital inicial.

---

## 3. Descobrindo Taxa e Tempo

Quando taxa ou tempo é a incógnita, a álgebra exige raízes ou logaritmos.

### 3.1 Incógnita: taxa

$$ i = \left(\frac{M}{C}\right)^{1/n} - 1 $$

> Dobrar R$ 1.000 em 120 meses: $$i = 2^{1/120} - 1 \approx 0{,}00579$$ → ~0,58% a.m. (~7,18% a.a.).

### 3.2 Incógnita: tempo

$$ n = \frac{\log(M/C)}{\log(1+i)} $$

> A 1% a.m., R$ 1.000 vira R$ 5.000 em: $$n = \log 5 / \log 1{,}01 \approx 161{,}8$$ meses (~13 anos e meio).

---

## 4. Crescimento Exponencial

Juros compostos não crescem em linha reta — crescem em curva que acelera.

### 4.1 Função exponencial

$$M(n) = C(1+i)^n$$ é função exponencial com base $$(1+i) > 1$$:

- crescimento sempre positivo enquanto $$i > 0$$;
- velocidade aumenta com o tempo;
- pequenas diferenças em $$i$$ produzem grandes diferenças em $$M$$ no longo prazo.

### 4.2 Reta × curva: simples × compostos

R$ 1.000 a 1% a.m.:

| Tempo | Simples | Compostos | Diferença |
|:---:|---:|---:|---:|
| 12 meses | 1.120 | 1.127 | 7 |
| 60 meses | 1.600 | 1.817 | 217 |
| 120 meses | 2.200 | 3.300 | 1.100 |
| 240 meses | 3.400 | 10.893 | 7.493 |
| 360 meses | 4.600 | 35.950 | 31.350 |

Em 30 anos, compostos rendem ~7,8 vezes mais.

**Taxa equivalente** entre períodos:

$$ (1 + i_a) = (1 + i_m)^{12} $$

**Taxa proporcional** (dividir anual por 12) NÃO equivale à taxa equivalente.

> 📊 **Nos Números:**  
> Selic 14,75% a.a. em 2026 corresponde a taxa mensal equivalente ~1,15% a.m. — não 1,23% (resultado errado da divisão direta).

---

## NA VIDA REAL

A diferença simples × compostos parece insignificante no primeiro ano: R$ 7. Em 30 anos, vira R$ 31.350 — separa quem investe cedo de quem começa tarde.

---

## E A BÍBLIA NISSO?

> "Aquele que anda em integridade anda seguro." (Provérbios 10:9)

Integridade matemática é fidelidade aos pequenos passos; juros compostos não aceitam atalhos — pular período ou confundir taxa proporcional com equivalente altera o resultado de forma exponencial.

- **Conte cada período com fidelidade.** Em juros compostos, atalho da matemática vira distorção real do dinheiro — taxa equivalente nunca é taxa proporcional dividida (Provérbios 10:9).

> 💬 **Para Conversar:**  
> Em que situação da sua vida pequenos atalhos pareciam economia, mas no longo prazo cobraram caro?

---

## Simplificando

Juros compostos multiplicam o saldo por $$(1+i)$$ a cada período — crescem em curva exponencial e transformam o tempo na variável mais decisiva.

---

## Para não esquecer

- **Fórmula central:** $$M = C(1+i)^n$$;
- **Tempo é a alavanca:** simples × compostos quase empatam em 1 ano e divergem em 30;
- **Equivalente ≠ proporcional:** dividir taxa anual por 12 é erro grave em compostos.
