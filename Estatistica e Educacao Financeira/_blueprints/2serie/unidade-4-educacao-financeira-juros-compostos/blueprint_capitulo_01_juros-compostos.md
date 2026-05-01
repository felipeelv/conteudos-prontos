# Blueprint Técnico — Capítulo 1: Juros Compostos

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 2ª Série EM
- Bimestre: 2º
- Unidade: 4 — Educação Financeira: Juros Compostos
- Capítulo: 1 de 2
- Título: Juros Compostos
- Códigos BNCC: EM13MAT511; EM13MAT302; EM13MAT405
- Profundidade geral: N3-N4

## 2. Objetivo do capítulo
Ensinar o aluno a reconhecer juros compostos como capitalização exponencial, deduzir e aplicar $$M = C(1+i)^{n}$$, calcular capital, juros, taxa e período, e comparar graficamente juros simples e compostos.

## 3. Pergunta-problema
*"Por que R$ 1.000 aplicados a 1% ao mês por 30 anos não crescem como uma reta, mas como uma curva que dispara?"*

## 4. Tensão narrativa
Nos primeiros meses, juros simples e compostos parecem quase iguais. Com o passar do tempo, a diferença deixa de ser detalhe e vira outra ordem de grandeza. A tensão do capítulo é crescimento linear × crescimento exponencial.

## 5. Sequência conceitual obrigatória
1. Abrir com R$ 1.000 aplicados a 1% ao mês e comparar 12 meses e 30 anos.
2. Retomar juros simples como crescimento linear: juros calculados sempre sobre o capital inicial.
3. Definir capitalização composta: os juros incorporam-se ao capital antes do próximo período.
4. Construir tabela mês a mês: $$C$$, $$C(1+i)$$, $$C(1+i)^{2}$$, $$C(1+i)^{3}$$.
5. Generalizar para $$M = C(1+i)^{n}$$.
6. Identificar $$C$$ como valor presente e $$M$$ como valor futuro.
7. Calcular juros acumulados por $$J = M - C$$.
8. Isolar o capital: $$C = M/(1+i)^{n}$$.
9. Isolar a taxa: $$i = (M/C)^{1/n} - 1$$.
10. Isolar o período com logaritmo: $$n = \log(M/C)/\log(1+i)$$.
11. Relacionar $$M(n) = C(1+i)^{n}$$ à função exponencial.
12. Comparar gráfico e tabela de juros simples e compostos.
13. Fechar com taxa equivalente e o alerta: taxa proporcional não converte corretamente juros compostos.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Capitalização composta | 10% | N2 | Mostrar que cada período aplica a taxa sobre o acumulado. |
| Diferença simples × compostos | 10% | N3 | Usar tabela e gráfico para contrastar reta e curva. |
| Fórmula do montante $$M = C(1+i)^{n}$$ | 20% | N4 | Coração 1. Deduzir por composição período a período e aplicar em 3 problemas. |
| Capital e juros acumulados | 15% | N3 | Calcular valor presente e juros por diferença. |
| Cálculo de taxa e período | 20% | N4 | Coração 2. Isolar $$i$$ e $$n$$; usar logaritmos da 1ª Série EM. |
| Função exponencial | 15% | N3 | Interpretar $$M(n)$$ como função de base $$(1+i)>1$$. |
| Taxas equivalentes | 10% | N3 | Diferenciar equivalência composta de proporcionalidade simples. |

## 7. Conceitos obrigatórios
- Capitalização composta
- Juros simples
- Juros compostos
- Capital
- Valor presente
- Montante
- Valor futuro
- Taxa por período
- Período
- Juros acumulados
- Função exponencial
- Crescimento linear
- Crescimento exponencial
- Taxa equivalente
- Taxa proporcional

