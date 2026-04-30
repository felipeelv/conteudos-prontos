# Capítulo 3 — Cálculo de Probabilidade

## Uma chance em cem é a mesma coisa que 1%?
Na rifa da escola, há 100 números, e um aluno comprou apenas 1. Outro comprou 5, e um terceiro comprou 10. Todos querem ganhar, mas a comparação precisa ser feita com a mesma medida. Fração, decimal e porcentagem são três modos de dizer a mesma chance.

> 💭 **Pense um pouco:**  
> Por que 0,2, 20% e 1 em 5 parecem diferentes se dizem a mesma chance?

## 1. Da Lista Para a Fração
A probabilidade clássica nasce da comparação entre a parte favorável e o total possível.

### 1.1 Retomando espaço amostral e evento
Antes de calcular, precisamos saber qual é o espaço amostral e qual é o evento. O espaço amostral é o todo; o evento é a parte que interessa.

Em um dado comum:

$$ \Omega = \{1, 2, 3, 4, 5, 6\} $$

O total de casos possíveis é:

$$ n(\Omega) = 6 $$

Se o evento for "sair número maior que 4", então:

$$ E = \{5, 6\} $$

O número de casos favoráveis é:

$$ n(E) = 2 $$

### 1.2 Casos favoráveis sobre casos possíveis
Probabilidade é a medida da chance de um evento acontecer. No cálculo clássico, usamos a razão entre casos favoráveis e casos possíveis.

A leitura é direta:

$$ P = \frac{\mathrm{favoraveis}}{\mathrm{possiveis}} $$

Para o dado do exemplo:

$$ P = \frac{2}{6} $$

$$ P = \frac{1}{3} $$

A chance de sair número maior que 4 é de 1 em 3.

> 📐 **Fazendo as Contas:**  
> Em uma moeda, sair cara tem $$ 1 $$ caso favorável em $$ 2 $$ possíveis, então $$ P = \frac{1}{2} $$.

## 2. A Fórmula Clássica
A fórmula da probabilidade organiza a mesma comparação: favoráveis divididos por possíveis.

### 2.1 O que significa cada parte da fórmula
A fórmula clássica é:

$$ P(E) = \frac{n(E)}{n(\Omega)} $$

Nessa fórmula, $$ P(E) $$ é a probabilidade do evento, $$ n(E) $$ é o número de casos favoráveis e $$ n(\Omega) $$ é o número total de casos possíveis.

Veja em uma urna com 3 bolas azuis e 2 bolas verdes. O evento é sortear uma bola verde.

O total de bolas é:

$$ n(\Omega) = 5 $$

Os casos favoráveis são:

$$ n(E) = 2 $$

Aplicando a fórmula:

$$ P(E) = \frac{2}{5} $$

A chance de sortear uma bola verde é de 2 em 5.

### 2.2 Quando a fórmula pode ser usada
A fórmula clássica deve ser usada quando o espaço amostral é finito e os resultados são equiprováveis. Equiprovável significa que cada resultado possível tem a mesma chance de acontecer.

Uma moeda comum é um bom exemplo: cara e coroa têm a mesma chance. Já uma brincadeira em que algumas pessoas recebem mais bilhetes que outras precisa de cuidado, porque os participantes não têm necessariamente a mesma chance.

Pierre-Simon Laplace, matemático francês, ficou ligado à definição clássica de probabilidade no início do século XIX. A ideia central é simples: contar corretamente a parte favorável e o todo possível.

> ⏸️ **Pare e Pense:**  
> Se um resultado tem mais chance que outro, ainda faz sentido tratar todos como iguais?

## 3. Probabilidade Entre 0 e 1
Toda probabilidade clássica fica entre 0 e 1.

### 3.1 Impossível, certo e provável
Quando um evento não pode acontecer, sua probabilidade é 0. Quando o evento acontece com certeza, sua probabilidade é 1.

Essa ideia aparece assim:

$$ 0 \leq P \leq 1 $$

Em um dado comum, sair 8 é impossível:

