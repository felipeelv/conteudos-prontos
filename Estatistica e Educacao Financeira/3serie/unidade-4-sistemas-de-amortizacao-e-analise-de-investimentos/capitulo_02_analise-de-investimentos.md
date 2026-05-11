# Capítulo 2 — Análise de Investimentos

## Quanto vale hoje o dinheiro de amanhã?

Você está prestes a fazer 18 anos. A herança da avó deixou R$ 50.000. Dois projetos:

- **A** — empréstimo a um primo, retorno R$ 60.000 em 1 ano;
- **B** — cooperativa de cacau, R$ 120.000 em 5 anos.

B retorna o dobro. Mas R$ 60.000 hoje não vale o mesmo que R$ 60.000 daqui a 5 anos.

> 💭 **Pense um pouco:**  
> Você prefere receber menos logo ou mais depois? Que cálculo decide?

---

## 1. Fluxos no Tempo

Toda decisão de investimento compara dinheiro em datas diferentes — e dinheiro em datas diferentes não pode ser somado direto.

### 1.1 Fluxo de caixa e taxa de desconto

- $$I_0$$: investimento inicial (saída no período zero);
- $$FC_k$$: fluxo de caixa no período $$k$$;
- **taxa de desconto** ($$r$$): "traz" valores futuros até o presente.

> Projetos: ambos têm $$I_0 = 50.000$$. A: $$FC_1 = 60.000$$. B: $$FC_5 = 120.000$$.

### 1.2 Custo de oportunidade

O **custo de oportunidade** é o retorno da melhor alternativa deixada de lado — vira a **taxa mínima exigida** ($$r$$).

Em 2026, Selic ~14,75% a.a. é o piso prático. Vamos usar r = 10% a.a. (simplificado) para os projetos.

> 💡 **Você sabia?**  
> Joel Dean popularizou o VPL como critério empresarial em *Capital Budgeting* (1951) — antes disso, decisões de investimento eram em grande parte qualitativas.

---

## 2. Valor Presente Líquido

O **VPL** é a soma dos fluxos futuros trazidos ao presente, menos o investimento inicial.

### 2.1 Como calcular

$$ VPL = -I_0 + \sum_{k=1}^{n} \frac{FC_k}{(1+r)^k} $$

> A (r = 10%): $$VPL_A = -50.000 + \frac{60.000}{1{,}10} = 4.545$$.

> B (r = 10%): $$VPL_B = -50.000 + \frac{120.000}{(1{,}10)^5} = 24.510$$.

Mesmo recebendo daqui a 5 anos, B cria mais valor presente.

### 2.2 Critério de decisão

- **VPL > 0** → cria valor (aceitar);
- **VPL = 0** → indiferente;
- **VPL < 0** → destrói valor (rejeitar).

Em **projetos mutuamente exclusivos**, o critério é o **maior VPL** — não a maior taxa isolada.

---

## 3. TIR e Payback

VPL é o critério principal; TIR e payback completam a análise.

### 3.1 TIR como taxa de empate

A **TIR** é a taxa de desconto que faz $$VPL = 0$$:

$$ 0 = -I_0 + \sum_{k=1}^{n} \frac{FC_k}{(1+\mathrm{TIR})^k} $$

> A: $$\mathrm{TIR} = 60.000/50.000 - 1 = 0{,}20$$ (20% a.a.). B: ~19,1% a.a.

### 3.2 Payback simples e descontado

- **Payback simples**: tempo para recuperar somando fluxos nominais;
- **Payback descontado**: soma fluxos trazidos ao presente.

$$ \sum_{k=1}^{T} \frac{FC_k}{(1+r)^k} \geq I_0 $$

> A: payback 1 ano. B: payback 5 anos. Simples ignora o custo de oportunidade do tempo; descontado corrige isso, mas nenhum mede valor após a recuperação.

---

## 4. Comparando Alternativas

VPL, TIR e payback nem sempre apontam na mesma direção.

### 4.1 Quando os critérios discordam

| Critério | A | B | Vencedor |
|:---|---:|---:|:---:|
| **VPL** (10% a.a.) | 4.545 | 24.510 | B |
| **TIR** | 20% | 19,1% | A |
| **Payback** | 1 ano | 5 anos | A |

Discordância vem da **escala** e do **prazo**: A tem TIR maior mas devolve pouco em valor absoluto; B tem TIR ligeiramente menor mas cria muito mais valor total.

Regra consagrada: **em projetos mutuamente exclusivos, o VPL prevalece**. TIR e payback são complementares.

### 4.2 Comprar, alugar ou investir

A análise por fluxo descontado aplica-se também a decisões pessoais:

- comprar imóvel × alugar e investir a diferença;
- pagar faculdade à vista × parcelar e investir o resto;
- abrir negócio × manter o capital aplicado.

Estrutura padrão:

1. mapear o **fluxo de caixa completo**;
2. escolher a **taxa de desconto** pelo custo de oportunidade;
3. calcular o **VPL** das alternativas;
4. complementar com **TIR e payback**;
5. decidir pelo **maior VPL**, ajustando ao perfil de risco.

> 📊 **Nos Números:**  
> Empresas brasileiras de médio e grande porte usam VPL como principal critério de aprovação — BNDES e instituições financeiras exigem análise por fluxo descontado em pleitos de financiamento.

---

## NA VIDA REAL

Carreira, faculdade, pequeno negócio, imóvel — todos respondem à mesma matemática: comparar fluxos descontados. Retorno nominal mais alto não é necessariamente a melhor escolha.

---

## E A BÍBLIA NISSO?

> "Quem é fiel no pouco também é fiel no muito." (Lucas 16:10)

Integridade matemática é aceitar a resposta do cálculo, mesmo quando contraria o instinto; inventar justificativas para fugir do VPL é abandonar a fidelidade nos pequenos números.

- **Aceite o que o cálculo mostra.** Decisão íntegra usa o critério certo (maior VPL em projetos exclusivos), mesmo quando o impulso aponta para outra escolha (Lucas 16:10).

> 💬 **Para Conversar:**  
> Que decisão da sua vida você tomaria diferente hoje se confiasse mais no cálculo do que no impulso?

---

## Simplificando

VPL traz todos os fluxos a hoje, TIR encontra a taxa de empate e payback mede o tempo de recuperação — três ferramentas que transformam projeções nominais em decisões baseadas em valor real.

---

## Para não esquecer

- **VPL é o critério principal:** $$VPL > 0$$ cria valor — em projetos exclusivos, o maior VPL vence;
- **TIR é a taxa de empate:** mostra retorno relativo, mas pode discordar do VPL em escolhas exclusivas;
- **Payback simples ignora o tempo:** descontado corrige, mas nenhum substitui o VPL.
