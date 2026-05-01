# Blueprint Tecnico da Unidade - Unidade 4: Funcao Afim

## 1. Identificacao
- Disciplina: Matematica 1
- Ano/Serie: 9o Ano - Ensino Fundamental II
- Bimestre: 2o
- Unidade: 4 de 8
- Tema central: Funcao Afim - da intuicao da reta a modelagem algebrica de variacao constante.
- Tipo da unidade: unidade de consolidacao funcional, articulando lei de formacao, coeficientes, grafico, zero, sinal e aplicacoes.
- Recorte geral: formalizar a funcao afim `f(x) = ax + b`, interpretar seus coeficientes, construir e ler a reta no plano cartesiano e aplicar o modelo em situacoes reais.
- Capitulos previstos: 4
- Codigo BNCC principal: EF09MA06
- Codigo BNCC complementar: EF09MA08
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/9ano/unidade-4-funcao-afim.md`
- Diretorio obrigatorio desta execucao: `Gerador de Blueprint/saida/Matematica/9ano/unidade-4-funcao-afim/`

## 2. Nivel do aluno
- Faixa etaria aproximada: 14-15 anos.
- Serie/faixa: 9o Ano EF II, com transicao para linguagem simbolica mais proxima do Ensino Medio.
- Conhecimento previo esperado: conceito de funcao, lei de formacao, notacao `f(x)`, plano cartesiano, pares ordenados, equacoes do 1o grau, sinais e proporcionalidade direta.
- Linguagem esperada: tecnica e progressiva; termos como funcao afim, coeficiente angular, coeficiente linear, taxa de variacao, zero e estudo do sinal devem receber glosa curta na primeira ocorrencia.
- Grau de abstracao: N3 predominante, com apoio grafico forte e toque N4 no Capitulo 3 ao deduzir `x_0 = -b/a`.
- Estrategia didatica: partir de modelos concretos com valor fixo e taxa constante, traduzir para formula, tabela e grafico, depois usar os coeficientes para ler comportamento e sinal.
- Abertura narrativa: mostrar que uma reta e um modelo confiavel porque conserva a mesma regra em todos os pontos.

## 3. Tom da unidade
- Algebra funcional com visualizacao: formula, tabela e reta devem se confirmar mutuamente.
- Rigor sem excesso formal: o aluno deve operar `f(x) = ax + b`, mas sem antecipar trigonometria, derivadas ou classificacao polinomial formal.
- Aplicacoes reais devem ser numericas e interpretadas: tarifas, planos, salario, consumo, temperatura e comparacao de modelos.
- A conexao VP Integridade deve ser breve e conceitual: a reta como coerencia, taxa constante e previsibilidade.
- Os matematicos historicos aparecem como apoio de contexto, nunca como biografia longa.

## 4. Profundidade geral
- Nivel predominante: N3 - CONSOLIDA.
- Pico de profundidade: N4 controlado no Capitulo 3, ao deduzir o zero da funcao por isolamento algebrico.
- Nucleos N3: definicao de funcao afim, interpretacao de `a` e `b`, grafico como reta, crescimento/decrescimento, taxa de variacao, zero, sinal, determinacao da lei de formacao e modelagem.
- Nucleos N2: identificacao de coeficientes, construcao por dois pontos, casos particulares e leitura grafica inicial.
- Limite de densidade: nao transformar a unidade em Geometria Analitica do Ensino Medio nem em estudo formal de funcoes polinomiais.
- Referencia operacional: `Gerador de Blueprint/niveis_profundidade.md`.

## 5. Regras gerais transversais
- Toda funcao afim deve ser escrita na forma `f(x) = ax + b`, com `a != 0`, exceto ao tratar a funcao constante como caso-limite no Capitulo 4.
- Sempre distinguir `a` como coeficiente angular/taxa de variacao e `b` como coeficiente linear/intercepto no eixo y.
- Em graficos, usar tabela de valores ou dois pontos antes de tracar a reta.
- Explicar que `f(0) = b`, portanto o ponto `(0, b)` fica no eixo y.
- Explicar que o zero da funcao e o valor de `x` para o qual `f(x) = 0`.
- Em estudo do sinal, conectar sinal de `f(x)` a posicao da reta acima ou abaixo do eixo x.
- Em inequacoes do 1o grau, lembrar que dividir por numero negativo inverte a desigualdade.
- Em formulas LaTeX, evitar `\text{}`, `\;`, `\,`, `\qquad`, `\quad`, `\begin{array}` e acentos dentro de `$$`.
- Nao criar secao final `## Formulas do capitulo`.

## 6. Escopo proibido geral (NAO ANTECIPAR)
- Funcao quadratica, parabola, discriminante ou Bhaskara.
- Coeficiente angular como tangente do angulo.
- Derivada, taxa instantanea, limite ou calculo diferencial.
- Funcao afim como funcao polinomial de grau 1 em classificacao formal.
- Retas paralelas/perpendiculares por produto de coeficientes angulares.
- Sistemas lineares formais e intersecao de duas retas como solucao de sistema.
- Progressao aritmetica como funcao afim restrita aos naturais.
- Inequacoes com modulo, exponenciais, logaritmicas ou sistemas de inequacoes.

