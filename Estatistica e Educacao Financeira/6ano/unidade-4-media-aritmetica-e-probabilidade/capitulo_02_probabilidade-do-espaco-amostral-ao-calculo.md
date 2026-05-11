# Capítulo 2 — Probabilidade: do espaço amostral ao cálculo

## Como saber a chance de algo acontecer antes de tentar?

Domingo à tarde, jogo de tabuleiro com seu primo: você grita "vai dar 7!" antes de jogar os dois dados. Quinta-feira, a professora explica a rifa do festival: 100 números a R$ 2 cada. Em ambos os casos, antes de calcular a chance, é preciso saber o que pode acontecer.

> 💭 **Pense um pouco:**  
> Você costuma pensar em todas as possibilidades, ou só nas que quer que aconteçam?

---

## 1. Antes da chance, a lista

Para calcular chance, primeiro é preciso saber tudo o que pode acontecer.

### 1.1 Experimento aleatório e espaço amostral

- **Experimento aleatório**: situação em que os resultados possíveis são conhecidos, mas não se sabe qual vai sair (moeda, dado, baralho);
- **Espaço amostral** ($$\Omega$$): lista completa dos resultados possíveis.

> Moeda: $$\Omega = \{\text{cara, coroa}\}$$. Dado: $$\Omega = \{1, 2, 3, 4, 5, 6\}$$.

> 💡 **Você sabia?**  
> Em 1654, Blaise Pascal e Pierre de Fermat trocaram cartas sobre o "problema dos pontos" — é considerado o início da matemática da probabilidade.

### 1.2 Representar: lista, tabela e árvore

- **Lista entre chaves** — para experimentos simples;
- **Tabela ou árvore** — quando há mais de uma etapa.

**Duas moedas em sequência:** (C,C), (C,K), (K,C), (K,K) → $$n(\Omega) = 4$$.

**Dois dados ao mesmo tempo** — tabela 6 × 6:

| ↓ 1º \ 2º → | 1 | 2 | 3 | 4 | 5 | 6 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| **1** | (1,1) | (1,2) | (1,3) | (1,4) | (1,5) | (1,6) |
| **2** | (2,1) | (2,2) | (2,3) | (2,4) | (2,5) | (2,6) |
| **3** | (3,1) | (3,2) | (3,3) | (3,4) | (3,5) | (3,6) |
| **4** | (4,1) | (4,2) | (4,3) | (4,4) | (4,5) | (4,6) |
| **5** | (5,1) | (5,2) | (5,3) | (5,4) | (5,5) | (5,6) |
| **6** | (6,1) | (6,2) | (6,3) | (6,4) | (6,5) | (6,6) |

São 6 linhas × 6 pares: $$n(\Omega) = 36$$.

---

## 2. Evento e casos favoráveis

Dentro do espaço amostral, escolhemos os resultados que respondem à pergunta.

### 2.1 Evento

Um **evento** (E) é uma parte do espaço amostral — o conjunto de resultados que respondem à pergunta.

> Dado, pergunta "saiu par?": $$E = \{2, 4, 6\}$$. Os outros resultados (1, 3, 5) continuam no espaço amostral, mas fora do evento.

### 2.2 Casos favoráveis

Os **casos favoráveis** são os resultados que pertencem ao evento.

$$ \Omega = \{1, 2, 3, 4, 5, 6\} \quad ; \quad E = \{2, 4, 6\} \quad ; \quad n(E) = 3 $$

Três casos favoráveis em seis possíveis. A divisão de $$n(E)$$ por $$n(\Omega)$$ dá a probabilidade.

> ⏸️ **Pare e Pense:**  
> Mudar a pergunta sobre o mesmo dado muda o evento — mas o espaço amostral continua o mesmo. Faz sentido?

---

## 3. A fórmula clássica

A probabilidade é uma fração que compara duas contagens.

### 3.1 P(E) = n(E) / n(Ω)

