# Capítulo 2 — Espaço Amostral e Eventos

## Antes de calcular a chance, você sabe listar tudo o que pode acontecer?
Dois dados estão sobre a mesa, e alguém logo torce para sair soma 7. Antes de falar em chance, existe uma pergunta mais básica: quais resultados podem aparecer? Se a lista estiver incompleta, qualquer conclusão depois fica torta. Contar possibilidades é como abrir o mapa inteiro antes de escolher um caminho.

> 💭 **Pense um pouco:**  
> Você costuma pensar em todas as possibilidades ou só nas que quer que aconteçam?

## 1. Antes da Chance, a Lista
Todo cálculo de chance começa antes da conta: começa pela lista completa dos resultados possíveis.

### 1.1 Experimentos aleatórios
Um experimento aleatório é uma situação em que sabemos os resultados possíveis, mas não sabemos qual deles vai acontecer. Lançar uma moeda, jogar um dado ou sortear um número de rifa são exemplos simples.

Três ideias aparecem juntas:

- existe uma ação, como lançar ou sortear;
- existem resultados possíveis;
- o resultado exato não é conhecido antes.

Em um dado comum, sabemos que pode sair 1, 2, 3, 4, 5 ou 6. Antes do lançamento, porém, não sabemos qual face ficará para cima.

### 1.2 Espaço amostral
Espaço amostral é a lista de todos os resultados possíveis de um experimento aleatório. Podemos usar a letra grega $$ \Omega $$ para representar essa lista.

Para um dado comum:

$$ \Omega = \{1, 2, 3, 4, 5, 6\} $$

O número de resultados possíveis é:

$$ n(\Omega) = 6 $$

Essa escrita significa que o espaço amostral tem 6 resultados. Ainda não estamos calculando probabilidade; estamos apenas contando o todo.

> 💡 **Você sabia?**  
> Antes de perguntar "qual é a chance?", a matemática pergunta "qual é a lista completa?".

## 2. Como Representar Possibilidades
O espaço amostral pode aparecer como lista, tabela ou árvore.

### 2.1 Lista entre chaves
A lista entre chaves funciona bem quando há poucos resultados. Em uma moeda, por exemplo, os resultados possíveis são cara e coroa.

Podemos escrever:

$$ \Omega = \{\mathrm{cara}, \mathrm{coroa}\} $$

O total de resultados possíveis é:

$$ n(\Omega) = 2 $$

Se o experimento for sortear um número entre 1 e 4, a lista fica:

$$ \Omega = \{1, 2, 3, 4\} $$

O total é:

$$ n(\Omega) = 4 $$

### 2.2 Tabela e árvore
Quando o experimento acontece em etapas, uma árvore ajuda a não esquecer caminhos. Para duas moedas, cada lançamento abre dois ramos: cara ou coroa.

A lista completa de duas moedas é:

$$ \Omega = \{(\mathrm{cara}, \mathrm{cara}), (\mathrm{cara}, \mathrm{coroa}), (\mathrm{coroa}, \mathrm{cara}), (\mathrm{coroa}, \mathrm{coroa})\} $$

O total é:

$$ n(\Omega) = 4 $$

Para dois dados, a tabela organiza os pares ordenados:

| Dado 1 \\ Dado 2 | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---:|---:|---:|---:|---:|---:|
| 1 | (1,1) | (1,2) | (1,3) | (1,4) | (1,5) | (1,6) |
| 2 | (2,1) | (2,2) | (2,3) | (2,4) | (2,5) | (2,6) |
| 3 | (3,1) | (3,2) | (3,3) | (3,4) | (3,5) | (3,6) |
| 4 | (4,1) | (4,2) | (4,3) | (4,4) | (4,5) | (4,6) |
| 5 | (5,1) | (5,2) | (5,3) | (5,4) | (5,5) | (5,6) |
| 6 | (6,1) | (6,2) | (6,3) | (6,4) | (6,5) | (6,6) |

São 6 linhas com 6 resultados em cada linha:

$$ 6 \cdot 6 = 36 $$

Assim:

$$ n(\Omega) = 36 $$

