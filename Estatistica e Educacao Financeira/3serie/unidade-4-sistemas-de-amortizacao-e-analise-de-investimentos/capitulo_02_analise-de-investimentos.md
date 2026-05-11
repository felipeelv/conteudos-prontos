# Capítulo 2 — Análise de Investimentos

## Quanto vale hoje o dinheiro de amanhã?

Você está prestes a fazer 18 anos. Seus pais te chamam: a herança da avó deixou R$ 50.000. Há duas opções:

- **Projeto A** — emprestar para um primo abrir uma loja, retorno de R$ 60.000 em 1 ano;
- **Projeto B** — cooperativa de cacau, devolve R$ 120.000 em 5 anos.

À primeira vista, B retorna o dobro. Mas R$ 60.000 hoje não vale o mesmo que R$ 60.000 daqui a 5 anos.

> 💭 **Pense um pouco:**  
> Você prefere receber menos logo ou mais depois? Que cálculo decide?

---

## 1. Fluxos no Tempo

Toda decisão de investimento compara dinheiro em datas diferentes — e dinheiro em datas diferentes não pode ser somado direto.

### 1.1 Fluxo de caixa e taxa de desconto

Elementos básicos:

- $$I_0$$: investimento inicial (saída no período zero);
- $$FC_k$$: fluxo de caixa no período $$k$$;
- **taxa de desconto** ($$r$$): "traz" valores futuros até o presente.

> Projetos: ambos têm $$I_0 = 50.000$$. A: $$FC_1 = 60.000$$. B: $$FC_5 = 120.000$$.

### 1.2 Custo de oportunidade

O **custo de oportunidade** é o retorno da melhor alternativa deixada de lado — vira a **taxa mínima exigida** ($$r$$). Ninguém aceita projeto que renda menos que aplicação segura disponível.

Em 2026, Selic ~14,75% a.a. é o piso prático. Abaixo disso, melhor Tesouro Selic. Vamos usar r = 10% a.a. (cenário simplificado) para os projetos.

> 💡 **Você sabia?**  
> Joel Dean, economista norte-americano, popularizou o uso do VPL como critério empresarial em seu livro *Capital Budgeting* (1951) — antes disso, decisões de investimento eram em grande parte qualitativas.

---

## 2. Valor Presente Líquido

O **VPL** é a soma dos fluxos futuros trazidos ao presente, menos o investimento inicial.

### 2.1 Como calcular VPL

$$ VPL = -I_0 + \sum_{k=1}^{n} \frac{FC_k}{(1+r)^k} $$

> Projeto A (r = 10%): $$VPL_A = -50.000 + \frac{60.000}{1{,}10} = -50.000 + 54.545 = 4.545$$.

> Projeto B (r = 10%): $$VPL_B = -50.000 + \frac{120.000}{(1{,}10)^5} = -50.000 + 74.510 = 24.510$$.

Mesmo recebendo daqui a 5 anos, B cria mais valor presente que A.

### 2.2 Critério de decisão

- **VPL > 0** → projeto cria valor (aceitar);
- **VPL = 0** → indiferente (rende exatamente a taxa exigida);
- **VPL < 0** → projeto destrói valor (rejeitar).

Em **projetos mutuamente exclusivos**: critério é o **maior VPL**, não a maior taxa isolada.

> 📐 **Fazendo as Contas:**  
> A 10% de desconto: $$VPL_A = R\$ 4.545$$ e $$VPL_B = R\$ 24.510$$ — B cria 5,4× mais valor que A.

---

## 3. TIR e Payback

VPL é o critério principal; a análise completa-se com TIR (taxa de empate) e payback (tempo de recuperação).

### 3.1 TIR como taxa de empate

A **TIR** é a taxa de desconto que faz $$VPL = 0$$:

$$ 0 = -I_0 + \sum_{k=1}^{n} \frac{FC_k}{(1+\mathrm{TIR})^k} $$

> Projeto A: $$0 = -50.000 + \frac{60.000}{1+\mathrm{TIR}}$$ → $$\mathrm{TIR} = 0{,}20$$ (20% a.a.).

> Projeto B: TIR ≈ **19,1% a.a.** (iguala 120.000 em 5 anos aos 50.000 iniciais).

