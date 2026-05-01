# Capítulo 2 — Espaço Amostral e Eventos

## Antes de calcular a chance, você sabe listar tudo o que pode acontecer?

Domingo à tarde, jogo de tabuleiro com seu primo. Você precisa de soma 7 nos dois dados para avançar e grita "vai dar 7!" antes de jogar. Os dados rolam e param em 4 e 3 — vitória! Mas no caminho de volta para a peça, sobra a pergunta: quantos resultados diferentes esses dois dados podem dar antes de qualquer cálculo de chance?

> 💭 **Pense um pouco:**  
> Você costuma pensar em todas as possibilidades, ou só nas que quer que aconteçam?

---

## 1. Antes da Chance, a Lista

Para entender chance, primeiro é preciso saber tudo o que pode acontecer.

### 1.1 Experimentos aleatórios

Um **experimento aleatório** é uma situação em que você conhece os resultados possíveis, mas não sabe qual deles vai acontecer.

Jogar uma moeda, lançar um dado, tirar uma carta de um baralho embaralhado — todos são experimentos aleatórios.

### 1.2 Espaço amostral

O **espaço amostral** é a lista completa de todos os resultados possíveis de um experimento aleatório.

Para uma moeda, o espaço amostral é {cara, coroa}. Para um dado, é {1, 2, 3, 4, 5, 6}.

> 💡 **Você sabia?**  
> Em 1654, Blaise Pascal e Pierre de Fermat trocaram cartas resolvendo o "problema dos pontos" — é considerado o início da matemática da probabilidade.

---

## 2. Como Representar Possibilidades

Existem três formas comuns de representar o espaço amostral: lista entre chaves, tabela e árvore.

### 2.1 Lista entre chaves

Em matemática, o espaço amostral pode ser nomeado pela letra grega ômega.

$$ \Omega = \{1, 2, 3, 4, 5, 6\} $$

$$ n(\Omega) = 6 $$

Aqui $$\Omega$$ é o nome do espaço amostral e $$n(\Omega)$$ é a quantidade de resultados possíveis. A notação é opcional, mas ajuda a organizar a contagem.

### 2.2 Tabela e árvore

Quando o experimento tem mais de uma etapa, lista simples não basta — usa-se tabela ou árvore.

**Duas moedas em sequência.** Cada moeda pode dar cara (C) ou coroa (K). Os resultados possíveis aparecem combinando as duas etapas:

- (C, C) — cara nas duas;
- (C, K) — cara primeiro, coroa depois;
- (K, C) — coroa primeiro, cara depois;
- (K, K) — coroa nas duas.

Total de resultados: $$n(\Omega) = 4$$.

**Dois dados ao mesmo tempo.** A tabela 6 × 6 organiza todos os pares (1º dado, 2º dado).

| ↓ 1º \ 2º → | 1 | 2 | 3 | 4 | 5 | 6 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| **1** | (1,1) | (1,2) | (1,3) | (1,4) | (1,5) | (1,6) |
| **2** | (2,1) | (2,2) | (2,3) | (2,4) | (2,5) | (2,6) |
| **3** | (3,1) | (3,2) | (3,3) | (3,4) | (3,5) | (3,6) |
| **4** | (4,1) | (4,2) | (4,3) | (4,4) | (4,5) | (4,6) |
| **5** | (5,1) | (5,2) | (5,3) | (5,4) | (5,5) | (5,6) |
| **6** | (6,1) | (6,2) | (6,3) | (6,4) | (6,5) | (6,6) |

São 6 linhas com 6 pares cada: $$n(\Omega) = 36$$ resultados possíveis.

> 📈 **No Dia a Dia:**  
> Quando você lê "rifa: 100 números", alguém montou o espaço amostral do sorteio para você.

---

## 3. Evento: a Parte Que Interessa

Dentro do espaço amostral, escolhemos os resultados que respondem à pergunta — esse recorte é o evento.

### 3.1 Evento dentro do espaço amostral

Um **evento** é uma parte do espaço amostral — o conjunto de resultados que respondem à pergunta feita.

Lançando um dado, se a pergunta é "saiu número par?", o evento é {2, 4, 6}. Os outros resultados (1, 3, 5) continuam no espaço amostral, mas não pertencem ao evento.

### 3.2 Casos favoráveis

Os **casos favoráveis** são os resultados que pertencem ao evento — cada resultado que faz o evento acontecer.

No mesmo dado, com o evento "número par":

$$ \Omega = \{1, 2, 3, 4, 5, 6\} $$

$$ E = \{2, 4, 6\} $$

$$ n(E) = 3 $$

Três casos favoráveis em seis possíveis. A divisão de $$n(E)$$ por $$n(\Omega)$$ dá a probabilidade — assunto do próximo capítulo.

> ⏸️ **Pare e Pense:**  
> Se você muda a pergunta sobre o mesmo dado, o evento muda — mas o espaço amostral continua o mesmo. Faz sentido?

---

## 4. Conferir Para Não Esquecer

Listar o espaço amostral inteiro é o passo que define a honestidade de qualquer chance calculada depois.

### 4.1 Dois dados e pares possíveis

> Volte ao jogo do início. Antes de pensar na chance de soma 7, conte:

1. quantos pares existem no total — a tabela 6 × 6 mostra todos: $$n(\Omega) = 36$$;
2. quantos pares somam 7 — listando: $$E = \{(1,6), (2,5), (3,4), (4,3), (5,2), (6,1)\}$$, ou seja, $$n(E) = 6$$.

A pergunta "qual a chance de soma 7?" agora tem os dois números prontos: 6 casos favoráveis em 36 possíveis.

### 4.2 O erro de contar só o que aparece primeiro

O erro mais comum em probabilidade é olhar para o resultado desejado e esquecer dos outros.

Antes de calcular qualquer evento, faça a verificação:

- listei todos os resultados possíveis?
- não repeti nem esqueci nenhum?
- separei os casos favoráveis dos demais sem confundir?

Quem pula a contagem completa responde com lista incompleta — e a chance que sai não corresponde à realidade.

> 📊 **Nos Números:**  
> Um baralho comum tem 52 cartas; o evento "tirar um rei" tem 4 casos favoráveis em 52 possíveis.

---

## NA VIDA REAL

Antes de qualquer rifa, bingo ou sorteio, alguém precisou listar quantos números existem no total. Sem essa lista — o espaço amostral — qualquer chance anunciada perde a referência.

---

## E A BÍBLIA NISSO?

> "Pois qual de vós, querendo edificar uma torre, não se assenta primeiro a calcular as despesas, para ver se tem com que a acabar?" (Lucas 14:28)

Integridade começa no que se decide antes de agir. Quem só olha para o resultado que quer — e ignora as outras possibilidades — decide com a lista incompleta.

- **Conte tudo antes de torcer.** Listar o espaço amostral inteiro é o jeito honesto de pensar uma chance: só olhar para o que favorece é começar a torre sem orçar (Lucas 14:28).

> 💬 **Para Conversar:**  
> Em uma decisão recente sua, você considerou todas as possibilidades — ou só pensou no resultado que queria?

---

## Simplificando

Espaço amostral é a lista completa dos resultados possíveis; evento é a parte da lista que responde à pergunta. Contar tudo antes vem sempre antes de calcular qualquer chance.

---

## Para não esquecer

- **Espaço amostral:** lista de todos os resultados possíveis de um experimento aleatório;
- **Evento:** parte do espaço amostral que responde à pergunta;
- **Casos favoráveis:** resultados que pertencem ao evento.