A probabilidade clássica de um evento E:

$$ P(E) = \frac{n(E)}{n(\Omega)} $$

Em linguagem natural: favoráveis dividido por possíveis.

> Rifa, comprando 1 bilhete em 100: $$P_1 = \frac{1}{100}$$. Comprando 5: $$P_5 = \frac{5}{100} = \frac{1}{20}$$ — 5 vezes mais chance.

> 💡 **Você sabia?**  
> Em 1812, Pierre-Simon Laplace organizou esta fórmula em sua *Théorie Analytique des Probabilités* — usada até hoje na escola.

### 3.2 Quando a fórmula vale

Só funciona em duas condições:

- **espaço amostral finito** — quantidade de resultados é contável;
- **equiprováveis** — cada resultado tem a mesma chance de sair.

Se algum resultado for mais provável que outro, a fórmula clássica não se aplica diretamente.

---

## 4. Fração, decimal e porcentagem

A mesma chance pode aparecer em três escritas.

### 4.1 Três formas de dizer a mesma chance

| Fração | Decimal | Percentual | Em palavras |
|:---:|:---:|:---:|:---|
| $$\frac{1}{2}$$ | 0,5 | 50% | metade |
| $$\frac{1}{4}$$ | 0,25 | 25% | um quarto |
| $$\frac{1}{5}$$ | 0,2 | 20% | um em cinco |
| $$\frac{1}{10}$$ | 0,1 | 10% | um em dez |
| $$\frac{1}{100}$$ | 0,01 | 1% | um em cem |

- **Fração → decimal**: divide numerador por denominador;
- **Decimal → percentual**: multiplica por 100;
- **Aproximação**: $$\frac{1}{6} \approx 0{,}167 \approx 16{,}7\%$$ — o $$\approx$$ indica que não fecha exato.

### 4.2 Probabilidade fica sempre entre 0 e 1

A escala vai de 0 a 1:

- **P = 0** — evento **impossível** (tirar 7 num dado comum);
- **P = 1** — evento **certo** (tirar 1 a 6 num dado);
- entre 0 e 1 — provável.

$$ 0 \leq P \leq 1 $$

Erro detectado se: $$P > 1$$, numerador maior que denominador, ou faltou resultado no espaço amostral.

> 📊 **Nos Números:**  
> Chutar uma questão do ENEM entre 5 alternativas dá 1 em 5 — ou seja, 20% — de chance de acertar.

---

## NA VIDA REAL

Rifa, sorteio, previsão do tempo, jogos, exames médicos e estatísticas esportivas — em todos os casos, a chance só faz sentido depois que casos favoráveis e possíveis foram contados com honestidade.

---

## E A BÍBLIA NISSO?

> "Pois qual de vós, querendo edificar uma torre, não se assenta primeiro a calcular as despesas?" (Lucas 14:28)

Integridade começa no que se decide antes de agir. Quem olha só para o resultado que quer — e ignora as outras possibilidades — decide com lista incompleta.

- **Conte tudo antes de torcer.** Listar o espaço amostral inteiro é o jeito honesto de pensar uma chance: só olhar para o que favorece é começar a torre sem orçar (Lucas 14:28).

> 💬 **Para Conversar:**  
> Em uma decisão recente sua, você considerou todas as possibilidades — ou só pensou no resultado que queria?

---

## Simplificando

Probabilidade clássica é casos favoráveis divididos por casos possíveis ($$P = n(E)/n(\Omega)$$) — sempre entre 0 e 1, escrita como fração, decimal ou percentual.

---

## Para não esquecer

- **Espaço amostral:** lista completa dos resultados possíveis — vem antes da fórmula;
- **Fórmula:** $$P(E) = \frac{n(E)}{n(\Omega)}$$, casos favoráveis sobre possíveis;
- **Intervalo:** toda probabilidade está entre 0 (impossível) e 1 (certo).