> ⏸️ **Pare e Pense:**  
> O par (2,5) é igual ao par (5,2) quando os dados são identificados?

## 3. Evento: a Parte Que Interessa
Um evento é a parte do espaço amostral que responde à pergunta feita.

### 3.1 Evento dentro do espaço amostral
Se lançamos um dado e perguntamos "saiu número par?", o espaço amostral continua sendo a lista completa:

$$ \Omega = \{1, 2, 3, 4, 5, 6\} $$

O evento é a parte da lista que interessa:

$$ E = \{2, 4, 6\} $$

O evento está dentro do espaço amostral. Ele não cria resultados novos; apenas seleciona alguns resultados da lista completa.

### 3.2 Casos favoráveis
Casos favoráveis são os resultados que fazem o evento acontecer. No evento "sair número par" em um dado, os casos favoráveis são 2, 4 e 6.

Podemos contar:

$$ n(E) = 3 $$

Nesse capítulo, paramos na contagem. A divisão para calcular probabilidade fica para o próximo capítulo.

Blaise Pascal, em diálogo com Pierre de Fermat, ajudou a desenvolver ideias de probabilidade ao pensar em jogos e apostas interrompidas. A contribuição começa com uma atitude simples: listar possibilidades com cuidado.

> 📈 **No Dia a Dia:**  
> Em uma rifa, o evento "meu número ser sorteado" é apenas uma parte da lista de todos os números vendidos.

## 4. Conferir Para Não Esquecer
Conferir o espaço amostral evita contar só o que parece mais interessante.

### 4.1 Dois dados e pares possíveis
Ao lançar dois dados, muita gente pensa primeiro nas somas. Mas o espaço amostral é formado pelos pares possíveis, como (1,6), (2,5), (3,4) e assim por diante.

Se o evento for "soma 7", os casos favoráveis são:

$$ E = \{(1,6), (2,5), (3,4), (4,3), (5,2), (6,1)\} $$

Logo:

$$ n(E) = 6 $$

O espaço amostral completo tem:

$$ n(\Omega) = 36 $$

Perceba que (1,6) e (6,1) são resultados diferentes quando o primeiro número vem do dado 1 e o segundo vem do dado 2.

### 4.2 O erro de contar só o que aparece primeiro
O erro mais comum é contar apenas os resultados que queremos. Isso parece rápido, mas torna a comparação injusta, porque o evento fica sem o todo.

Antes de qualquer cálculo de probabilidade, a conferência deve responder a duas perguntas:

- listei todos os resultados possíveis?
- marquei apenas os resultados que pertencem ao evento?

Quando essas duas respostas estão corretas, a conta do próximo passo fica preparada.

> 🕵️ **Caso Real:**  
> Uma propaganda mostra quem ganhou o sorteio, mas o espaço amostral mostra todos os números que também poderiam ter perdido.

---

## NA VIDA REAL
Antes de decidir participar de uma rifa, escolher uma jogada em um jogo ou avaliar um sorteio, vale perguntar quais resultados podem acontecer. A lista completa impede que a vontade de ganhar esconda o tamanho real da situação.

---

## E A BÍBLIA NISSO?
> "Pois qual de vós, pretendendo construir uma torre, não se assenta primeiro para calcular a despesa?" (Lucas 14:28)

Listar possibilidades é uma forma de calcular antes de agir. A matemática chama isso de espaço amostral; a sabedoria bíblica chama atenção para considerar o todo antes da decisão.

- **Veja o todo antes de escolher a parte.** Uma decisão honesta não olha apenas para o resultado desejado, mas também para o que pode dar errado (Provérbios 10:9).

> 💬 **Para Conversar:** Em que decisão você precisa enxergar mais possibilidades antes de escolher?

---

## Simplificando
Espaço amostral é a lista completa dos resultados possíveis, e evento é a parte dessa lista que interessa à pergunta. Casos favoráveis são os resultados do evento, contados antes de qualquer cálculo de probabilidade.

---

## Para não esquecer
- **Experimento aleatório:** situação com resultados possíveis, mas resultado final incerto;
- **Espaço amostral:** lista completa de tudo o que pode acontecer;
- **Evento:** parte do espaço amostral que responde à pergunta.
