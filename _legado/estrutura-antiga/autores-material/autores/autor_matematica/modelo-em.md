<!-- MODELO DE REFERÊNCIA — 1ª SÉRIE EM
     Formato original: Google Docs + CodeCogs LaTeX (convertido para $$ ... $$).
     Este capítulo usa ## INTRODUÇÃO em vez de ## Pergunta-problema (formato anterior ao prompt atual).
     Use como referência de TOM, DENSIDADE e ESTILO — não de estrutura de headings.
     A estrutura correta está em prompt-autor.md. -->

# CAPÍTULO 1 — OPERAÇÕES BÁSICAS COM CONJUNTOS

## INTRODUÇÃO

Assim como a adição e a subtração operam sobre números, a união, a interseção, a diferença e o complementar operam sobre conjuntos — permitindo combinar, separar e comparar grupos de elementos com precisão.

💭 Pense um pouco: quando você filtra resultados em uma busca na internet usando "E" ou "OU", que tipo de operação está fazendo com os conjuntos de resultados?

## 1. União de Conjuntos

A união reúne todos os elementos de dois ou mais conjuntos em um só.

### Definição

A **união** de [](https://www.codecogs.com/eqnedit.php?latex=A#0) e [](https://www.codecogs.com/eqnedit.php?latex=B#0) é o conjunto de todos os elementos que pertencem a [](https://www.codecogs.com/eqnedit.php?latex=A#0), a [](https://www.codecogs.com/eqnedit.php?latex=B#0), ou a ambos:

[](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccup%20B%20%3D%20%5Clbrace%20x%20%5Cmid%20x%20%5Cin%20A%20%5Cmathrm%7Bou%7D%20x%20%5Cin%20B%20%5Crbrace#0)

> ⚠️ **Atenção:**
> Elementos comuns a [](https://www.codecogs.com/eqnedit.php?latex=A#0) e [](https://www.codecogs.com/eqnedit.php?latex=B#0) aparecem uma única vez em [](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccup%20B#0) — conjuntos não admitem repetição.

Veja o exemplo abaixo.

Dados [](https://www.codecogs.com/eqnedit.php?latex=A%20%3D%20%5Clbrace%201%2C%203%2C%205%2C%207%20%5Crbrace#0) e [](https://www.codecogs.com/eqnedit.php?latex=B%20%3D%20%5Clbrace%202%2C%203%2C%204%2C%205%20%5Crbrace#0), determine [](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccup%20B#0).

**Resolução:**

Reunimos todos os elementos de [](https://www.codecogs.com/eqnedit.php?latex=A#0) e de [](https://www.codecogs.com/eqnedit.php?latex=B#0), sem repetir:

[](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccup%20B%20%3D%20%5Clbrace%201%2C%202%2C%203%2C%204%2C%205%2C%207%20%5Crbrace#0)

**Resposta:** $$A \cup B = \lbrace 1, 2, 3, 4, 5, 7 \rbrace$$

## 2. Interseção de Conjuntos

A interseção extrai apenas os elementos compartilhados por dois ou mais conjuntos.

### Definição

A **interseção** de [](https://www.codecogs.com/eqnedit.php?latex=A#0) e [](https://www.codecogs.com/eqnedit.php?latex=B#0) é o conjunto dos elementos que pertencem simultaneamente a [](https://www.codecogs.com/eqnedit.php?latex=A#0) e a [](https://www.codecogs.com/eqnedit.php?latex=B#0):

[](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccap%20B%20%3D%20%5Clbrace%20x%20%5Cmid%20x%20%5Cin%20A%20%5Cmathrm%7Be%7D%20x%20%5Cin%20B%20%5Crbrace#0)

Quando [](https://www.codecogs.com/eqnedit.php?latex=A%20%5Ccap%20B%20%3D%20%5Cemptyset#0), os conjuntos são **disjuntos**.

Veja o exemplo abaixo.

Dados $$A = \lbrace 1, 3, 5, 7 \rbrace$$ e $$B = \lbrace 2, 3, 4, 5 \rbrace$$, determine $$A \cap B$$.

**Resolução:**

Selecionamos os elementos que aparecem em ambos:

$$A \cap B = \lbrace 3, 5 \rbrace$$

**Resposta:** $$A \cap B = \lbrace 3, 5 \rbrace$$

## 3. Diferença de Conjuntos

A diferença seleciona os elementos exclusivos de um conjunto em relação a outro.

### Definição

A **diferença** $$A - B$$ é o conjunto dos elementos que pertencem a $$A$$ e não pertencem a $$B$$.

> ⚠️ **Atenção:**
> A diferença não é comutativa: em geral, $$A - B \neq B - A$$.

Veja o exemplo abaixo.

Dados $$A = \lbrace 1, 3, 5, 7 \rbrace$$ e $$B = \lbrace 2, 3, 4, 5 \rbrace$$, determine $$A - B$$ e $$B - A$$.

**Resolução:**

- $$A - B$$: elementos de $$A$$ que não estão em $$B$$: $$\lbrace 1, 7 \rbrace$$
- $$B - A$$: elementos de $$B$$ que não estão em $$A$$: $$\lbrace 2, 4 \rbrace$$

**Resposta:** $$A - B = \lbrace 1, 7 \rbrace$$ e $$B - A = \lbrace 2, 4 \rbrace$$

## 4. Complementar de um Conjunto

Dado $$A \subset U$$, o **complementar** de $$A$$ é o conjunto dos elementos de $$U$$ que não pertencem a $$A$$:

$$A^c = U - A = \lbrace x \mid x \in U \text{ e } x \notin A \rbrace$$

Propriedades imediatas:

- $$(A^c)^c = A$$
- $$A \cup A^c = U$$
- $$A \cap A^c = \emptyset$$

Veja o exemplo abaixo.

Dado $$U = \lbrace 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 \rbrace$$ e $$A = \lbrace 2, 4, 6, 8, 10 \rbrace$$, determine $$A^c$$.

**Resolução:**

Elementos de $$U$$ que não pertencem a $$A$$:

$$A^c = \lbrace 1, 3, 5, 7, 9 \rbrace$$

**Resposta:** $$A^c = \lbrace 1, 3, 5, 7, 9 \rbrace$$

## NA VIDA REAL

Mecanismos de busca aplicam operações de conjuntos: "OR" faz a união, "AND" faz a interseção e "−" executa a diferença dos resultados.

## E A BÍBLIA NISSO?

*"Há diversidade de dons, mas o Espírito é o mesmo."* — **1 Coríntios 12:4**

Conjuntos diferentes se unem sem perder identidade — no corpo de Cristo, dons diversos se complementam em unidade.

- **Lembre-se de: unidade na diversidade.** Deus reúne pessoas distintas em um só corpo, preservando a singularidade de cada uma. *"Assim como o corpo é um e tem muitos membros, assim também é Cristo."* (1 Coríntios 12:12)

> 💬 **Para Conversar:** Como você contribui com o que é exclusivamente seu para fortalecer sua comunidade?

## Simplificando

Quatro operações descrevem como conjuntos se relacionam: união junta tudo, interseção filtra o comum, diferença isola o exclusivo e complementar captura o que ficou de fora no universo.

## Para não esquecer

- $$\cup$$ (tudo) · $$\cap$$ (comum) · $$A - B$$ (só de $$A$$) · $$A^c$$ (fora de $$A$$)
- Diferença tem ordem: $$A - B \neq B - A$$
- Complementar exige universo: sem $$U$$, não existe $$A^c$$