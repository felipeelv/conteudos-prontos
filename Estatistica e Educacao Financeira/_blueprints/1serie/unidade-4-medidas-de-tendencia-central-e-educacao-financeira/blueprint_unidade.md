# Blueprint Técnico da Unidade — Unidade 4: Medidas de Tendência Central e Educação Financeira

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 1ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: Medidas de tendência central formalizadas e aplicações de proporcionalidade e juros simples em educação financeira.
- Recorte geral: consolidar média, mediana e moda com notação formal, introduzir média ponderada e mediana em dados agrupados, e aplicar razão, proporção, acréscimos, descontos e juros simples a decisões financeiras reais.
- Capítulos previstos: 2
- Códigos BNCC: EM13MAT405; EM13MAT205
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/1serie/unidade-4-medidas-de-tendencia-central-e-educacao-financeira.md`

## 2. Nível do aluno
- Faixa etária aproximada: 15-17 anos
- Série/faixa: `Referencias/series.md` — seção **1ª e 2ª Série EM**
- Linguagem esperada: analítica, direta e formal o suficiente para usar notação estatística e financeira, sempre com glosa na primeira ocorrência.
- Grau de abstração: N3 predominante, com pontos N4 controlados na interpretação de assimetria, outliers e mediana em dados agrupados.
- Estratégia didática: partir de dados reais e situações financeiras concretas, formalizar a ferramenta, resolver exemplos passo a passo e interpretar o resultado antes de encerrar.
- Abertura narrativa: começar por uma decisão concreta, como escolher a medida mais honesta para resumir rendas ou calcular o custo real de um empréstimo; evitar iniciar com "Nesta unidade vamos estudar...".

## 3. Tom da unidade
- Técnico, aplicado e ético: a matemática deve aparecer como instrumento de leitura honesta da realidade.
- Estatística sem ingenuidade: média, mediana e moda são retratos diferentes do conjunto, não respostas intercambiáveis.
- Educação financeira como defesa prática: proporção, porcentagem e juros simples devem ajudar o aluno a ler contratos, promoções, boletos e orçamentos.
- Conexão VP sóbria: Integridade entra como compromisso com medir, representar e calcular sem distorcer.

## 4. Profundidade geral
- Nível predominante: N3
- Núcleos N3 da unidade: média aritmética simples e ponderada; mediana em dados ordenados; moda; comparação entre medidas; razão e proporção; regra de três; fatores de aumento e desconto; juros simples e montante.
- Núcleo N4 pontual: mediana em dados agrupados por interpolação e leitura qualitativa de assimetria.
- Referência operacional: `Referencias/niveis_profundidade.md`
- Limite de densidade: formalizar o necessário para 1ª Série EM sem antecipar dispersão, juros compostos formais ou inferência estatística.

## 5. Regras gerais transversais
- Usar notação padrão: `\bar{x}`, `\bar{x}_{p}`, `Md`, `Mo`, `F_{ant}`, `f_{Md}`, `J`, `C`, `i`, `t` e `M`.
- Explicar a notação na primeira ocorrência e voltar imediatamente a exemplos numéricos.
- Todo cálculo deve terminar com interpretação em linguagem natural: "isso significa que...".
- Distinguir procedimento mecânico de decisão interpretativa: calcular a média não basta quando há outliers ou assimetria.
- Em finanças, exigir coerência de unidades: taxa mensal com tempo em meses, taxa anual com tempo em anos.
- Usar dinheiro em reais com cuidado editorial: valores plausíveis, contexto explícito e arredondamento justificado.
- Preferir exemplos brasileiros: boletim com pesos, PNAD/renda, salário mínimo, orçamento familiar, empréstimo simples e desconto comercial.
- Marcadores em listas: hífen `-`.
- Usar LaTeX compatível com AutoLaTeX/CodeCogs.

## 6. Escopo proibido geral (NÃO ANTECIPAR)
- Variância, desvio padrão, coeficiente de variação e medidas de dispersão formais.
- Juros compostos formais com `M = C(1+i)^n`.
- Comparação algébrica completa entre juros simples e compostos.
- Inflação com fórmula de Fisher.
- Inferência estatística, intervalo de confiança, teste de hipótese ou regressão.
- Distribuição normal formal, escore-z ou cálculo de probabilidade sob a curva.
- Matemática financeira avançada: equivalência de capitais, séries de pagamento, amortização, SAC, Price ou CET detalhado.

## 7. Conexão VP da unidade
- Unidade VP: U4 — Integridade
- Tema VP: coerência interior-exterior; honestidade como prática.
- Personagem bíblico: Daniel (Dn 1, 3, 6)
- Versículos-âncora: Provérbios 10:9; Lucas 16:10
- Conexão temática: medir bem e calcular bem são formas de respeitar a realidade. Uma média escolhida para esconder desigualdade ou um juro ignorado em contrato ferem a integridade porque trocam clareza por conveniência.

## 8. Hierarquia de autoridade para o Autor
- Estrutura editorial do capítulo, nomes de seções e formato de boxes → manual editorial da disciplina, quando disponível.
- Tom, ritmo e densidade → `Referencias/series.md` para 1ª Série EM.
- Profundidade dos tópicos → `Referencias/niveis_profundidade.md` + pesos definidos nos blueprints.
- Objetivos e indicadores → `Referencias/objetivos_aprendizagem.md`.
- Conteúdo factual, fórmulas, referências, VP, escopo e limites → este blueprint e os blueprints de capítulo.
- Onde houver conflito entre modelo genérico e framework da unidade → vence o framework da unidade.
- Onde houver risco de antecipar Unidade 5 ou Unidade 6 → vence o escopo proibido.

## 9. Distribuição dos capítulos

| Capítulo | Título | Coração conceitual | Referência | VP específico |
|---|---|---|---|---|
| 1 | Medidas de Tendência Central | média simples e ponderada, mediana, moda, agrupados, outliers e assimetria | Carl Friedrich Gauss | mostrar a medida certa para não distorcer a história dos dados |
| 2 | Educação Financeira: Proporcionalidade e Juros | razão, proporção, regra de três, fatores percentuais, juros simples, montante e orçamento | Mário Henrique Simonsen | calcular antes de aceitar, assinar ou prometer |

## 10. Ganchos transversais
- NA VIDA REAL: média ponderada do boletim; mediana da renda do brasileiro; moda no comércio; empréstimo de R$ 5.000 a 3% a.m.; acréscimos e descontos sucessivos; orçamento pessoal e familiar.
- E A BÍBLIA NISSO?: Provérbios 11:1 no Capítulo 1; Provérbios 22:7 no Capítulo 2; Provérbios 10:9 e Lucas 16:10 como âncoras da unidade.
- Pense um pouco: qual medida resume melhor um conjunto com valores extremos? O que muda quando a taxa e o tempo não estão na mesma unidade? Uma promoção com desconto sucessivo é igual à soma dos percentuais?
- Simplificando: medidas de tendência central resumem dados; proporcionalidade e juros simples traduzem relações financeiras em cálculo verificável.
- Pergunta final de unidade: "Que decisão fica mais íntegra quando os dados são medidos corretamente e o dinheiro é calculado antes de ser gasto?"

## 11. Critérios de aceite da unidade
A unidade está adequada se:
- todos os 2 capítulos têm blueprint individual salvo no mesmo diretório deste arquivo;
- nenhum arquivo foi salvo em `blueprints/`, `PIPELINE_CONTEUDO/PLANEJADOR/`, `teste_unidade-3-coordenadas-e-solo/` ou diretamente em `Blueprint/`;
- todos os arquivos estão em `Blueprint/Estatistica e Educacao Financeira/1serie/unidade-4-medidas-de-tendencia-central-e-educacao-financeira/`;
- o Capítulo 1 formaliza média simples, média ponderada, mediana, moda e mediana em dados agrupados;
- o Capítulo 1 compara média, mediana e moda em presença de outliers e assimetria, sem antecipar medidas de dispersão;
- o Capítulo 2 consolida razão, proporção, regra de três, fatores de aumento/desconto, juros simples e montante;
- o Capítulo 2 não ensina juros compostos formais;
- cada capítulo traz objetivos e indicadores observáveis alinhados a EM13MAT405 e/ou EM13MAT205;
- as referências Gauss e Simonsen são preservadas nos capítulos correspondentes;
- a conexão VP aparece como reflexão complementar, sem substituir o ensino matemático.

## 12. Referências
- Framework de unidade: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/1serie/unidade-4-medidas-de-tendencia-central-e-educacao-financeira.md`
- Expectativas por série: `Referencias/series.md`
- Escala de profundidade: `Referencias/niveis_profundidade.md`
- Objetivos e indicadores: `Referencias/objetivos_aprendizagem.md`
- BNCC: EM13MAT405; EM13MAT205
- Gauss, C. F. (1809). *Theoria Motus Corporum Coelestium*.
- Simonsen, M. H.; Rocha, A. C. *Matemática Financeira*.
