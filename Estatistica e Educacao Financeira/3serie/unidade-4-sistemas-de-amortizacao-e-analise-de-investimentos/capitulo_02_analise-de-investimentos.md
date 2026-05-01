# Capítulo 2 — Análise de Investimentos

## Quanto vale hoje o dinheiro de amanhã?

Você está prestes a fazer 18 anos e seus pais te chamam para conversar sobre o futuro: a herança da avó deixou R$ 50.000 disponíveis, e há duas formas de aplicar. Projeto A — emprestar para um primo abrir uma loja, com retorno acordado de R$ 60.000 em 1 ano. Projeto B — investir numa cooperativa de cacau, que devolve R$ 120.000 em 5 anos. À primeira vista, B retorna o dobro. Mas R$ 60.000 amanhã não vale o mesmo que R$ 60.000 daqui a 5 anos. Antes de qualquer assinatura, vem a pergunta da matemática financeira avançada: quanto vale hoje o dinheiro de amanhã?

> 💭 **Pense um pouco:**  
> Você prefere receber menos logo ou mais depois? Que cálculo decide?

---

## 1. Fluxos no Tempo

Toda decisão de investimento envolve comparar dinheiro em datas diferentes — e dinheiro em datas diferentes não pode ser somado diretamente.

### 1.1 Fluxo de caixa e taxa de desconto

Um **fluxo de caixa** é a sequência de entradas e saídas de dinheiro ao longo do tempo. Os elementos básicos:

- $$I_0$$: investimento inicial (saída no período zero);
- $$FC_k$$: fluxo de caixa no período $$k$$ (entrada ou saída).

A **taxa de desconto** ($$r$$) é a taxa usada para "trazer" valores futuros até o presente — ela mostra quanto vale hoje o dinheiro que entrará no futuro.

> Aplicando aos projetos: ambos têm $$I_0 = 50.000$$. O Projeto A tem $$FC_1 = 60.000$$ e termina; o Projeto B tem $$FC_5 = 120.000$$ e zero nos demais períodos.

### 1.2 Custo de oportunidade

O **custo de oportunidade** é o retorno da melhor alternativa deixada de lado. Em análise de investimentos, ele se torna a **taxa mínima exigida** ($$r$$) — ninguém aceita projeto que renda menos que uma aplicação segura disponível.

Em 2026, com Selic em torno de 14,75% ao ano, esse é o piso prático para investimento de risco — abaixo disso, é melhor comprar Tesouro Selic. Para os projetos da abertura, vamos usar uma taxa de desconto de 10% ao ano (cenário simplificado).

> 💡 **Você sabia?**  
> Joel Dean, economista norte-americano, popularizou o uso do VPL como critério empresarial em seu livro *Capital Budgeting* (1951) — antes disso, decisões de investimento eram em grande parte qualitativas.

---

## 2. Valor Presente Líquido

O **Valor Presente Líquido** (VPL) é a soma dos fluxos futuros trazidos a valor presente, menos o investimento inicial.

### 2.1 Como calcular VPL

A fórmula geral:

$$ VPL = -I_0 + \sum_{k=1}^{n} \frac{FC_k}{(1+r)^k} $$

Onde $$I_0$$ é o investimento inicial; $$FC_k$$ é o fluxo do período $$k$$; $$r$$ é a taxa de desconto; e $$n$$ é o horizonte do projeto.

> Projeto A com r = 10% ao ano:

$$ VPL_A = -50.000 + \frac{60.000}{(1{,}10)^1} $$

$$ VPL_A = -50.000 + 54.545 $$

$$ VPL_A = 4.545 $$

> Projeto B com r = 10% ao ano:

$$ VPL_B = -50.000 + \frac{120.000}{(1{,}10)^5} $$

$$ VPL_B = -50.000 + \frac{120.000}{1{,}6105} $$

$$ VPL_B = -50.000 + 74.510 $$

$$ VPL_B = 24.510 $$

Mesmo recebendo daqui a 5 anos, o Projeto B cria mais valor presente (R$ 24.510) que o Projeto A (R$ 4.545).

### 2.2 Critério de decisão

O critério pelo VPL é direto:

- **VPL > 0** → projeto cria valor (aceitar);
- **VPL = 0** → indiferente (rende exatamente a taxa exigida);
- **VPL < 0** → projeto destrói valor (rejeitar).

Em **projetos mutuamente exclusivos** (escolher um impede o outro), o critério é o **maior VPL** — não a maior taxa de retorno isolada.

> 📐 **Fazendo as Contas:**  
> A 10% de desconto: $$VPL_A = R\$ 4.545$$ e $$VPL_B = R\$ 24.510$$ — B cria 5,4× mais valor que A.

---

## 3. TIR e Payback

VPL é o critério principal, mas a análise se completa com TIR (taxa de empate) e payback (tempo de recuperação).

### 3.1 TIR como taxa de empate

A **Taxa Interna de Retorno** (TIR) é a taxa de desconto que faz o VPL ser exatamente zero:

$$ 0 = -I_0 + \sum_{k=1}^{n} \frac{FC_k}{(1+\mathrm{TIR})^k} $$

