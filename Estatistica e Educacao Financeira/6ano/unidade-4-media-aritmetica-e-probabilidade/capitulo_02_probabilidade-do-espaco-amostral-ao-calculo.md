# Capítulo 2 — Probabilidade: do espaço amostral ao cálculo

## Como saber a chance de algo acontecer antes de tentar?

Jogo de tabuleiro: você grita "vai dar 7!" antes de lançar dois dados. Rifa do festival: 100 números a R$ 2 cada. Antes de calcular a chance, é preciso saber tudo o que pode acontecer.

> 💭 **Pense um pouco:**  
> Você costuma pensar em todas as possibilidades, ou só nas que quer que aconteçam?

---

## 1. Antes da chance, a lista

Para calcular chance, primeiro é preciso saber o que pode acontecer.

### 1.1 Experimento aleatório e espaço amostral

- **Experimento aleatório**: situação em que se conhecem os resultados possíveis, mas não qual sai (moeda, dado, baralho);
- **Espaço amostral** ($$\Omega$$): lista completa dos resultados possíveis.

> Moeda: $$\Omega = \{\text{cara, coroa}\}$$. Dado: $$\Omega = \{1, 2, 3, 4, 5, 6\}$$.

> 💡 **Você sabia?**  
> Em 1654, Pascal e Fermat trocaram cartas sobre o "problema dos pontos" — considerado o início da probabilidade.

### 1.2 Lista, tabela e árvore

- **Lista entre chaves** — experimentos simples;
- **Tabela ou árvore** — mais de uma etapa.

**Duas moedas:** (C,C), (C,K), (K,C), (K,K) → $$n(\Omega) = 4$$.

**Dois dados** — tabela 6 × 6:

| ↓ 1º \ 2º → | 1 | 2 | 3 | 4 | 5 | 6 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| **1** | (1,1) | (1,2) | (1,3) | (1,4) | (1,5) | (1,6) |
| **2** | (2,1) | (2,2) | (2,3) | (2,4) | (2,5) | (2,6) |
| **3** | (3,1) | (3,2) | (3,3) | (3,4) | (3,5) | (3,6) |
| **4** | (4,1) | (4,2) | (4,3) | (4,4) | (4,5) | (4,6) |
| **5** | (5,1) | (5,2) | (5,3) | (5,4) | (5,5) | (5,6) |
| **6** | (6,1) | (6,2) | (6,3) | (6,4) | (6,5) | (6,6) |

6 × 6 = 36 pares: $$n(\Omega) = 36$$.

---

## 2. Evento e casos favoráveis

Dentro do espaço amostral, escolhemos os resultados que respondem à pergunta.

### 2.1 Evento

Um **evento** (E) é a parte do espaço amostral que responde à pergunta.

> Dado, "saiu par?": $$E = \{2, 4, 6\}$$.

### 2.2 Casos favoráveis

Os **casos favoráveis** são os resultados que pertencem ao evento.

$$ \Omega = \{1, 2, 3, 4, 5, 6\} \quad ; \quad E = \{2, 4, 6\} \quad ; \quad n(E) = 3 $$

Três casos favoráveis em seis possíveis — a divisão dá a probabilidade.

---

## 3. A fórmula clássica

A probabilidade é uma fração que compara duas contagens.

### 3.1 P(E) = n(E) / n(Ω)

$$ P(E) = \frac{n(E)}{n(\Omega)} $$

Favoráveis dividido por possíveis.

> Rifa, 1 bilhete em 100: $$P_1 = \frac{1}{100}$$. Com 5: $$P_5 = \frac{5}{100} = \frac{1}{20}$$ — 5 vezes mais chance.

### 3.2 Quando vale

Só funciona se:

- **espaço amostral finito** — quantidade contável;
- **equiprováveis** — cada resultado tem a mesma chance.

Se algum resultado for mais provável que outro, a fórmula clássica não se aplica direto.

---

## 4. Fração, decimal e porcentagem

A mesma chance pode aparecer em três escritas.

### 4.1 Três formas da mesma chance

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

### 4.2 Probabilidade entre 0 e 1

$$ 0 \leq P \leq 1 $$

- **P = 0** — impossível (tirar 7 num dado comum);
- **P = 1** — certo (tirar 1 a 6 num dado);
- entre os dois — provável.

Erro detectado se $$P > 1$$, numerador maior que denominador ou faltou resultado.

---

## NA VIDA REAL

Rifa, sorteio, previsão do tempo, exames médicos — toda chance só faz sentido depois de contar casos favoráveis e possíveis com honestidade.

---

## E A BÍBLIA NISSO?

> "Pois qual de vós, querendo edificar uma torre, não se assenta primeiro a calcular as despesas?" (Lucas 14:28)

Integridade começa antes da ação: quem olha só para o resultado que quer decide com lista incompleta.

- **Conte tudo antes de torcer.** Listar o espaço amostral inteiro é o jeito honesto de pensar uma chance (Lucas 14:28).

> 💬 **Para Conversar:**  
> Em uma decisão recente sua, você considerou todas as possibilidades — ou só pensou no resultado que queria?

---

## Simplificando

Probabilidade clássica é casos favoráveis divididos por casos possíveis ($$P = n(E)/n(\Omega)$$) — sempre entre 0 e 1.

---

## Para não esquecer

- **Espaço amostral:** lista completa dos resultados possíveis — vem antes da fórmula;
- **Fórmula:** $$P(E) = \frac{n(E)}{n(\Omega)}$$;
- **Intervalo:** toda probabilidade está entre 0 (impossível) e 1 (certo).
