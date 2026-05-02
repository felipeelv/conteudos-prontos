# CAPÍTULO 1 — CONCEITO DE FUNÇÃO

## INTRODUÇÃO

No século XIX, o matemático alemão Karl Weierstrass dedicou parte de sua vida a dar rigor à análise matemática — definir com precisão o que é uma função, o que é um limite, o que é continuidade. A ideia central que herdamos dele é simples e severa ao mesmo tempo: **uma função é uma regra de associação que não tolera ambiguidade**.

> 💭 **Pense um pouco:**  
> Que problema surgiria se o mesmo CPF apontasse para duas pessoas diferentes em um cadastro do governo?

---

## 1. Relação e Função

Toda função é uma relação, mas nem toda relação é uma função.

### 1.1 Relações do cotidiano

Uma relação associa elementos de um conjunto $$A$$ a elementos de um conjunto $$B$$.

Veja só:

São relações:

- CPF → pessoa (a cada CPF associamos uma pessoa).
- Aluno → turma (a cada aluno, sua turma).
- Pessoa → endereço (a cada pessoa, seu endereço residencial).
- Pessoa → time de futebol favorito (a cada pessoa, seu time).

Em algumas dessas relações, a associação é confiável; em outras, podem aparecer problemas. A diferença é o critério de **unicidade**.

### 1.2 A regra da unicidade

Uma **função** é uma relação em que cada elemento de $$A$$ está associado a **um e apenas um** elemento de $$B$$.

Veja o exemplo abaixo.

A relação CPF → pessoa é função: cada CPF identifica uma única pessoa.

Já a relação pessoa → time favorito **não** é função: uma mesma pessoa pode declarar gostar de dois times ao mesmo tempo, ou de nenhum — falta a unicidade.

![Comparação de dois diagramas de flechas. À esquerda, em azul, uma relação que é função: cada elemento do conjunto A está ligado a exatamente uma imagem em B. À direita, em vermelho, uma relação que NÃO é função: o elemento 2 está ligado a duas imagens diferentes em B](../../_tikz/build/1serie/unidade-4-funcoes-e-funcao-afim/relacao-funcao-vs-nao-funcao.png)

> 🔢 **Padrão:**  
> Função = relação com unicidade — uma entrada, no máximo uma saída associada.

---

## 2. Domínio, Contradomínio e Imagem

A definição formal de função traz três conjuntos com papéis distintos.

### 2.1 O que entra

A notação formal de uma função é:

$$f: A \to B$$

Lê-se: "$$f$$ é uma função de $$A$$ em $$B$$". O conjunto $$A$$ é o **domínio** ($$\mathrm{Dom}(f)$$) — todas as entradas permitidas.

Veja só:

Em $$f: \mathbb{R} \to \mathbb{R}$$ definida por $$f(x) = x^2$$, o domínio é $$\mathbb{R}$$ — qualquer número real pode ser elevado ao quadrado.

Já em $$g(x) = \dfrac{1}{x}$$, o domínio não pode incluir o $$0$$ — a divisão por zero não está definida. Aqui $$\mathrm{Dom}(g) = \mathbb{R} \setminus \{0\}$$.

### 2.2 Onde pode chegar

O conjunto $$B$$ é o **contradomínio** ($$\mathrm{CDom}(f)$$) — todas as chegadas possíveis declaradas na definição da função.

Veja o exemplo abaixo.

Em $$f: \mathbb{R} \to \mathbb{R}$$, $$f(x) = x^2$$, o contradomínio é $$\mathbb{R}$$ — afirmamos que a saída pertence aos reais. Mas note: **nem todo número real é atingido** por essa função (não existe $$x$$ tal que $$x^2 = -1$$, por exemplo).

### 2.3 Onde realmente chega

A **imagem** ($$\mathrm{Im}(f)$$) é o conjunto dos valores que a função efetivamente assume — apenas as chegadas que existem.

Veja só:

Para $$f(x) = x^2$$ com $$\mathrm{Dom}(f) = \mathbb{R}$$:

- $$f$$ nunca produz valores negativos (pois todo quadrado é não-negativo).
- $$f$$ produz $$0$$ quando $$x = 0$$, e produz qualquer real positivo para algum $$x$$.

Logo:

