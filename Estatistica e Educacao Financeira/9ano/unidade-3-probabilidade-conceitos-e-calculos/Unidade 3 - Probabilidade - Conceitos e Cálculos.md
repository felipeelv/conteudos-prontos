<!--
Convertido automaticamente de Google Docs para Markdown.
Origem .gdoc: _legado/estrutura-antiga/Unidade 3-/Matemática 3/9º Ano (2026)/Unidade 3 - Probabilidade Conceitos e Cálculos/Unidade 3 - Probabilidade: Conceitos e Cálculos.gdoc
Doc ID: 1-orRTKFdfXoExQ0JvUUgxJ26Qnymn8JO-eRy-2LHuQ4
Convertido em: 2026-05-01T14:18:58-03:00
-->

# Capítulo 1 — Espaço Amostral e Cálculo de Probabilidade

## Quanto vale a chance de ganhar?

Na final do campeonato escolar de basquete, o time de vocês perdeu por um ponto. O técnico, frustrado, disse: "Era praticamente impossível errar aquele lance livre." Um colega discordou: "Qualquer jogador pode errar — é uma questão de probabilidade." Os dois têm razão, mas estão falando de coisas diferentes: um fala de expectativa, o outro de matemática.

Quantificar uma chance — transformar incerteza em número — começa por uma pergunta: quais são todos os resultados possíveis?

> 💭 **Pense um pouco:**\
> Se um jogador acerta 7 de cada 10 lances livres no treino, qual a chance de ele errar na final?

## 1. Espaço amostral e eventos