$$ P = 0 $$

No mesmo dado, sair um número de 1 a 6 é certo:

$$ P = 1 $$

A maioria dos eventos fica entre 0 e 1. Sair número par, por exemplo, não é impossível nem certo.

### 3.2 Conferindo erros de conta
Uma probabilidade maior que 1 indica erro, porque a parte não pode ser maior que o todo. O mesmo vale para porcentagem maior que 100%.

Veja o erro:

$$ P = \frac{8}{6} $$

Essa escrita diria que existem 8 casos favoráveis em apenas 6 possíveis. A contagem precisa ser revista.

Para conferir, faça sempre três perguntas:

- o denominador veio do espaço amostral completo?
- o numerador veio apenas do evento?
- os resultados são equiprováveis?

> 💡 **Você sabia?**  
> Se a probabilidade passou de 1, a conta está avisando que a parte ficou maior que o todo.

## 4. Fração, Decimal e Porcentagem
Uma mesma probabilidade pode ser escrita como fração, decimal ou porcentagem.

### 4.1 Três formas de dizer a mesma chance
Porcentagem significa "em cada 100". Por isso, 1% é o mesmo que 1 em cada 100.

Algumas conversões aparecem com frequência:

$$ \frac{1}{2} = 0{,}5 $$

$$ 0{,}5 = 50\% $$

$$ \frac{1}{4} = 0{,}25 $$

$$ 0{,}25 = 25\% $$

$$ \frac{1}{6} \approx 0{,}167 $$

$$ 0{,}167 \approx 16{,}7\% $$

As formas mudam, mas a chance representada continua a mesma.

### 4.2 Comparando chances em situações reais
Em uma rifa com 100 números, comprar 1 número dá:

$$ P(E) = \frac{1}{100} $$

$$ \frac{1}{100} = 0{,}01 $$

$$ 0{,}01 = 1\% $$

Comprar 5 números dá:

$$ P(E) = \frac{5}{100} $$

$$ \frac{5}{100} = 0{,}05 $$

$$ 0{,}05 = 5\% $$

Comprar 10 números dá:

$$ P(E) = \frac{10}{100} $$

$$ \frac{10}{100} = 0{,}10 $$

$$ 0{,}10 = 10\% $$

O quadro resume as três escritas; os demais seguem o mesmo padrão.

| Números comprados | Fração | Decimal | Percentual |
|---:|---:|---:|---:|
| 1 | $$ \frac{1}{100} $$ | 0,01 | 1% |
| 5 | $$ \frac{5}{100} $$ | 0,05 | 5% |
| 10 | $$ \frac{10}{100} $$ | 0,10 | 10% |

> 📈 **No Dia a Dia:**  
> Conferir a chance antes de comprar mais números ajuda a decidir sem impulso.

---

## NA VIDA REAL
Probabilidade aparece em rifas, sorteios, jogos com dados e decisões em que há incerteza. Ela não garante o resultado, mas ajuda a comparar chances com uma contagem honesta.

---

## E A BÍBLIA NISSO?
> "Os planos do diligente tendem à abundância, mas a pressa excessiva, à pobreza." (Provérbios 21:5)

Calcular probabilidade exige diligência: conferir o todo, marcar a parte e só depois concluir. A pressa troca contagem por palpite e pode fazer uma chance pequena parecer grande.

- **Confira antes de decidir.** A sabedoria aparece quando a escolha passa por cuidado, paciência e verdade nos números (Lucas 14:28).

> 💬 **Para Conversar:** Que decisão melhora quando você confere os números antes de agir?

---

## Simplificando
Probabilidade clássica é a razão entre casos favoráveis e casos possíveis em um espaço amostral finito e equiprovável. Fração, decimal e porcentagem são formas diferentes de escrever a mesma chance.

---

## Para não esquecer
- **Probabilidade:** medida da chance de um evento acontecer;
- **Casos favoráveis:** resultados que fazem o evento acontecer;
- **Percentual:** escrita de uma razão em cada 100.