## 8. Termos a explicar com tradução curta
- **Capitalização composta:** regime em que os juros de cada período entram no capital antes do próximo cálculo.
- **Capital:** valor inicial aplicado, emprestado ou investido.
- **Valor presente:** outro nome para o capital observado hoje.
- **Montante:** valor final depois da capitalização.
- **Valor futuro:** outro nome para o montante esperado em uma data futura.
- **Taxa por período:** porcentagem de crescimento em cada mês, ano ou dia.
- **Taxa equivalente:** taxa em outro período que produz o mesmo montante.
- **Taxa proporcional:** divisão ou multiplicação direta da taxa; em juros compostos, não substitui a equivalência.

## 9. Fórmulas obrigatórias
Montante a juros compostos:

$$M = C(1+i)^{n}$$

Capital ou valor presente:

$$C = \frac{M}{(1+i)^{n}}$$

Juros acumulados:

$$J = M - C$$

Forma equivalente para os juros:

$$J = C[(1+i)^{n} - 1]$$

Tempo necessário:

$$n = \frac{\log(M/C)}{\log(1+i)}$$

Taxa por período:

$$i = \left(\frac{M}{C}\right)^{1/n} - 1$$

Comparação simples × compostos:

$$M_{\mathrm{simples}} = C(1 + i n)$$

$$M_{\mathrm{composto}} = C(1+i)^{n}$$

Taxa anual equivalente à mensal:

$$(1 + i_{a}) = (1 + i_{m})^{12}$$

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que juros compostos incidem sobre o saldo acumulado;
- que $$i$$ deve estar em decimal;
- que taxa e período precisam estar na mesma unidade;
- que $$M = C(1+i)^{n}$$ nasce da multiplicação repetida por $$(1+i)$$;
- que $$M(n) = C(1+i)^{n}$$ é função exponencial em $$n$$;
- que juros simples crescem linearmente e compostos crescem exponencialmente;
- que logaritmos permitem descobrir o tempo necessário;
- que taxa equivalente é a conversão correta em juros compostos;
- que a diferença entre simples e compostos cresce principalmente no longo prazo.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- ensinar aplicações específicas em detalhe; isso fica para o Capítulo 2;
- calcular Sistema Price ou SAC;
- ensinar VPL ou TIR;
- aplicar a fórmula de Fischer de taxa real;
- usar capitalização contínua como conteúdo operacional;
- discutir PGBL, VGBL ou previdência privada;
- transformar a comparação em análise avançada de risco de investimentos.

## 12. Linguagem esperada
- Referência operacional: Ensino Médio, 2ª Série.
- Densidade aritmética alta, com etapas explícitas.
- Cada exercício resolvido deve indicar dados: $$C$$, $$i$$, $$n$$, $$M$$.
- Usar "ao mês", "ao ano" e "por período" em texto corrido, fora do bloco LaTeX.
- Evitar frases vagas como "aplique a fórmula"; mostrar substituição e interpretação.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Juros Compostos`
- Pergunta-problema: `## Por que o tempo muda tanto o resultado?`
- Abertura narrativa: R$ 1.000 aplicados a 1% ao mês por 12 meses e por 30 anos, comparando juros simples e compostos.
- Para Conversar de intro: "Quando uma diferença pequena deixa de ser pequena?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Capitalização Composta
    - `### 1.1 Juros sobre juros`
    - `### 1.2 Do primeiro mês ao n-ésimo mês`
  - Bloco 2 — A Fórmula do Montante
    - `### 2.1 Montante, capital, taxa e período`
    - `### 2.2 Valor presente e juros acumulados`
  - Bloco 3 — Descobrindo Taxa e Tempo
    - `### 3.1 Quando a incógnita é a taxa`
    - `### 3.2 Quando a incógnita é o tempo`
  - Bloco 4 — Crescimento Exponencial
    - `### 4.1 Juros compostos como função exponencial`
    - `### 4.2 Reta ou curva: simples versus compostos`