O **espaço amostral** ([<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20#0)) é o conjunto de todos os resultados possíveis de um experimento aleatório; [<img src="media/image38.png" style="width:0.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20n(%5COmega)%20#0) indica sua cardinalidade.

Ao lançar um dado de seis faces:

[<img src="media/image36.png" style="width:2.58333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20%3D%20%7B1%2C%3B2%2C%3B3%2C%3B4%2C%3B5%2C%3B6%7D%20%5Cqquad%20n(%5COmega)%20%3D%206%20#0)

| **Experimento** | **Espaço amostral** | [<img src="media/image38.png" style="width:0.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20n(%5COmega)%20#0) |
|----|----|----|
| Lançar uma moeda | [<img src="media/image14.png" style="width:0.86111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%7Bcara%2C%3Bcoroa%7D%20#0) | 2 |
| Lançar um dado | [<img src="media/image48.png" style="width:1.22222in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=%20%7B1%2C%3B2%2C%3B3%2C%3B4%2C%3B5%2C%3B6%7D%20#0) | 6 |
| Retirar uma carta de copas | [<img src="media/image63.png" style="width:1.25in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=%20%7BA%2C%3B2%2C%3B3%2C%3B%5Cldots%2C%3BK%7D%20#0) | 13 |

**Evento** é qualquer subconjunto de [<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20#0) — os resultados que satisfazem uma condição. Três tipos especiais:

- **Certo:** [<img src="media/image68.png" style="width:0.45833in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%3D%20%5COmega%20#0), sempre ocorre, [<img src="media/image32.png" style="width:0.66667in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%3D%201%20#0);

- **Impossível:** [<img src="media/image16.png" style="width:0.41667in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%3D%20%5Cemptyset%20#0), nunca ocorre, [<img src="media/image99.png" style="width:0.66667in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%3D%200%20#0);

- **Simples:** contém um único elemento de [<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20#0).

> 📈 **No Dia a Dia:**\
> Em sorteios de loteria, o espaço amostral tem dezenas de milhões de elementos — por isso a chance de ganhar é tão pequena.

## 2. Cálculo de probabilidade

### 2.1 Fórmula clássica

Para resultados **equiprováveis** (mesma chance de ocorrer), a probabilidade do evento [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0) é:

[<img src="media/image18.png" style="width:0.97222in;height:0.40278in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%3D%20%5Cfrac%7Bn(A)%7D%7Bn(%5COmega)%7D%20#0)

onde [<img src="media/image12.png" style="width:0.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20n(A)%20#0) é o número de resultados favoráveis. O resultado sempre satisfaz [<img src="media/image75.png" style="width:0.98611in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%200%20%5Cleq%20P(A)%20%5Cleq%201%20#0).

Veja o exemplo abaixo: probabilidade de sair número par ao lançar um dado.

[<img src="media/image61.png" style="width:2.5in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20n(A)%20%3D%203%20%5Cquad%20(2%2C%3B4%2C%3B6)%20%5Cqquad%20n(%5COmega)%20%3D%206%20#0)

[<img src="media/image76.png" style="width:0.70833in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%3D%20%5Cfrac%7B3%7D%7B6%7D%20#0)

[<img src="media/image111.png" style="width:1.23611in;height:0.33333in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%3D%20%5Cfrac%7B1%7D%7B2%7D%20%3D%2050%25%20#0)

### 2.2 Propriedades fundamentais

- [<img src="media/image112.png" style="width:0.66667in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5COmega)%20%3D%201%20#0) — algum resultado sempre ocorre;

- [<img src="media/image59.png" style="width:0.63889in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cemptyset)%20%3D%200%20#0) — o evento impossível nunca ocorre;

- a soma das probabilidades de todos os eventos simples de [<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20#0) é igual a 1.

### 2.3 Espaços amostrais compostos

Quando o experimento tem duas etapas independentes com [<img src="media/image26.png" style="width:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20m%20#0) e [<img src="media/image62.png" />](https://www.codecogs.com/eqnedit.php?latex=%20n%20#0) resultados, o **princípio multiplicativo** fornece:

[<img src="media/image87.png" style="width:0.93056in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20n(%5COmega)%20%3D%20m%20%5Ccdot%20n%20#0)

Veja o exemplo abaixo: lançar uma moeda e um dado simultaneamente.

[<img src="media/image9.png" style="width:1.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20n(%5COmega)%20%3D%202%20%5Ctimes%206%20%3D%2012%20#0)

Probabilidade de sair cara **e** número par:

Casos favoráveis: [<img src="media/image114.png" style="width:3.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20(cara%2C%3B2)%2C%3B(cara%2C%3B4)%2C%3B(cara%2C%3B6)%20%3B%5CRightarrow%3B%20n(A)%20%3D%203%20#0)

[<img src="media/image49.png" style="width:0.79167in;height:0.33333in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%3D%20%5Cfrac%7B3%7D%7B12%7D%20#0)

[<img src="media/image109.png" style="width:1.23611in;height:0.33333in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%3D%20%5Cfrac%7B1%7D%7B4%7D%20%3D%2025%25%20#0)

> 📐 **Fazendo as Contas:**\
> Urna com 4 bolas vermelhas e 6 azuis. Retirar azul: [<img src="media/image11.png" style="width:1.41667in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P%20%3D%20%5Cfrac%7B6%7D%7B10%7D%20%3D%20%5Cfrac%7B3%7D%7B5%7D%20%3D%2060%25%20#0).

## 3. Probabilidade e frequência relativa

### 3.1 Frequência relativa como estimativa

Quando os resultados não são equiprováveis — ou a probabilidade teórica é desconhecida — a **frequência relativa** estima a probabilidade:

[<img src="media/image34.png" style="width:0.79167in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20f_r(A)%20%3D%20%5Cfrac%7Bf%7D%7BN%7D%20#0)

onde [<img src="media/image40.png" style="height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=%20f%20#0) é o número de ocorrências de [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0) e [<img src="media/image33.png" style="width:0.125in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20N%20#0) é o total de repetições. Quanto maior [<img src="media/image33.png" style="width:0.125in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20N%20#0), mais [<img src="media/image25.png" style="width:0.125in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=%20f_r%20#0) se aproxima da probabilidade real (**Lei dos Grandes Números**).

Olhe o exemplo abaixo: uma moeda lançada 200 vezes resultou em 94 caras.

[<img src="media/image71.png" style="width:1.61111in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20f_r(%5Cmathrm%7Bcara%7D)%20%3D%20%5Cfrac%7B94%7D%7B200%7D%20%3D%2047%25%20#0)

| [<img src="media/image33.png" style="width:0.125in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20N%20#0) | **Caras** | [<img src="media/image25.png" style="width:0.125in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=%20f_r%20#0) |
|----|----|----|
| 10 | 6 | 60% |
| 100 | 53 | 53% |
| 1.000 | 498 | 49,8% |
| 10.000 | 5.003 | 50,03% |

### 3.2 Quando usar cada abordagem

- **Resultados equiprováveis e** [<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20#0) **conhecido** → fórmula clássica;

- **Resultados não equiprováveis ou** [<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20#0) **desconhecido** → frequência relativa.

> ⏸️ **Pare e Pense:**\
> Para calcular a probabilidade de chover amanhã, qual abordagem faz mais sentido?

## NA VIDA REAL

Plataformas de streaming calculam a chance de você gostar de um filme com base no histórico de milhões de usuários com perfil semelhante — frequência relativa aplicada em escala massiva.

## E A BÍBLIA NISSO?

> "O coração do homem planeja o seu caminho, mas o Senhor lhe dirige os passos." Provérbios 16:9

Calcular probabilidades é reconhecer que nem tudo está sob nosso controle — e ainda assim agir com sabedoria. A Matemática quantifica as chances; a fé orienta as decisões quando os números não bastam.

- **Planeje com humildade.** Conhecer a probabilidade de um resultado não elimina a incerteza — só ajuda a decidir melhor dentro dela. "Os planos bem elaborados levam à fartura" (Provérbios 21:5).

> 💬 **Para Conversar:**\
> Você já tomou uma decisão importante sabendo que tinha chance de dar errado? O que pesou mais — o cálculo ou a confiança?

## Simplificando

O espaço amostral organiza todos os resultados possíveis; a probabilidade clássica mede a proporção entre os casos favoráveis e esse total. Quando os resultados não são igualmente prováveis, a frequência relativa substitui a fórmula — e quanto maior o número de repetições, mais confiável a estimativa.

## Para não esquecer

- **Espaço amostral** [<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20#0): conjunto de todos os resultados possíveis — [<img src="media/image38.png" style="width:0.33333in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20n(%5COmega)%20#0) é sua cardinalidade;

- **Probabilidade clássica:** [<img src="media/image18.png" style="width:0.97222in;height:0.40278in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%3D%20%5Cfrac%7Bn(A)%7D%7Bn(%5COmega)%7D%20#0) — válida apenas para resultados equiprováveis;

- **Frequência relativa:** [<img src="media/image85.png" style="width:0.52778in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20f_r%20%3D%20%5Cfrac%7Bf%7D%7BN%7D%20#0) — estimativa empírica que se aproxima da probabilidade real com grandes amostras.

# Capítulo 2 — Eventos Complementares

## Às vezes é mais fácil calcular o que não queremos

Em um concurso de redação com 30 inscritos, a professora quer saber a probabilidade de um aluno sorteado **não** ter tirado nota máxima. Ela poderia listar todos os que não tiraram — ou simplesmente subtrair de 1 a probabilidade de quem tirou. Um caminho é muito mais curto.

> 💭 **Pense um pouco:**\
> Se a chance de chover amanhã é 30%, qual a chance de **não** chover?

## 1. Evento complementar

O **complementar** de [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0), indicado por [<img src="media/image47.png" style="width:0.11111in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5Cbar%7BA%7D%20#0), é o conjunto de todos os resultados de [<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20#0) que não pertencem a [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0). Juntos, [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0) e [<img src="media/image47.png" style="width:0.11111in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5Cbar%7BA%7D%20#0) cobrem todo o espaço amostral sem se sobrepor:

[<img src="media/image66.png" style="width:1.86111in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%5Ccup%20%5Cbar%7BA%7D%20%3D%20%5COmega%20%5Cqquad%20A%20%5Ccap%20%5Cbar%7BA%7D%20%3D%20%5Cemptyset%20#0)

Veja o exemplo abaixo: ao lançar um dado, seja [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0) = "sair número par".

[<img src="media/image86.png" style="width:2.125in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%3D%20%7B2%2C%3B4%2C%3B6%7D%20%5Cqquad%20%5Cbar%7BA%7D%20%3D%20%7B1%2C%3B3%2C%3B5%7D%20#0)

Como [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0) e [<img src="media/image47.png" style="width:0.11111in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5Cbar%7BA%7D%20#0) cobrem todo [<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20#0), suas probabilidades somam 1:

[<img src="media/image105.png" style="width:3.5in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%2B%20P(%5Cbar%7BA%7D)%20%3D%201%20%5Cqquad%20%5CRightarrow%20%5Cqquad%20P(%5Cbar%7BA%7D)%20%3D%201%20-%20P(A)%20#0)

Olhe o exemplo abaixo: urna com 5 bolas brancas e 3 pretas. Probabilidade de **não** retirar branca:

[<img src="media/image10.png" style="width:1.06944in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Bbranca%7D)%20%3D%20%5Cfrac%7B5%7D%7B8%7D%20#0)

[<img src="media/image15.png" style="width:1.70833in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Coverline%7B%5Cmathrm%7Bbranca%7D%7D)%20%3D%201%20-%20%5Cfrac%7B5%7D%7B8%7D%20%3D%20%5Cfrac%7B3%7D%7B8%7D%20#0)

> 📈 **No Dia a Dia:**\
> "Probabilidade de não ser aprovado em um exame" é o complementar direto da taxa de aprovação.

## 2. Quando usar o complementar

O complementar é a estratégia mais eficiente quando contar os casos favoráveis é trabalhoso, mas contar os desfavoráveis é simples. Dois padrões sinalizam essa situação:

- o enunciado usa **"ao menos um"** ou **"pelo menos um"**;

- contar diretamente os casos favoráveis exige muitas combinações.

### 2.1 O evento "ao menos um"

O complementar de "ao menos um" é "nenhum" — e "nenhum" costuma ser trivial de calcular.

Veja o exemplo abaixo: uma moeda é lançada 3 vezes. Probabilidade de sair **ao menos uma cara**.

O complementar é "nenhuma cara" — coroa nas 3 vezes:

[<img src="media/image102.png" style="width:1.02778in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=%20n(%5COmega)%20%3D%202%5E3%20%3D%208%20#0)

[<img src="media/image44.png" style="width:1.625in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Bnenhuma%3Bcara%7D)%20%3D%20%5Cfrac%7B1%7D%7B8%7D%20#0)

[<img src="media/image93.png" style="width:2.68056in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Bao%3Bmenos%3Buma%3Bcara%7D)%20%3D%201%20-%20%5Cfrac%7B1%7D%7B8%7D%20%3D%20%5Cfrac%7B7%7D%7B8%7D%20#0)

> 📐 **Fazendo as Contas:**\
> "Ao menos um par em 2 dados": [<img src="media/image79.png" style="width:2.05556in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Bnenhum%3Bpar%7D)%20%3D%20%5Cfrac%7B3%7D%7B6%7D%20%5Ccdot%20%5Cfrac%7B3%7D%7B6%7D%20%3D%20%5Cfrac%7B1%7D%7B4%7D%20#0), logo [<img src="media/image80.png" style="width:1.08333in;height:0.33333in" />](https://www.codecogs.com/eqnedit.php?latex=%20P%20%3D%201%20-%20%5Cfrac%7B1%7D%7B4%7D%20%3D%20%5Cfrac%7B3%7D%7B4%7D%20#0).

### 2.2 Espaços amostrais grandes

Olhe o exemplo abaixo: em um grupo de 4 pessoas, probabilidade de ao menos duas fazerem aniversário no mesmo mês.

Pelo complementar — "todas em meses diferentes":

[<img src="media/image58.png" style="width:2.80556in;height:0.33333in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Btodos%3Bdiferentes%7D)%20%3D%20%5Cfrac%7B12%7D%7B12%7D%20%5Ccdot%20%5Cfrac%7B11%7D%7B12%7D%20%5Ccdot%20%5Cfrac%7B10%7D%7B12%7D%20%5Ccdot%20%5Cfrac%7B9%7D%7B12%7D%20#0)

[<img src="media/image94.png" style="width:2.70833in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Btodos%3Bdiferentes%7D)%20%3D%20%5Cfrac%7B11880%7D%7B20736%7D%20%5Capprox%200%7B%2C%7D573%20#0)

[<img src="media/image41.png" style="width:4.05556in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Bao%3Bmenos%3Bdois%3Bno%3Bmesmo%3Bm%5Chat%7Be%7Ds%7D)%20%3D%201%20-%200%7B%2C%7D573%20%5Capprox%2042%7B%2C%7D7%25%20#0)

> 🕵️ **Caso Real:**\
> Engenheiros calculam a probabilidade de falha de um sistema como o complementar da probabilidade de funcionamento — é assim que se projeta redundância em aviões e usinas.

## NA VIDA REAL

Planos de saúde calculam a probabilidade de um segurado **não** precisar de internação — o complementar da taxa de hospitalização da faixa etária — para definir o valor do plano.

## E A BÍBLIA NISSO?

> "Há um caminho que parece certo ao homem, mas o seu fim são os caminhos da morte." Provérbios 14:12

Todo evento tem um lado oposto que também precisa ser considerado. Avaliar só as chances de sucesso sem calcular o risco do oposto é um erro tanto em probabilidade quanto nas decisões da vida.

- **Considere o outro lado antes de decidir.** Quem analisa apenas as chances de dar certo ignora os riscos reais; sabedoria é olhar os dois lados. "O prudente vê o perigo e busca refúgio; o inexperiente segue adiante e sofre as consequências" (Provérbios 27:12).

> 💬 **Para Conversar:**\
> Você já tomou uma decisão pensando só nas chances de dar certo, sem avaliar o que aconteceria se der errado? O que mudaria se você tivesse calculado o complementar?

## Simplificando

O complementar reúne tudo o que não é o evento — e a soma das duas probabilidades é sempre 1. Quando o evento direto é difícil de contar, calcule o complementar e subtraia de 1; essa estratégia é especialmente eficiente nos casos com "ao menos um".

## Para não esquecer

- **Complementar** [<img src="media/image47.png" style="width:0.11111in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5Cbar%7BA%7D%20#0): todos os resultados de [<img src="media/image108.png" style="height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20%5COmega%20#0) que não pertencem a [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0);

- **Fórmula:** [<img src="media/image110.png" style="width:1.26389in;height:0.18056in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cbar%7BA%7D)%20%3D%201%20-%20P(A)%20#0) — as probabilidades sempre somam 1;

- **"Ao menos um":** calcule [<img src="media/image78.png" style="width:0.81944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Bnenhum%7D)%20#0) e subtraia de 1.

# Capítulo 3 — União e Intersecção de Eventos

## E se dois eventos puderem acontecer ao mesmo tempo?

Em uma pesquisa com 40 alunos, 18 praticam futebol e 14 praticam natação. Um assistente somou 18 + 14 e respondeu: "32 alunos praticam algum dos dois." A diretora desconfiou — e tinha razão. Alguns alunos praticam os dois esportes, e somar direto os contou duas vezes.

> 💭 **Pense um pouco:**\
> Se 8 desses alunos praticam futebol **e** natação, quantos praticam pelo menos um dos dois?

## 1. União e intersecção

Dois eventos do mesmo espaço amostral podem se relacionar de duas formas fundamentais:

- **Intersecção** [<img src="media/image37.png" style="width:0.43056in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%5Ccap%20B%20#0) ("A e B"): resultados que pertencem **simultaneamente** a [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0) e a [<img src="media/image51.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20B%20#0);

- **União** [<img src="media/image64.png" style="width:0.43056in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%5Ccup%20B%20#0) ("A ou B"): resultados que pertencem **a pelo menos um** dos dois eventos.

Veja o exemplo abaixo: ao lançar um dado, [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0) = "par" e [<img src="media/image51.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20B%20#0) = "maior que 3".

[<img src="media/image95.png" style="width:2.125in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%3D%20%7B2%2C%3B4%2C%3B6%7D%20%5Cqquad%20B%20%3D%20%7B4%2C%3B5%2C%3B6%7D%20#0)

[<img src="media/image69.png" style="width:2.77778in;height:0.15278in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%5Ccap%20B%20%3D%20%7B4%2C%3B6%7D%20%5Cqquad%20A%20%5Ccup%20B%20%3D%20%7B2%2C%3B4%2C%3B5%2C%3B6%7D%20#0)

| **Operação** | **Notação** | **Inclui** |
|----|----|----|
| Intersecção | [<img src="media/image37.png" style="width:0.43056in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%5Ccap%20B%20#0) | Pertence aos dois |
| União | [<img src="media/image64.png" style="width:0.43056in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%5Ccup%20B%20#0) | Pertence a pelo menos um |

> 💡 **Você sabia?**\
> O símbolo [<img src="media/image52.png" />](https://www.codecogs.com/eqnedit.php?latex=%20%5Ccap%20#0) filtra o que é comum; o [<img src="media/image73.png" />](https://www.codecogs.com/eqnedit.php?latex=%20%5Ccup%20#0) reúne tudo — a forma visual de cada um ajuda a lembrar a diferença.

## 2. Probabilidade da união

Somar [<img src="media/image8.png" style="width:0.95833in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%2B%20P(B)%20#0) diretamente conta os elementos de [<img src="media/image37.png" style="width:0.43056in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%5Ccap%20B%20#0) duas vezes. A **fórmula de adição** corrige isso:

[<img src="media/image83.png" style="width:2.81944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccup%20B)%20%3D%20P(A)%20%2B%20P(B)%20-%20P(A%20%5Ccap%20B)%20#0)

Veja o exemplo abaixo: no lançamento de um dado, probabilidade de sair par **ou** maior que 3.

[<img src="media/image77.png" style="width:3.16667in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%3D%20%5Cfrac%7B3%7D%7B6%7D%20%5Cqquad%20P(B)%20%3D%20%5Cfrac%7B3%7D%7B6%7D%20%5Cqquad%20P(A%20%5Ccap%20B)%20%3D%20%5Cfrac%7B2%7D%7B6%7D%20#0)

[<img src="media/image74.png" style="width:1.68056in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccup%20B)%20%3D%20%5Cfrac%7B3%7D%7B6%7D%20%2B%20%5Cfrac%7B3%7D%7B6%7D%20-%20%5Cfrac%7B2%7D%7B6%7D%20#0)

[<img src="media/image31.png" style="width:2.04167in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccup%20B)%20%3D%20%5Cfrac%7B4%7D%7B6%7D%20%3D%20%5Cfrac%7B2%7D%7B3%7D%20%5Capprox%2066%7B%2C%7D7%25%20#0)

> 📐 **Fazendo as Contas:**\
> Pesquisa da introdução: [<img src="media/image55.png" style="width:2.91667in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(F%20%5Ccup%20N)%20%3D%20%5Cfrac%7B18%7D%7B40%7D%20%2B%20%5Cfrac%7B14%7D%7B40%7D%20-%20%5Cfrac%7B8%7D%7B40%7D%20%3D%20%5Cfrac%7B24%7D%7B40%7D%20%3D%2060%25%20#0).

### 2.1 Eventos mutuamente exclusivos

Quando [<img src="media/image107.png" style="width:0.75in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%5Ccap%20B%20%3D%20%5Cemptyset%20#0) — os eventos não podem ocorrer ao mesmo tempo — a fórmula simplifica:

[<img src="media/image39.png" style="width:1.90278in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccup%20B)%20%3D%20P(A)%20%2B%20P(B)%20#0)

Olhe o exemplo abaixo: "sair 1" e "sair 6" num dado são mutuamente exclusivos.

[<img src="media/image5.png" style="width:1.25in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%7B1%7D%20%5Ccup%20%7B6%7D)%20%3D%20%5Cfrac%7B1%7D%7B6%7D%20%2B%20%5Cfrac%7B1%7D%7B6%7D%20#0)

[<img src="media/image113.png" style="width:1.27778in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%7B1%7D%20%5Ccup%20%7B6%7D)%20%3D%20%5Cfrac%7B2%7D%7B6%7D%20%3D%20%5Cfrac%7B1%7D%7B3%7D%20#0)

> ⏸️ **Pare e Pense:**\
> "Sair número par" e "sair número primo" num dado são mutuamente exclusivos?

## 3. Probabilidade da intersecção

### 3.1 Eventos independentes

Dois eventos são **independentes** quando a ocorrência de um não altera a probabilidade do outro:

[<img src="media/image84.png" style="width:1.81944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccap%20B)%20%3D%20P(A)%20%5Ccdot%20P(B)%20#0)

Veja o exemplo abaixo: probabilidade de sair cara **e** número 5 ao lançar uma moeda e um dado.

[<img src="media/image35.png" style="width:1.90278in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Bcara%7D)%20%3D%20%5Cfrac%7B1%7D%7B2%7D%20%5Cqquad%20P(5)%20%3D%20%5Cfrac%7B1%7D%7B6%7D%20#0)

[<img src="media/image6.png" style="width:1.40278in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Bcara%7D%20%5Ccap%205)%20%3D%20%5Cfrac%7B1%7D%7B2%7D%20%5Ccdot%20%5Cfrac%7B1%7D%7B6%7D%20#0)

[<img src="media/image27.png" style="width:1.23611in;height:0.33333in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(%5Cmathrm%7Bcara%7D%20%5Ccap%205)%20%3D%20%5Cfrac%7B1%7D%7B12%7D%20#0)

### 3.2 Eventos dependentes

Quando a ocorrência de [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0) altera a probabilidade de [<img src="media/image51.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20B%20#0), os eventos são **dependentes** — o que acontece, por exemplo, em retiradas sem reposição.

Olhe o exemplo abaixo: urna com 4 bolas vermelhas e 6 azuis. Duas retiradas sem reposição. Probabilidade de ambas serem vermelhas.

[<img src="media/image21.png" style="width:2.18056in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A)%20%3D%20%5Cfrac%7B4%7D%7B10%7D%20%5Cqquad%20P(B%3B%7C%3BA)%20%3D%20%5Cfrac%7B3%7D%7B9%7D%20#0)

[<img src="media/image98.png" style="width:1.34722in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccap%20B)%20%3D%20%5Cfrac%7B4%7D%7B10%7D%20%5Ccdot%20%5Cfrac%7B3%7D%7B9%7D%20#0)

[<img src="media/image42.png" style="width:2.20833in;height:0.34722in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccap%20B)%20%3D%20%5Cfrac%7B12%7D%7B90%7D%20%3D%20%5Cfrac%7B2%7D%7B15%7D%20%5Capprox%2013%7B%2C%7D3%25%20#0)

> 📊 **Nos Números:**\
> Em sorteios sem reposição como a Mega-Sena, cada número extraído altera as probabilidades dos seguintes — todos os eventos são dependentes.

## NA VIDA REAL

Sistemas de segurança digital verificam localização, dispositivo e horário simultaneamente — a liberação de acesso é a intersecção de múltiplos eventos independentes, todos com alta probabilidade de ser legítimos.

## E A BÍBLIA NISSO?

> "Dois são melhor do que um, porque têm boa recompensa no seu trabalho." Eclesiastes 4:9

A união de eventos mostra que considerar mais de uma possibilidade amplia os resultados — mas a fórmula também lembra que sobrepor esforços sem coordenação gera dupla contagem, não ganho real.

- **Coordene antes de somar.** Assim como [<img src="media/image54.png" style="width:0.68056in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccup%20B)%20#0) desconta o que foi contado duas vezes, trabalhar em equipe exige identificar o que é realmente complementar, não apenas redundante. "Planos fracassam por falta de conselho, mas com muitos conselheiros são bem-sucedidos" (Provérbios 15:22).

> 💬 **Para Conversar:**\
> Em um trabalho em grupo, duas pessoas fizeram a mesma parte sem combinar. Como a ideia de intersecção ajuda a evitar esse problema?

## Simplificando

A união reúne tudo que pertence a pelo menos um evento; a intersecção filtra o que pertence aos dois. A fórmula de adição corrige a dupla contagem subtraindo a intersecção — e quando os eventos são mutuamente exclusivos essa subtração é zero. Para eventos independentes, a probabilidade da intersecção é o produto das probabilidades individuais.

## Para não esquecer

- **União** [<img src="media/image64.png" style="width:0.43056in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%5Ccup%20B%20#0): resultados em [<img src="media/image67.png" style="width:0.11111in;height:0.125in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20#0) **ou** [<img src="media/image51.png" style="width:0.11111in;height:0.11111in" />](https://www.codecogs.com/eqnedit.php?latex=%20B%20#0) — fórmula: [<img src="media/image83.png" style="width:2.81944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccup%20B)%20%3D%20P(A)%20%2B%20P(B)%20-%20P(A%20%5Ccap%20B)%20#0);

- **Mutuamente exclusivos:** [<img src="media/image107.png" style="width:0.75in;height:0.13889in" />](https://www.codecogs.com/eqnedit.php?latex=%20A%20%5Ccap%20B%20%3D%20%5Cemptyset%20#0) — simplifica para [<img src="media/image39.png" style="width:1.90278in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccup%20B)%20%3D%20P(A)%20%2B%20P(B)%20#0);

- **Independentes:** [<img src="media/image84.png" style="width:1.81944in;height:0.16667in" />](https://www.codecogs.com/eqnedit.php?latex=%20P(A%20%5Ccap%20B)%20%3D%20P(A)%20%5Ccdot%20P(B)%20#0) — ocorrência de um não afeta o outro.