### 3.2 Payback simples e descontado

- **Payback simples**: tempo para recuperar o investimento somando fluxos nominais;
- **Payback descontado**: soma os fluxos já trazidos ao presente:

$$ \sum_{k=1}^{T} \frac{FC_k}{(1+r)^k} \geq I_0 $$

> A: payback 1 ano. B: payback 5 anos. Payback simples ignora o custo de oportunidade do tempo — descontar corrige isso, mas nenhum mede valor após a recuperação.

> ⏸️ **Pare e Pense:**  
> Se $$\mathrm{TIR}_A = 20\%$$ e $$\mathrm{TIR}_B = 19{,}1\%$$, mas $$VPL_B$$ é 5,4× maior, qual critério deve decidir?

---

## 4. Comparando Alternativas

VPL, TIR e payback nem sempre apontam na mesma direção — saber qual critério pesar é parte da análise.

### 4.1 Quando os critérios discordam

| Critério | Projeto A | Projeto B | Vencedor |
|:---|---:|---:|:---:|
| **VPL** (a 10% a.a.) | 4.545 | 24.510 | B |
| **TIR** | 20% | 19,1% | A |
| **Payback** | 1 ano | 5 anos | A |

A discordância vem da **escala** e do **prazo**. A tem TIR maior mas devolve pouco em valor absoluto; B tem TIR ligeiramente menor mas cria muito mais valor total.

Regra consagrada: **em projetos mutuamente exclusivos, o VPL prevalece**. TIR e payback são informações complementares — não critérios isolados.

### 4.2 Comprar, alugar ou investir

A análise por fluxo descontado aplica-se a decisões além de empresas:

- comprar imóvel × alugar e investir a diferença;
- pagar faculdade à vista × parcelar e investir o que sobra;
- abrir pequeno negócio × manter o capital aplicado.

Estrutura padrão:

1. mapear o **fluxo de caixa completo** (entradas e saídas em cada período);
2. escolher a **taxa de desconto** pelo custo de oportunidade real;
3. calcular o **VPL** das alternativas;
4. complementar com **TIR e payback** para entender escala e tempo;
5. decidir pelo **maior VPL**, ajustando ao perfil de risco aceitável.

> 📊 **Nos Números:**  
> Empresas brasileiras de médio e grande porte usam VPL como principal critério de aprovação de projetos — BNDES e instituições financeiras exigem análise por fluxo descontado em pleitos de financiamento.

---

## NA VIDA REAL

Decisões de carreira, financiamento de faculdade, abertura de pequenos negócios e investimentos imobiliários respondem todos à mesma matemática: comparar fluxos descontados ao longo do tempo. Em todos, retorno nominal mais alto não é necessariamente a melhor escolha — quem ignora o desconto temporal aceita ganhos aparentes que viram perdas reais.

---

## E A BÍBLIA NISSO?

> "Quem é fiel no pouco também é fiel no muito." (Lucas 16:10)

Integridade matemática é aceitar a resposta do cálculo, mesmo quando contraria o instinto. Quando o VPL aponta para um caminho e a preferência pessoal para outro, inventar justificativas é abandonar a fidelidade nos pequenos números — e o muito que vem depois.

- **Aceite o que o cálculo mostra.** Decisão íntegra usa o critério certo (maior VPL em projetos exclusivos), mesmo quando o impulso aponta para outra escolha (Lucas 16:10).

> 💬 **Para Conversar:**  
> Que decisão da sua vida você tomaria diferente hoje se confiasse mais no cálculo do que no impulso?

---

## Simplificando

VPL traz todos os fluxos a hoje, TIR encontra a taxa de empate e payback mede o tempo de recuperação — três ferramentas que transformam projeções nominais em decisões baseadas em valor real.

---

## Para não esquecer

- **VPL é o critério principal:** $$VPL > 0$$ cria valor — em projetos mutuamente exclusivos, o maior VPL vence;
- **TIR é a taxa de empate:** mostra retorno relativo, mas pode discordar do VPL em escolhas exclusivas;
- **Payback simples ignora o tempo:** payback descontado corrige isso, mas nenhum substitui o VPL.
