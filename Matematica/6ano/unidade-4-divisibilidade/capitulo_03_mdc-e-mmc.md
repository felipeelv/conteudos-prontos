# CAPÍTULO 3 — MDC E MMC

## INTRODUÇÃO

No século XIX, o matemático francês Gabriel Lamé estudou métodos para encontrar o maior divisor comum entre dois números — e descobriu que alguns caminhos são bem mais rápidos que outros. Hoje, MDC e MMC aparecem em situações bem cotidianas: dividir frutas em cestas iguais, descobrir quando dois ônibus voltam a se encontrar, ajustar engrenagens.

> 💭 **Pense um pouco:**  
> Para dividir 24 maçãs e 36 laranjas em cestas iguais com a mesma quantidade de cada fruta, qual pergunta matemática precisamos fazer?

---

## 1. MDC

O Maior Divisor Comum (MDC) é o maior número que divide dois ou mais naturais sem deixar resto.

### 1.1 Divisores comuns

Para encontrar divisores comuns, basta listar os divisores de cada número e ver quais aparecem nas duas listas.

Veja só:

Os divisores de 24 são: 1, 2, 3, 4, 6, 8, 12 e 24.

Os divisores de 36 são: 1, 2, 3, 4, 6, 9, 12, 18 e 36.

Os divisores comuns são os que aparecem nas duas listas: 1, 2, 3, 4, 6 e 12.

### 1.2 O maior divisor comum

Entre os divisores comuns, o MDC é simplesmente o maior deles.

Veja o exemplo abaixo.

Entre os divisores comuns 1, 2, 3, 4, 6 e 12, o maior é 12. Logo:

$$\mathrm{MDC}(24, 36) = 12$$

![Diagrama mostrando os divisores de 24 e 36, com 12 destacado como o MDC](https://raw.githubusercontent.com/felipeelv/conteudos-prontos/main/Matematica/_tikz/build/6ano/unidade-4-divisibilidade/divisores-comuns-24-36.png)

> 🔢 **Padrão:**  
> O MDC responde à pergunta: qual é a maior divisão comum sem sobras?

---

## 2. MMC

O Menor Múltiplo Comum (MMC) é o menor número positivo que é múltiplo de dois ou mais naturais.

### 2.1 Múltiplos comuns

Listar os primeiros múltiplos de cada número ajuda a encontrar os comuns.

Veja só:

Os múltiplos de 12 são: 12, 24, 36, 48, 60, 72, 84...

Os múltiplos de 18 são: 18, 36, 54, 72, 90...

Os múltiplos comuns às duas listas são: 36, 72... — e seguem aparecendo de tempos em tempos.

### 2.2 O menor múltiplo comum

Entre os múltiplos comuns, o MMC é o primeiro deles, ou seja, o menor positivo.

Veja o exemplo abaixo.

Entre 36 e 72, o menor é 36. Logo:

$$\mathrm{MMC}(12, 18) = 36$$

> 🔢 **Padrão:**  
> O MMC responde à pergunta: onde os ciclos se encontram pela primeira vez?

---

## 3. Usando Fatoração

Quando os números ficam grandes, listar divisores ou múltiplos cansa. A fatoração em primos resolve mais rápido.

### 3.1 Decompor para calcular MDC

Decomponha cada número em fatores primos e tome os fatores comuns com o menor expoente em cada um.

Veja só:

$$24 = 2^{3} \cdot 3$$

$$36 = 2^{2} \cdot 3^{2}$$

Os fatores comuns são 2 e 3. Para o MDC, pegue o menor expoente de cada um:

- $$2$$ aparece com expoente 3 em 24 e expoente 2 em 36 — o menor é 2.
- $$3$$ aparece com expoente 1 em 24 e expoente 2 em 36 — o menor é 1.

$$\mathrm{MDC}(24, 36) = 2^{2} \cdot 3 = 12$$

### 3.2 Decompor para calcular MMC

Para o MMC, tome todos os fatores que aparecem em pelo menos um dos números, com o maior expoente em cada um.

Veja o exemplo abaixo.

Usando as mesmas fatorações:

$$24 = 2^{3} \cdot 3$$

$$36 = 2^{2} \cdot 3^{2}$$

Para o MMC, pegue o maior expoente de cada fator:

- $$2$$ com o maior expoente: 3.
- $$3$$ com o maior expoente: 2.

$$\mathrm{MMC}(24, 36) = 2^{3} \cdot 3^{2} = 8 \cdot 9 = 72$$

E vale conferir a relação clássica:

$$\mathrm{MDC}(24, 36) \cdot \mathrm{MMC}(24, 36) = 12 \cdot 72 = 864$$

$$24 \cdot 36 = 864$$

Os dois produtos batem.

---

## 4. Aplicações

MDC e MMC respondem a perguntas diferentes — e cada situação pede um deles.

### 4.1 Partilha justa com MDC

Quando o problema é dividir quantidades em grupos iguais usando o tamanho máximo possível, o caminho é o MDC.

Veja só:

Uma escola tem 24 maçãs e 36 laranjas e quer montar cestas iguais — todas com a mesma quantidade de maçãs e a mesma quantidade de laranjas, sem sobrar fruta.

O número de cestas é $$\mathrm{MDC}(24, 36) = 12$$. Em cada cesta vão $$24 \div 12 = 2$$ maçãs e $$36 \div 12 = 3$$ laranjas.

### 4.2 Ciclos e encontros com MMC

Quando o problema é descobrir quando dois ciclos se encontram pela primeira vez, o caminho é o MMC.

Veja o exemplo abaixo.

Em uma estação, um ônibus passa a cada 12 minutos e o metrô a cada 18 minutos. Os dois saíram juntos às 8h. Quando voltarão a sair juntos?

O encontro é depois de $$\mathrm{MMC}(12, 18) = 36$$ minutos.

Logo, voltarão a sair juntos às 8h36.

> ⚠️ **Atenção:**  
> MDC pergunta "qual a maior divisão comum?". MMC pergunta "qual o primeiro encontro comum?". Confunda os dois e a resposta sai errada.

---

## NA VIDA REAL

Em uma cozinha, quando uma receita pede dividir em porções iguais o que sobrou, é MDC. Em um calendário escolar, quando o coro e o time treinam em ciclos diferentes e queremos saber o próximo dia em que coincidem, é MMC.

---

## E A BÍBLIA NISSO?

<center>
*"Porque também o corpo não é um só membro, mas muitos."* — **1 Coríntios 12:14**
</center>

Números podem compartilhar divisores e encontrar múltiplos comuns sem perder a própria identidade — assim como pessoas diferentes podem fazer parte do mesmo grupo sem deixar de ser únicas.

> 💬 **Para Conversar:** O que sua turma compartilha sem que cada pessoa deixe de ser quem é?

---

## Simplificando

MDC é o maior divisor comum — usado em partilha máxima sem sobras; MMC é o menor múltiplo comum — usado em ciclos que se encontram. Os dois podem ser calculados por listas ou por fatoração em primos.
