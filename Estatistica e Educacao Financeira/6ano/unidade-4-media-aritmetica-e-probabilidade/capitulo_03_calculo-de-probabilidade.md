# Capítulo 3 — Cálculo de Probabilidade

## Uma chance em cem é a mesma coisa que 1%?

Na rifa da escola, há 100 números, e cada número custa R$ 2. Um aluno compra 1 número, outro compra 5 e outro compra 10. Todos querem ganhar, mas a chance de cada um não é igual. A conta precisa traduzir essa diferença sem aumentar nem diminuir a verdade.

> 💭 **Pense um pouco:**  
> Por que 0,2, 20% e 1 em 5 parecem diferentes se dizem a mesma chance?

## 1. Da Lista Para a Fração

Probabilidade começa com a lista completa e termina com uma comparação.

### 1.1 Retomando espaço amostral e evento

No lançamento de um dado, o espaço amostral é:

$$ \Omega = \{1, 2, 3, 4, 5, 6\} $$

Se a pergunta é "sair número maior que 4", o evento é:

$$ E = \{5, 6\} $$

Agora contamos os dois grupos:

$$ n(\Omega) = 6 $$

$$ n(E) = 2 $$

### 1.2 Casos favoráveis sobre casos possíveis

Casos favoráveis são os resultados que fazem o evento acontecer. Casos possíveis são todos os resultados do espaço amostral.

A probabilidade compara esses dois números:

$$ P = \frac{\mathrm{favoraveis}}{\mathrm{possiveis}} $$

No dado, há 2 casos favoráveis em 6 possíveis:

$$ P = \frac{2}{6} $$

$$ P = \frac{1}{3} $$

Isso significa 1 chance em cada 3 partes iguais.

> 📈 **No Dia a Dia:**  
> Em uma rifa com 100 números, comprar 1 número significa ter 1 caso favorável entre 100 possíveis.

## 2. A Fórmula Clássica

A fórmula organiza a mesma ideia com símbolos curtos.

### 2.1 O que significa cada parte da fórmula

A probabilidade do evento E pode ser escrita assim:

$$ P(E) = \frac{n(E)}{n(\Omega)} $$

Nessa fórmula, $$ P(E) $$ é a probabilidade do evento E. O número $$ n(E) $$ conta os casos favoráveis, e $$ n(\Omega) $$ conta todos os casos possíveis.

Veja o caso de uma urna com 3 bolas azuis e 2 bolas verdes. Se queremos tirar uma bola azul, há 3 casos favoráveis em 5 possíveis.

$$ P(E) = \frac{3}{5} $$

A resposta deve voltar para a situação. A chance de tirar uma bola azul é 3 em 5.

### 2.2 Quando a fórmula pode ser usada

Essa fórmula vale quando o espaço amostral é finito e os resultados são equiprováveis.

Finito significa que dá para contar todos os resultados. Equiprovável significa que todos têm a mesma chance.

Veja dois exemplos:

| Situação | Pode usar a fórmula? | Motivo |
|---|---|---|
| Dado comum | Sim | seis faces com mesma chance |
| Rifa com números iguais | Sim | cada número tem a mesma chance |
| Corrida entre alunos | Não diretamente | os alunos podem ter habilidades diferentes |

> ⏸️ **Pare e Pense:**  
> Se os resultados não têm a mesma chance, por que a divisão simples pode enganar?

## 3. Probabilidade Entre 0 e 1

Toda probabilidade fica entre impossível e certo.

### 3.1 Impossível, certo e provável

Se um evento não pode acontecer, sua probabilidade é 0.

No dado comum, sair 8 é impossível:

$$ P = 0 $$

Se um evento sempre acontece, sua probabilidade é 1.

No dado comum, sair número menor que 7 é certo:

$$ P = 1 $$

Entre 0 e 1 ficam as chances possíveis:

$$ 0 \leq P \leq 1 $$

### 3.2 Conferindo erros de conta

Uma probabilidade maior que 1 indica erro. O mesmo vale para uma chance maior que 100%.

Veja a conferência:

| Resultado da conta | Faz sentido? | Por quê |
|---:|---|---|
| 0 | Sim | evento impossível |
| 0,5 | Sim | chance no meio |
| 1 | Sim | evento certo |
| 1,4 | Não | passou do certo |

Pierre-Simon Laplace ajudou a formular a definição clássica de probabilidade. Ela depende de contar corretamente os casos favoráveis e possíveis.

> 💡 **Você sabia?**  
> Laplace escreveu sobre probabilidade no século XIX e ajudou a organizar essa ideia em forma matemática.

## 4. Fração, Decimal e Porcentagem

A mesma chance pode ser escrita de três formas.

### 4.1 Três formas de dizer a mesma chance

Em uma moeda comum, sair cara tem 1 caso favorável em 2 possíveis.

$$ P(E) = \frac{1}{2} $$

$$ \frac{1}{2} = 0{,}5 $$

$$ 0{,}5 = 50\% $$

As três escritas dizem a mesma chance: 1 em 2, ou metade, ou 50%.

Veja outro exemplo:

$$ \frac{1}{4} = 0{,}25 $$

$$ 0{,}25 = 25\% $$

Isso significa 1 em cada 4, ou 25 em cada 100.

### 4.2 Comparando chances em situações reais

Na rifa com 100 números, a comparação fica direta:

| Números comprados | Fração | Decimal | Percentual |
|---:|---:|---:|---:|
| 1 | $$ \frac{1}{100} $$ | 0,01 | 1% |
| 5 | $$ \frac{5}{100} $$ | 0,05 | 5% |
| 10 | $$ \frac{10}{100} $$ | 0,10 | 10% |

Comprar mais números aumenta os casos favoráveis. O total de casos possíveis continua sendo 100.

> 📐 **Fazendo as Contas:**  
> Em um dado, sair 6 tem $$ P(E) = \frac{1}{6} $$ e $$ \frac{1}{6} \approx 16{,}7\% $$.

---

## NA VIDA REAL

Antes de comprar uma rifa, compare quantos números você terá com quantos números existem ao todo. A porcentagem só muda a escrita da chance, não muda a chance real.

---

## E A BÍBLIA NISSO?

> "Os planos do diligente tendem à abundância, mas a pressa excessiva, à pobreza." (Provérbios 21:5)

Probabilidade exige diligência: contar antes de concluir. Um numerador inflado ou um denominador esquecido muda a verdade da chance. A pressa pode transformar cálculo em palpite.

- **Confira os dois números antes de decidir.** Uma decisão íntegra olha os casos favoráveis e também todos os casos possíveis, sem maquiar a conta (Provérbios 10:9).

> 💬 **Para Conversar:** Quando uma porcentagem parece grande, que pergunta você pode fazer antes de acreditar nela?

---

## Simplificando

Probabilidade clássica é a comparação entre casos favoráveis e casos possíveis em situações finitas e equiprováveis. Fração, decimal e porcentagem podem dizer a mesma chance com escritas diferentes.

---

## Para não esquecer

- **Probabilidade:** medida da chance de um evento acontecer;
- **Casos favoráveis:** resultados que fazem o evento acontecer;
- **Percentual:** escrita da razão em cada 100.
