# Capítulo 2 — Espaço Amostral e Eventos

## Antes de calcular a chance, você sabe listar tudo o que pode acontecer?

Dois dados estão sobre a mesa. Alguém torce para sair soma 7.

Parece simples olhar só para os pares que ajudam. Mas existem muitos pares possíveis antes de qualquer conta.

A lista completa vem antes da torcida.

> 💭 **Pense um pouco:**  
> Você costuma pensar em todas as possibilidades ou só nas que quer que aconteçam?

## 1. Antes da Chance, a Lista

Antes de falar em chance, precisamos saber tudo o que pode acontecer.

### 1.1 Experimentos aleatórios

Um experimento aleatório é uma situação em que conhecemos os resultados possíveis, mas não sabemos qual vai acontecer.

Lançar uma moeda é um exemplo. Antes do lançamento, podem sair cara ou coroa.

Lançar um dado também é um exemplo. Antes do lançamento, podem sair 1, 2, 3, 4, 5 ou 6.

> 📈 **No Dia a Dia:**  
> Uma rifa é aleatória porque sabemos os números vendidos, mas não sabemos qual será sorteado.

### 1.2 Espaço amostral

A lista completa dos resultados possíveis recebe o nome de espaço amostral.

Para um dado comum, a lista é:

$$ \Omega = \{1, 2, 3, 4, 5, 6\} $$

A letra $$ \Omega $$ pode representar o espaço amostral. Ela é apenas um nome curto para a lista completa.

O número de resultados possíveis é escrito assim:

$$ n(\Omega) = 6 $$

Isso significa que há 6 resultados possíveis.

## 2. Como Representar Possibilidades

As possibilidades podem aparecer em lista, tabela ou árvore.

### 2.1 Lista entre chaves

Para uma moeda, a lista entre chaves fica curta:

$$ \Omega = \{\mathrm{cara}, \mathrm{coroa}\} $$

Cada item dentro das chaves é um resultado possível.

Para duas moedas, a lista já precisa mostrar a ordem:

$$ \Omega = \{\mathrm{CC}, \mathrm{CK}, \mathrm{KC}, \mathrm{KK}\} $$

Aqui, C representa cara e K representa coroa. Assim evitamos acentos dentro da escrita matemática.

### 2.2 Tabela e árvore

Uma tabela ajuda quando há muitos pares possíveis.

| Dado 1 \ Dado 2 | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---:|---:|---:|---:|---:|---:|
| 1 | (1,1) | (1,2) | (1,3) | (1,4) | (1,5) | (1,6) |
| 2 | (2,1) | (2,2) | (2,3) | (2,4) | (2,5) | (2,6) |
| 3 | (3,1) | (3,2) | (3,3) | (3,4) | (3,5) | (3,6) |
| 4 | (4,1) | (4,2) | (4,3) | (4,4) | (4,5) | (4,6) |
| 5 | (5,1) | (5,2) | (5,3) | (5,4) | (5,5) | (5,6) |
| 6 | (6,1) | (6,2) | (6,3) | (6,4) | (6,5) | (6,6) |

Essa tabela tem 36 pares. O par (1,6) é diferente do par (6,1), porque o primeiro número vem do dado 1.

> 💡 **Você sabia?**  
> Um diagrama em árvore abre ramos para mostrar escolhas ou resultados em etapas.

## 3. Evento: a Parte Que Interessa

Um evento é a parte do espaço amostral que responde à pergunta.

### 3.1 Evento dentro do espaço amostral

No lançamento de um dado, o espaço amostral é a lista completa.

$$ \Omega = \{1, 2, 3, 4, 5, 6\} $$

Se a pergunta é "sair número par", o evento é:

$$ E = \{2, 4, 6\} $$

O evento fica dentro do espaço amostral. Ele não inventa resultado novo; apenas separa os que interessam.

### 3.2 Casos favoráveis

Casos favoráveis são os resultados que fazem o evento acontecer.

No evento "sair número par", os casos favoráveis são 2, 4 e 6.

Podemos contar assim:

$$ n(E) = 3 $$

Ainda não estamos calculando probabilidade. Estamos apenas preparando a contagem.

> ⏸️ **Pare e Pense:**  
> O que acontece se você conta só os resultados que quer e esquece o resto da lista?

## 4. Conferir Para Não Esquecer

Uma contagem incompleta faz qualquer conclusão ficar torta.

### 4.1 Dois dados e pares possíveis

Voltando aos dois dados, a soma 7 aparece em alguns pares:

| Par | Soma |
|---|---:|
| (1,6) | 7 |
| (2,5) | 7 |
| (3,4) | 7 |
| (4,3) | 7 |
| (5,2) | 7 |
| (6,1) | 7 |

Esses são os casos favoráveis para o evento "soma 7".

$$ n(E) = 6 $$

O espaço amostral completo tem 36 pares.

$$ n(\Omega) = 36 $$

### 4.2 O erro de contar só o que aparece primeiro

Um erro comum é contar apenas (1,6), (2,5) e (3,4). Isso esquece que a ordem dos dados pode mudar.

Blaise Pascal e Pierre de Fermat discutiram problemas de jogos no século XVII. Para dividir apostas com justiça, era preciso listar possibilidades com cuidado.

> 🕵️ **Caso Real:**  
> Em sorteios e jogos, uma regra justa começa quando todos os resultados possíveis são considerados.

---

## NA VIDA REAL

Antes de entrar em uma rifa, olhe todos os números vendidos, não apenas o prêmio. A chance só pode ser entendida depois que o espaço amostral está completo.

---

## E A BÍBLIA NISSO?

> "Pois qual de vós, querendo construir uma torre, não se assenta primeiro para calcular a despesa?" (Lucas 14:28)

Listar possibilidades é uma forma de calcular antes de agir. A matemática ensina a olhar o todo antes de escolher a parte. Isso combina com decisões cuidadosas e honestas.

- **Conte o todo antes de defender a parte.** Uma escolha responsável não ignora resultados que incomodam; ela considera o conjunto antes da decisão (Provérbios 10:9).

> 💬 **Para Conversar:** Em que decisão do dia a dia você precisa listar possibilidades antes de escolher?

---

## Simplificando

Espaço amostral é a lista completa dos resultados possíveis. Evento é a parte dessa lista que interessa, e caso favorável é cada resultado que faz o evento acontecer.

---

## Para não esquecer

- **Experimento aleatório:** situação com resultado incerto;
- **Espaço amostral:** lista de todos os resultados possíveis;
- **Evento:** parte da lista que responde à pergunta.