- Sua Parte: resolver quatro problemas: calcular $$M$$, calcular $$C$$, calcular $$i$$ e calcular $$n$$.
- Curiosidade da Ciência: Jakob Bernoulli e a origem do número $$e$$ em estudos de juros compostos, sem usar capitalização contínua como fórmula.
- Enquanto isso...: Provérbios 10:9 como ponte para cada período contado com integridade.
- E para hoje...: antes de comparar rendimentos, conferir taxa, período e regime de capitalização.
- Esse foi o "cara": Jakob Bernoulli.
- Você já pensou nisso?: pequenas escolhas mensais se acumulam como uma função exponencial quando repetidas por anos.
- Simplificando: juros compostos multiplicam o saldo por $$(1+i)$$ a cada período.
- Para não esquecer: 5 bullets sobre capital, taxa, período, montante e crescimento exponencial.

## 14. Âncoras visuais/concretas
- Tabela mês a mês com capitalização de R$ 1.000 a 1% ao mês.
- Gráfico com juros simples como reta e juros compostos como curva.
- Linha do tempo marcando 1, 12, 60, 120 e 360 meses.
- Cartão de identificação dos dados: $$C$$, $$i$$, $$n$$ e $$M$$.
- Diagrama da multiplicação repetida por $$(1+i)$$.
- Comparador de taxa proporcional e taxa equivalente.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Provérbios 10:9.
- Ponteiro específico: a fórmula de juros compostos não aceita atalhos; cada período precisa ser contado.
- Conexão temática: pular um período, confundir taxa ou esconder etapa altera o resultado. A integridade aparece na fidelidade aos pequenos passos que compõem o total.

## 16. Critérios de aceite
O capítulo está adequado se:
- define capitalização composta com clareza;
- deduz $$M = C(1+i)^{n}$$ a partir de multiplicação repetida;
- calcula montante, capital, juros, taxa e período;
- usa logaritmos para isolar $$n$$;
- relaciona juros compostos a função exponencial;
- compara juros simples e compostos por tabela e gráfico;
- distingue taxa equivalente de taxa proporcional;
- não antecipa aplicações financeiras em detalhe, amortização, VPL, TIR ou taxa real formal.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **explicará** a diferença entre juros simples e compostos.
2. O aluno **aplicará** a fórmula $$M = C(1+i)^{n}$$ em problemas financeiros.
3. O aluno **calculará** capital, juros, taxa e período a partir das fórmulas inversas.
4. O aluno **interpretará** juros compostos como função exponencial.
5. O aluno **converterá** taxas usando equivalência composta.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Identifica se a taxa incide sobre o capital inicial ou sobre o saldo acumulado.
- Compara crescimento linear e exponencial.
- Explica por que a diferença cresce com o tempo.

**Para o objetivo 2:**
- Converte a taxa percentual para decimal.
- Identifica $$C$$, $$i$$ e $$n$$ no enunciado.
- Substitui corretamente os dados na fórmula do montante.

**Para o objetivo 3:**
- Usa $$C = M/(1+i)^{n}$$ para valor presente.
- Usa $$i = (M/C)^{1/n} - 1$$ para taxa.
- Usa $$n = \log(M/C)/\log(1+i)$$ para tempo.

**Para o objetivo 4:**
- Reconhece $$M(n) = C(1+i)^{n}$$ como função exponencial.
- Identifica a base $$(1+i)$$.
- Interpreta o gráfico como curva crescente acelerada.

**Para o objetivo 5:**
- Usa $$(1 + i_{a}) = (1 + i_{m})^{12}$$.
- Evita dividir taxa anual por 12 como regra geral.
- Justifica a diferença entre taxa proporcional e equivalente.

### Habilidades BNCC consolidadas no capítulo
- **EM13MAT511:** matemática financeira com juros compostos e taxas equivalentes.
- **EM13MAT302:** função exponencial como modelo de crescimento.
- **EM13MAT405:** modelagem de situações financeiras.

## 18. Referências
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/2serie/unidade-4-educacao-financeira-juros-compostos.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Referencias/series.md`
- `Referencias/niveis_profundidade.md`
- BNCC: EM13MAT511; EM13MAT302; EM13MAT405
- Jakob Bernoulli: estudos sobre juros compostos e limite associado ao número $$e$$.
