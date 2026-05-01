# Capítulo 3 — Cálculo de Probabilidade

## Uma chance em cem é a mesma coisa que 1%?

Quinta-feira, recreio terminando. A turma volta para a sala e a professora explica a rifa do festival: 100 números à venda, R$ 2 cada. Você abre a mesada para decidir entre comprar 1, 5 ou 10 números. Antes de escolher, vem a dúvida: 1 número em 100 é a mesma chance que 1%?

> 💭 **Pense um pouco:**  
> Por que 0,2, 20% e 1 em 5 parecem diferentes se dizem a mesma chance?

---

## 1. Da Lista Para a Fração

A probabilidade é uma fração que compara duas contagens: o evento e o todo.

### 1.1 Retomando espaço amostral e evento

Antes de calcular qualquer chance, dois conjuntos precisam estar prontos:

- **espaço amostral** ($$\Omega$$): todos os resultados possíveis;
- **evento** (E): os resultados que respondem à pergunta.

Em uma moeda, o espaço amostral é {cara, coroa} e o evento "sair cara" é {cara}. Em um dado, o espaço amostral é {1, 2, 3, 4, 5, 6} e o evento "tirar par" é {2, 4, 6}.

### 1.2 Casos favoráveis sobre casos possíveis

A **probabilidade** mede a chance comparando duas contagens:

- **casos favoráveis**: $$n(E)$$, número de resultados que pertencem ao evento;
- **casos possíveis**: $$n(\Omega)$$, número total de resultados do espaço amostral.

A probabilidade é a fração de um pelo outro.

> 📐 **Fazendo as Contas:**  
> Dado, evento "par": 3 casos favoráveis em 6 possíveis, então $$P = \frac{3}{6} = \frac{1}{2}$$.

---

## 2. A Fórmula Clássica

A fórmula da probabilidade clássica organiza as duas contagens em uma única expressão.

### 2.1 O que significa cada parte da fórmula

A probabilidade clássica de um evento E é:

$$ P(E) = \frac{n(E)}{n(\Omega)} $$

Onde $$P(E)$$ é a probabilidade do evento; $$n(E)$$ é o número de casos favoráveis; e $$n(\Omega)$$ é o número total de casos possíveis.

Em linguagem natural: probabilidade é o número de favoráveis dividido pelo número de possíveis.

> Veja só, na rifa do festival. Comprando 1 bilhete em 100:

$$ P = \frac{1}{100} $$

A chance é 1 em 100. Comprando 5 bilhetes:

$$ P = \frac{5}{100} $$

$$ P = \frac{1}{20} $$

5 chances em 100, ou 1 em cada 20 — a chance ficou 5 vezes maior.

> 💡 **Você sabia?**  
> Em 1812, o francês Pierre-Simon Laplace organizou esta fórmula em sua *Théorie Analytique des Probabilités* — ela é usada até hoje na escola.

### 2.2 Quando a fórmula pode ser usada

A fórmula clássica só funciona em duas condições:

- o espaço amostral é **finito** (a quantidade de resultados é contável);
- todos os resultados são **equiprováveis** (cada um tem a mesma chance de sair).

Se algum resultado for mais provável que outro, a fórmula clássica não se aplica diretamente — esse caso é estudado mais adiante.

---

## 3. Probabilidade Entre 0 e 1

Toda probabilidade é um número entre 0 e 1 — nunca menor, nunca maior.

### 3.1 Impossível, certo e provável

A probabilidade vai de 0 a 1, e cada extremo tem um nome:

- **P = 0** — evento **impossível**: não há nenhum caso favorável (ex.: tirar 7 em um dado comum);
- **P = 1** — evento **certo**: todos os casos do espaço amostral são favoráveis (ex.: tirar um número entre 1 e 6 em um dado comum);
- valores **entre 0 e 1** — eventos prováveis, com chance variando do quase nada ao quase tudo.

A escala completa fica assim:

$$ 0 \leq P \leq 1 $$

> 📊 **Nos Números:**  
> No ENEM, responder uma questão no chute entre 5 alternativas dá 1 em 5 — ou seja, 20% — de chance de acertar.

### 3.2 Conferindo erros de conta

Antes de aceitar um resultado de probabilidade, faça a verificação:

- a probabilidade saiu maior que 1 ou maior que 100%?
- o numerador ficou maior que o denominador?
- esqueci algum resultado no espaço amostral?

Qualquer "sim" indica erro — refaça a contagem antes de continuar.

---

## 4. Fração, Decimal e Porcentagem

A mesma chance pode aparecer em três escritas: fração, decimal e percentual.

### 4.1 Três formas de dizer a mesma chance

Para passar de fração para decimal, divide-se o numerador pelo denominador. Para passar de decimal para percentual, multiplica-se por 100.

| Fração | Decimal | Percentual | Em palavras |
|:---:|:---:|:---:|:---|
| $$\frac{1}{2}$$ | 0,5 | 50% | metade |
| $$\frac{1}{4}$$ | 0,25 | 25% | um quarto |
| $$\frac{1}{5}$$ | 0,2 | 20% | um em cinco |
| $$\frac{1}{10}$$ | 0,1 | 10% | um em dez |
| $$\frac{1}{100}$$ | 0,01 | 1% | um em cem |

Algumas frações dão decimal aproximado:

$$ \frac{1}{6} \approx 0{,}167 \approx 16{,}7\% $$

O símbolo $$\approx$$ significa "aproximadamente" e indica que a divisão não fecha em número exato.

### 4.2 Comparando chances em situações reais

> Volte à rifa do festival. Comprando 1, 5 ou 10 bilhetes em 100:

$$ P_1 = \frac{1}{100} = 1\% $$

$$ P_5 = \frac{5}{100} = 5\% $$

$$ P_{10} = \frac{10}{100} = 10\% $$

Comprar 10 bilhetes dá 10 vezes mais chance que comprar 1 — mas continua sendo 90% de chance de não ganhar.

> 📈 **No Dia a Dia:**  
> Quando a previsão diz "chance de chuva 70%", significa que, em situações parecidas, choveu em 7 de cada 10 dias.

---

## NA VIDA REAL

Probabilidade aparece em rifa, sorteio, previsão do tempo, jogos, exames médicos e estatísticas esportivas. Em todos os casos, a chance só faz sentido depois que casos favoráveis e casos possíveis foram contados com honestidade.

---

## E A BÍBLIA NISSO?

> "Os planos do diligente certamente conduzem à abundância, mas a pressa, com toda a certeza, leva à pobreza." (Provérbios 21:5)

Integridade no cálculo é diligência: conferir o espaço amostral, recontar os casos favoráveis e converter sem trapacear. Quem corre a fórmula sem checar transforma chance em palpite — e palpite em ilusão.

- **Confira antes de concluir.** Probabilidade é a razão de dois números honestos: basta um deles errado para a chance que sai deixar de corresponder à realidade (Provérbios 21:5).

> 💬 **Para Conversar:**  
> Você já decidiu algo confiando em uma "chance" sem conferir os números — e se arrependeu?

---

## Simplificando

Probabilidade clássica é casos favoráveis divididos por casos possíveis, expressa em fração, decimal ou percentual. O resultado fica sempre entre 0 e 1, nunca passando desse intervalo.

---

## Para não esquecer

- **Fórmula:** $$P(E) = \frac{n(E)}{n(\Omega)}$$, casos favoráveis sobre casos possíveis;
- **Intervalo:** toda probabilidade está entre 0 (impossível) e 1 (certo);
- **Equivalência:** fração, decimal e percentual são três escritas da mesma chance.
