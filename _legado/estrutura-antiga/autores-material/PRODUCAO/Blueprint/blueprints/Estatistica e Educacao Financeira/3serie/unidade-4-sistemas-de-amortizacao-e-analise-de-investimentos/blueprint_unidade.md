# Blueprint Técnico da Unidade — Unidade 4: Sistemas de Amortização e Análise de Investimentos

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 3ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: Sistemas de amortização Price, SAC e SAM; análise de investimentos por VPL, TIR e payback.
- Recorte geral: consolidar matemática financeira avançada como ferramenta de decisão em financiamentos e investimentos.
- Capítulos previstos: 2
- Códigos BNCC: EM13MAT511; EM13MAT302
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/3serie/unidade-4-sistemas-de-amortizacao-e-analise-de-investimentos.md`

## 2. Nível do aluno
- Faixa etária aproximada: 17-18 anos
- Série/faixa: Ensino Médio — 3ª Série
- Linguagem esperada: técnica e decisória, com glosa curta na primeira ocorrência de termos como amortização, saldo devedor, VPL, TIR, payback descontado, custo de oportunidade e SAM.
- Grau de abstração: simbólico-aplicado no Capítulo 1; formal-aplicado no Capítulo 2.
- Estratégia didática: situação real → tabela de fluxo → fórmula → cálculo → comparação → decisão justificada.
- Abertura narrativa: a menor parcela inicial pode esconder o maior custo total; o maior retorno nominal pode não ser o melhor investimento quando o tempo entra na conta.

## 3. Tom da unidade
- Matemático, prático e ético: o aluno deve calcular antes de assinar financiamento ou aceitar projeto.
- Rigoroso com tabelas e fluxos, sem transformar o material em apostila universitária de finanças.
- Decisório: cada técnica precisa responder a uma pergunta concreta.
- A conexão VP deve aparecer como reflexão complementar sobre integridade nos cálculos e nas escolhas, sem substituir o procedimento matemático.
- O Capítulo 1 compara sistemas de pagamento; o Capítulo 2 compara projetos de investimento.

## 4. Profundidade geral
- Nível predominante: N3-N4.
- Núcleos N4: montar tabelas de amortização com 5-12 períodos; calcular Price, SAC e SAM; calcular VPL para fluxos uniformes e não uniformes; estimar TIR por tentativa ou interpolação linear.
- Núcleos N3: interpretar juros, amortização, saldo devedor, custo total, payback simples, payback descontado e custo de oportunidade.
- Momentos N2: apresentar contexto de SFH, capital budgeting, custo de capital e alternativas de investimento sem aprofundamento técnico universitário.
- Limite de densidade: evitar CAPM, Monte Carlo, múltiplas TIRs, taxa variável no tempo e análise quantitativa de risco.

## 5. Regras gerais transversais
- Todo exercício resolvido deve seguir a sequência: enunciado → tabela de fluxo → identificação dos dados → cálculo → critério de decisão → interpretação.
- Em amortização, sempre decompor parcela em juros e amortização: $$PMT = J + A$$.
- Em sistemas Price, SAC e SAM, explicitar saldo devedor antes e depois do pagamento.
- Em análise de investimentos, sempre indicar investimento inicial, fluxos de caixa, taxa de desconto e unidade temporal.
- Taxas percentuais devem ser convertidas para decimal antes da substituição.
- Taxa e período precisam estar compatíveis.
- Projetos mutuamente exclusivos devem ser decididos por VPL, não apenas por TIR.
- Usar exemplos plausíveis: financiamento imobiliário, expansão de negócio, compra versus aluguel, faculdade pública versus particular.
- A conexão bíblica deve ser ancorada no conceito matemático: tabela completa, cálculo honesto, decisão coerente.
- Respeitar as regras LaTeX do framework: não usar `\text{}`, `\;`, `\,`, `\qquad`, `\quad`, `\ `, `\begin{array}` ou acentos dentro de `$$`.

## 6. Escopo proibido geral (NÃO ANTECIPAR)
- TIR múltiplas em fluxos com várias inversões de sinal.
- VPL com taxa de desconto variável no tempo.
- CAPM, beta, índice de Sharpe, Markowitz e análise quantitativa de risco.
- Modelagem por Monte Carlo.
- Fórmula de Fischer aplicada a taxa real.
- Duration, convexidade, prepayment e risco de taxa flutuante.
- Conselhos financeiros individualizados.

## 7. Conexão VP da unidade
- Unidade VP: U4 — Integridade
- Tema VP: integridade como coerência entre aparência, cálculo e decisão.
- Personagem bíblico do VP: Daniel.
- Versículos-âncora: Provérbios 10:9; Lucas 16:10.
- Conexão temática: VPL pergunta "vale a pena?", e integridade exige que a resposta seja honesta. Price pode caber melhor no começo, mas SAC costuma custar menos no total. Um projeto pode parecer atraente pelo retorno nominal, mas ter VPL negativo quando o custo de oportunidade entra na conta. Integridade financeira é fazer a conta completa, mesmo quando o resultado incomoda.

## 8. Hierarquia de autoridade para o Autor
- Estrutura editorial do capítulo, nomes de seções e formato dos boxes → manual editorial da disciplina, quando disponível.
- Tom, ritmo e densidade → expectativas de Ensino Médio, 3ª Série.
- Profundidade dos tópicos → `Referencias/niveis_profundidade.md` + pesos definidos nos blueprints.
- Objetivos e indicadores → `Referencias/objetivos_aprendizagem.md`.
- Conteúdo factual, BNCC, fórmulas, VP, referências e limites → este blueprint e os blueprints de capítulo.
- Onde houver conflito entre modelo genérico e framework da unidade → vence o framework da unidade.
- Onde houver risco de antecipar temas universitários → vence o escopo proibido.

## 9. Distribuição dos capítulos

| Capítulo | Título | Coração conceitual | Referência | VP específico |
|---|---|---|---|---|
| 1 | Sistemas de Amortização | comparar Price, SAC e SAM por parcela, juros, amortização e saldo devedor | Johan de Witt | integridade é comparar a tabela completa, não só a parcela inicial |
| 2 | Análise de Investimentos | decidir por VPL, TIR, payback e custo de oportunidade | Joel Dean | integridade é aceitar ou rejeitar conforme o critério matemático |

## 10. Ganchos transversais
- NA VIDA REAL: financiamento imobiliário de R$ 300.000 em 360 meses; comparação entre Price, SAC e SAM; decisão comprar versus alugar por fluxo de caixa descontado.
- E A BÍBLIA NISSO?: Provérbios 10:9 no Capítulo 1; Lucas 16:10 no Capítulo 2.
- Pense um pouco: "Por que uma família escolhe Price mesmo pagando mais juros?"; "R$ 60 mil em 1 ano ou R$ 120 mil em 5 anos: qual vale mais hoje?"
- Aprendizados transversais:
  - parcela não é sinônimo de amortização;
  - juros incidem sobre saldo devedor;
  - Price facilita previsibilidade e tende a aumentar juros totais;
  - SAC reduz saldo mais rapidamente e tende a diminuir juros totais;
  - VPL compara dinheiro de datas diferentes em uma mesma data;
  - TIR, payback e VPL respondem perguntas diferentes;
  - custo de oportunidade transforma "ganhar dinheiro" em "ganhar mais que a alternativa".
- Pergunta final de unidade: "Como usar matemática financeira avançada para decidir com clareza quando a aparência da parcela ou do retorno tenta esconder o custo real?"

## 11. Critérios de aceite da unidade
A unidade está adequada se:
- todos os 2 capítulos têm blueprint individual salvo no mesmo diretório deste arquivo;
- nenhum arquivo foi salvo em `blueprints/`, `PIPELINE_CONTEUDO/PLANEJADOR/`, `teste_unidade-3-coordenadas-e-solo/` ou diretamente em `Blueprint/`;
- todos os arquivos estão em `Blueprint/Estatistica e Educacao Financeira/3serie/unidade-4-sistemas-de-amortizacao-e-analise-de-investimentos/`;
- o Capítulo 1 consolida Price, SAC, SAM, tabelas de amortização, total pago e comparação de juros;
- o Capítulo 2 consolida VPL, TIR, payback simples, payback descontado, custo de oportunidade e comparação de alternativas;
- as fórmulas canônicas do framework são preservadas sem comandos LaTeX proibidos;
- os referenciais definidos no framework são preservados: Johan de Witt e Joel Dean;
- os limites de "NÃO ANTECIPAR" são respeitados;
- cada capítulo traz objetivos e indicadores observáveis alinhados a EM13MAT511 e EM13MAT302;
- a conexão VP aparece como reflexão complementar, sem substituir cálculo financeiro.

## 12. Referências
- Framework de unidade: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/3serie/unidade-4-sistemas-de-amortizacao-e-analise-de-investimentos.md`
- Blueprint do Capítulo 1: `blueprint_capitulo_01_sistemas-de-amortizacao.md`
- Blueprint do Capítulo 2: `blueprint_capitulo_02_analise-de-investimentos.md`
- `Referencias/series.md`
- `Referencias/niveis_profundidade.md`
- `Referencias/objetivos_aprendizagem.md`
- BNCC: EM13MAT511; EM13MAT302
- Referências culturais: Johan de Witt; Joel Dean.