$$\mathrm{Im}(f) = [0, +\infty[$$

A relação geral é:

$$\mathrm{Im}(f) \subset \mathrm{CDom}(f)$$

A imagem está sempre contida no contradomínio, podendo ser igual a ele ou não.

> ⚠️ **Atenção:**  
> Imagem **não é** sinônimo de contradomínio. O contradomínio é declarado; a imagem é descoberta.

---

## 3. Representações de Função

A mesma função pode ser representada de várias formas equivalentes.

### 3.1 Flechas e tabelas

O **diagrama de flechas** mostra explicitamente cada associação entre $$A$$ e $$B$$.

A **tabela** organiza as associações em duas colunas — entrada e saída.

Veja só:

Para $$f: \{1, 2, 3, 4\} \to \mathbb{R}$$ definida por $$f(x) = 2x - 1$$:

| $$x$$ | $$f(x)$$ |
|---:|---:|
| 1 | 1 |
| 2 | 3 |
| 3 | 5 |
| 4 | 7 |

A imagem é $$\mathrm{Im}(f) = \{1, 3, 5, 7\}$$.

### 3.2 Fórmulas e gráficos

A **fórmula** (lei de formação) descreve a regra com $$x \mapsto f(x)$$.

O **gráfico** marca os pontos $$(x, f(x))$$ no plano cartesiano.

Veja o exemplo abaixo.

Um critério gráfico simples — o **teste da reta vertical** — decide se um gráfico representa uma função: se qualquer reta vertical cruzar o gráfico em mais de um ponto, **não é função**, porque a mesma entrada teria duas imagens.

Por exemplo, o gráfico de uma circunferência $$x^2 + y^2 = 4$$ falha no teste — uma reta vertical entre $$x = -2$$ e $$x = 2$$ atravessa a circunferência em dois pontos. Logo, a circunferência inteira não é função de $$x$$.

> 🔢 **Padrão:**  
> Teste da reta vertical: se alguma reta vertical cortar o gráfico em mais de um ponto, a relação não é função.

---

## 4. Classificação de Funções

A relação entre entradas e saídas pode ser caracterizada por três classificações.

### 4.1 Injetora

Uma função é **injetora** quando entradas distintas geram imagens distintas:

$$x_1 \neq x_2 \Rightarrow f(x_1) \neq f(x_2)$$

Equivalentemente: $$f(x_1) = f(x_2) \Rightarrow x_1 = x_2$$.

Veja só:

A função $$f: \mathbb{R} \to \mathbb{R}$$, $$f(x) = 2x + 1$$ é injetora — se $$2x_1 + 1 = 2x_2 + 1$$, então $$x_1 = x_2$$.

Já $$g: \mathbb{R} \to \mathbb{R}$$, $$g(x) = x^2$$, **não** é injetora — $$g(2) = 4$$ e $$g(-2) = 4$$, embora $$2 \neq -2$$.

### 4.2 Sobrejetora

Uma função é **sobrejetora** quando todo elemento do contradomínio é atingido:

$$\mathrm{Im}(f) = \mathrm{CDom}(f)$$

Veja o exemplo abaixo.

A função $$f: \mathbb{R} \to \mathbb{R}$$, $$f(x) = 2x + 1$$ é sobrejetora — para qualquer $$y \in \mathbb{R}$$, existe um $$x = \dfrac{y - 1}{2}$$ tal que $$f(x) = y$$. Logo, $$\mathrm{Im}(f) = \mathbb{R}$$.

Já $$g: \mathbb{R} \to \mathbb{R}$$, $$g(x) = x^2$$, **não** é sobrejetora — não há $$x$$ real tal que $$x^2 = -1$$. A imagem é apenas $$[0, +\infty[$$, menor que o contradomínio $$\mathbb{R}$$.

### 4.3 Bijetora

Uma função é **bijetora** quando é injetora **e** sobrejetora ao mesmo tempo.

Veja só:

A função $$f: \mathbb{R} \to \mathbb{R}$$, $$f(x) = 2x + 1$$ é bijetora — vimos que ela é injetora e sobrejetora.

A bijetividade é a condição-chave para a existência da função inversa, tema da próxima seção.

> 🔢 **Padrão:**  
> Bijetora ⇔ injetora **e** sobrejetora.

---

## 5. Composta e Inversa

Duas operações importantes podem ser feitas com funções: aplicar uma depois da outra, ou desfazer uma função.

### 5.1 Aplicar uma função depois da outra

Dadas duas funções $$g: A \to B$$ e $$f: B \to C$$, a **composta** $$f \circ g$$ é definida por:

$$(f \circ g)(x) = f(g(x))$$

A função $$g$$ é aplicada primeiro, e o resultado entra como entrada de $$f$$.

Veja o exemplo abaixo.

Sejam $$g(x) = x + 3$$ e $$f(x) = 2x$$. Calcular $$(f \circ g)(5)$$:

**Resolução:**

- **Passo 1:** Aplicar $$g$$ em 5.

$$g(5) = 5 + 3 = 8$$

- **Passo 2:** Aplicar $$f$$ no resultado.

$$f(8) = 2 \cdot 8 = 16$$

**Resposta:** $$(f \circ g)(5) = 16$$.

⚠️ A ordem importa: em geral, $$(f \circ g)(x) \neq (g \circ f)(x)$$.

Verificando com os mesmos exemplos:

$$(g \circ f)(5) = g(f(5)) = g(10) = 10 + 3 = 13$$

Como $$16 \neq 13$$, $$(f \circ g)(5) \neq (g \circ f)(5)$$.

### 5.2 Quando é possível voltar

A **função inversa** de $$f$$, denotada $$f^{-1}$$, é a função que desfaz $$f$$:

$$f^{-1}(y) = x \iff f(x) = y$$

Para que $$f^{-1}$$ exista, $$f$$ precisa ser **bijetora** — ou estar restrita a um domínio em que se torna bijetora.

Veja só:

Calcular a inversa de $$f(x) = 2x + 1$$:

**Resolução:**

- **Passo 1:** Escrever $$y = 2x + 1$$.

- **Passo 2:** Trocar os papéis de $$x$$ e $$y$$.

$$x = 2y + 1$$

- **Passo 3:** Isolar $$y$$.

$$x - 1 = 2y$$

$$y = \frac{x - 1}{2}$$

**Resposta:** $$f^{-1}(x) = \dfrac{x - 1}{2}$$.

Para conferir: aplicando $$f$$ e depois $$f^{-1}$$, deve-se voltar à entrada original.

$$f(3) = 2 \cdot 3 + 1 = 7$$

$$f^{-1}(7) = \frac{7 - 1}{2} = 3$$

A inversa devolveu o $$x$$ original.

> ⚠️ **Atenção:**  
> $$f^{-1}$$ existe somente quando $$f$$ é bijetora — sem isso, a "volta" pode ser ambígua.

---

## NA VIDA REAL

Sistemas de cadastro (CPF, RG, e-mail) só funcionam porque cada identificador aponta para uma única pessoa — é a unicidade da função em ação. Se alguma associação falhasse, todo o sistema perderia confiabilidade.

---

## E A BÍBLIA NISSO?

<center>
*"Quem anda em integridade anda seguro, mas o que perverte os seus caminhos será conhecido."* — **Provérbios 10:9**
</center>

Em uma função, a mesma entrada produz a mesma saída — não há duplicidade. Em uma vida íntegra, a mesma pessoa responde com os mesmos princípios em qualquer contexto, em casa ou em público.

> 💬 **Para Conversar:** Você é a mesma "função" em casa, na escola e entre amigos, ou sua resposta muda conforme quem está olhando?

---

## Simplificando

Função é uma relação com unicidade: cada elemento do domínio tem uma única imagem no contradomínio. Funções podem ser injetoras (entradas diferentes geram saídas diferentes), sobrejetoras (toda saída possível é atingida) ou bijetoras (ambas). Funções bijetoras admitem inversa, e funções podem ser compostas $$f \circ g$$ aplicando uma depois da outra.

---

## Fórmulas do capítulo

- **Notação de função:** $$f: A \to B$$, com $$x \mapsto f(x)$$.
- **Conjuntos:** $$\mathrm{Dom}(f) = A$$, $$\mathrm{CDom}(f) = B$$, $$\mathrm{Im}(f) \subset B$$.
- **Injetora:** $$x_1 \neq x_2 \Rightarrow f(x_1) \neq f(x_2)$$.
- **Sobrejetora:** $$\mathrm{Im}(f) = \mathrm{CDom}(f)$$.
- **Bijetora:** injetora **e** sobrejetora.
- **Função composta:** $$(f \circ g)(x) = f(g(x))$$.
- **Função inversa:** $$f^{-1}(y) = x \iff f(x) = y$$, definida quando $$f$$ é bijetora.