Em projetos pequenos, a TIR pode ser obtida algébricamente (1 fluxo) ou estimada por tentativa e interpolação.

> Projeto A — basta resolver:

$$ 0 = -50.000 + \frac{60.000}{1+\mathrm{TIR}} $$

$$ 1 + \mathrm{TIR} = \frac{60.000}{50.000} $$

$$ \mathrm{TIR} = 0{,}20 $$

A TIR do Projeto A é 20% ao ano.

> Projeto B — testando taxas até zerar o VPL:

A TIR do Projeto B fica próxima de **19,1%** ao ano — taxa que iguala 120.000 trazidos a valor presente em 5 anos aos 50.000 do investimento inicial.

### 3.2 Payback simples e descontado

O **payback simples** é o tempo para recuperar o investimento somando fluxos nominais. O **payback descontado** soma os fluxos já trazidos a valor presente:

$$ \sum_{k=1}^{T} \frac{FC_k}{(1+r)^k} \geq I_0 $$

> Aplicando aos projetos: A recupera em 1 ano (payback = 1); B recupera em 5 anos (payback = 5).

O payback simples ignora o custo de oportunidade do tempo — descontar os fluxos é o que dá um critério temporal mais honesto. Mas nem o payback descontado mede valor após a recuperação.

> ⏸️ **Pare e Pense:**  
> Se $$\mathrm{TIR}_A = 20\%$$ e $$\mathrm{TIR}_B = 19{,}1\%$$, mas $$VPL_B$$ é 5,4× maior que $$VPL_A$$, qual critério deve decidir?

---

## 4. Comparando Alternativas

VPL, TIR e payback nem sempre apontam na mesma direção — saber qual critério pesar é parte da análise.

### 4.1 Quando os critérios discordam

Comparando os dois projetos:

| Critério | Projeto A | Projeto B | Vencedor |
|:---|---:|---:|:---:|
| **VPL** (a 10% a.a.) | 4.545 | 24.510 | B |
| **TIR** | 20% | 19,1% | A |
| **Payback** | 1 ano | 5 anos | A |

A discordância vem da **escala** e do **prazo**. O Projeto A tem TIR maior, mas devolve pouco em valor absoluto. O Projeto B tem TIR ligeiramente menor, mas cria muito mais valor total.

A regra consagrada na literatura financeira: **em projetos mutuamente exclusivos, o VPL prevalece**. TIR e payback são informações complementares — não critérios de decisão isolados.

### 4.2 Comprar, alugar ou investir

A análise por fluxo descontado se aplica a decisões além de empresas:

- comprar imóvel × alugar e investir a diferença;
- pagar faculdade à vista × parcelar e investir o que sobra;
- abrir um pequeno negócio × manter o capital aplicado.

Em todas, a estrutura é a mesma:

1. mapear o **fluxo de caixa completo** da decisão (entradas e saídas em cada período);
2. escolher uma **taxa de desconto** baseada no custo de oportunidade real;
3. calcular o **VPL** das alternativas;
4. complementar com **TIR e payback** para entender escala e tempo;
5. decidir pelo **maior VPL**, ajustando ao perfil de risco aceitável.

> 📊 **Nos Números:**  
> Empresas brasileiras de médio e grande porte usam VPL como principal critério de aprovação de projetos — BNDES e instituições financeiras exigem análise por fluxo descontado em pleitos de financiamento.

---

## NA VIDA REAL

Decisões de carreira, financiamento de faculdade, abertura de pequenos negócios e investimentos imobiliários respondem todos à mesma matemática: comparar fluxos descontados ao longo do tempo. Em todos os casos, o retorno nominal mais alto não é necessariamente a melhor escolha — quem ignora o desconto temporal aceita ganhos aparentes que viram perdas reais.

---

## E A BÍBLIA NISSO?

> "Quem é fiel no pouco também é fiel no muito." (Lucas 16:10)

Integridade matemática é aceitar a resposta do cálculo, mesmo quando contraria o instinto. Quando o VPL aponta para um caminho e a preferência pessoal para outro, inventar justificativas é abandonar a fidelidade nos pequenos números — e o muito que vem depois.

- **Aceite o que o cálculo mostra.** Decisão íntegra usa o critério certo (maior VPL em projetos exclusivos), mesmo quando o impulso aponta para outra escolha (Lucas 16:10).

> 💬 **Para Conversar:**  
> Que decisão da sua vida você tomaria diferente hoje se confiasse mais no cálculo do que no impulso?

---

## Simplificando

VPL traz todos os fluxos a hoje, TIR encontra a taxa de empate e payback mede o tempo de recuperação — três ferramentas que, juntas, transformam projeções nominais em decisões baseadas em valor real.

---

## Para não esquecer

- **VPL é o critério principal:** $$VPL > 0$$ cria valor — em projetos mutuamente exclusivos, o maior VPL vence;
- **TIR é a taxa de empate:** mostra retorno relativo, mas pode discordar do VPL em escolhas exclusivas;
- **Payback simples ignora o tempo:** payback descontado corrige isso, mas nenhum substitui o VPL.