## 7. Conexao VP da unidade
- Unidade VP: U4 - Integridade.
- Virtude: coerencia entre interior e exterior; a mesma regra em todos os pontos.
- Personagem biblico: Daniel.
- Versiculos-ancora: Proverbios 10:9, Proverbios 11:3, Lucas 16:10 e Galatas 6:7.
- Ideia central: a funcao afim e previsivel porque conserva uma taxa de variacao constante; a pessoa integra tambem e confiavel porque nao muda sua regra moral conforme a pressao.
- Ponte para Capitulo 1: uma lei unica gera uma reta unica.
- Ponte para Capitulo 2: o coeficiente angular constante representa coerencia no caminho.
- Ponte para Capitulo 3: mesmo ao cruzar o zero, a lei da funcao continua a mesma.
- Ponte para Capitulo 4: casos particulares mostram consequencias claras de cada escolha de `a` e `b`.

## 8. Hierarquia de autoridade para o Autor
- Conteudo, matematicos, VP, formulas, limites e sequencia dos capitulos -> framework da unidade e estes blueprints.
- Profundidade -> secao 4 deste arquivo e pesos dos blueprints de capitulo.
- Objetivos e indicadores -> `Gerador de Blueprint/objetivos_aprendizagem.md`.
- Expectativas de serie -> `Gerador de Blueprint/series.md`.
- Onde houver conflito entre modelo generico e framework da unidade -> vence o framework da unidade.
- Onde houver risco de antecipar 1a Serie EM, funcao quadratica ou Geometria Analitica -> vence o escopo proibido.

## 9. Distribuicao dos capitulos

| Capitulo | Titulo | Coracao conceitual | Matematico-ancora | Conexao VP especifica |
|---|---|---|---|---|
| 1 | Definicao e Grafico | `f(x) = ax + b`, identificacao de `a` e `b`, reta e construcao por dois pontos | Nicole Oresme | a lei nao desvia: cada ponto cai onde a regra previa |
| 2 | Coeficientes e Comportamento | inclinacao, crescimento, decrescimento, intercepto e taxa de variacao | Pierre de Fermat | taxa constante como caminho integro |
| 3 | Zero e Estudo do Sinal | raiz, `f(x)=0`, inequacoes do 1o grau e sinal por intervalos | Brahmagupta | a lei permanece a mesma antes e depois do zero |
| 4 | Casos Particulares e Aplicacoes | funcao linear, identidade, constante, lei de formacao e modelagem | Liu Hui | semeadura e colheita como proporcionalidade e consequencia |

## 10. Ganchos transversais
- Pergunta de unidade: "Como uma unica regra pode descrever uma variacao constante e virar uma reta?"
- Enquanto isso: Oresme representa variacao por diagramas, Fermat liga equacoes a lugares geometricos, Brahmagupta formaliza zero e negativos, Liu Hui sistematiza problemas aplicados.
- NA VIDA REAL: taxi, internet movel, salario com comissao, vela que queima, tarifa de agua, conversao Celsius-Fahrenheit e comparacao de planos.
- E A BIBLIA NISSO: integridade como coerencia visivel; a reta nao esconde zigue-zague nem altera a regra no meio do caminho.
- Aprendizados transversais:
  - Toda funcao afim estrita tem forma `f(x) = ax + b`, com `a != 0`.
  - O grafico de uma funcao afim e uma reta.
  - O coeficiente `a` mede taxa de variacao e inclinacao.
  - O coeficiente `b` e o valor de `f(0)` e o intercepto no eixo y.
  - O zero e o ponto onde a reta cruza o eixo x.
  - O estudo do sinal le os intervalos em que a reta fica acima ou abaixo do eixo x.
  - Modelar e descobrir quais partes da situacao sao fixas e quais variam.

## 11. Criterios de aceite da unidade
A unidade esta adequada se:
- este arquivo esta salvo exatamente como `Gerador de Blueprint/saida/Matematica/9ano/unidade-4-funcao-afim/blueprint_unidade.md`;
- os capitulos individuais estao salvos no mesmo diretorio como `blueprint_capitulo_01_definicao-e-grafico.md`, `blueprint_capitulo_02_coeficientes-e-comportamento.md`, `blueprint_capitulo_03_zero-e-estudo-do-sinal.md` e `blueprint_capitulo_04_casos-particulares-e-aplicacoes.md`;
- nenhum arquivo foi salvo em `blueprints/`, `Blueprint/`, pastas antigas de pipeline, pastas de teste, raiz do projeto ou `PLANEJAMENTO/`;
- o nome da pasta da unidade e exatamente `unidade-4-funcao-afim`;
- todos os subtopicos obrigatorios do framework aparecem nos capitulos;
- Oresme, Fermat, Brahmagupta e Liu Hui aparecem como referencias historicas de apoio, sem biografia excessiva;
- as conexoes VP aparecem como pontes formativas breves e nao substituem o ensino matematico;
- as formulas centrais aparecem de modo compativel com AutoLaTeX/CodeCogs;
- nao ha antecipacao de funcao quadratica, derivada, tangente do angulo, sistemas lineares formais ou PA.

## 12. Referencias
- Framework de unidade: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/9ano/unidade-4-funcao-afim.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EF09MA06 e EF09MA08.
- Nicole Oresme - diagramas de variacao e movimento uniforme.
- Pierre de Fermat - geometria analitica e relacao entre equacoes e retas.
- Brahmagupta - regras para zero e numeros negativos.
- Liu Hui - modelagem aplicada e metodos proporcionais.
- Biblia: Proverbios 10:9, Proverbios 11:3, Lucas 16:10 e Galatas 6:7.
