# Blueprint Técnico da Unidade — Unidade 4: Média Aritmética e Probabilidade

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 6º Ano — Ensino Fundamental II
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: Média aritmética, espaço amostral, eventos e cálculo clássico de probabilidade.
- Recorte geral: levar o aluno a resumir dados por média aritmética e a calcular chances em situações finitas e equiprováveis, contando todos os casos possíveis e todos os favoráveis.
- Capítulos previstos: 3
- Códigos BNCC: EF06MA30; EF06MA31
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/6ano/unidade-4-media-aritmetica-e-probabilidade.md`

## 2. Nível do aluno
- Faixa etária aproximada: 11-13 anos
- Série/faixa: `Referencias/series.md` — seção **6º e 7º Ano — EF2 anos iniciais**
- Linguagem esperada: transição concreto → abstrato, com fórmula apresentada por nome dos elementos e exemplo numérico imediato.
- Grau de abstração: simbólico introdutório; usar tabelas, listas, dados, moedas, dados, rifas e situações escolares antes de generalizar.
- Estratégia didática: situação concreta → organização dos dados ou resultados → fórmula ou contagem → substituição → interpretação em frase.
- Abertura narrativa: cena do cotidiano escolar, familiar ou de sorteio; evitar iniciar com "Neste capítulo vamos estudar...".

## 3. Tom da unidade
- Matemático, claro e verificável: cada resultado deve nascer de contagem, soma, divisão ou conversão explícita.
- Ético sem moralismo: integridade aparece como honestidade no registro dos dados e na contagem dos casos.
- Valorizar a ideia de "balança justa": média como equilíbrio e probabilidade como fração honesta.
- Manter a curiosidade histórica com Quetelet, Pascal e Laplace sem transformar o capítulo em biografia.
- Tratar chance como cálculo cuidadoso, não como superstição ou palpite.

## 4. Profundidade geral
- Nível predominante: N3, com cálculos N2 bem guiados.
- Núcleos N3 da unidade: interpretar média como valor típico; construir espaço amostral completo; identificar evento e casos favoráveis; converter probabilidade entre fração, decimal e percentual.
- Referência operacional: `Referencias/niveis_profundidade.md`
- Adaptação por série:
  - N1 = definição curta ou retomada de pré-requisito.
  - N2 = cálculo direto com passo a passo e exemplo numérico.
  - N3 = relação entre conceito, representação, cálculo e interpretação em situação real.
- Limite de densidade: consolidar média simples e probabilidade clássica sem antecipar média ponderada formal, frequência relativa formal, eventos compostos ou probabilidade condicional.

## 5. Regras gerais transversais
- A média aritmética deve ser ensinada como soma dos valores dividida pela quantidade.
- Mostrar que média pode não ser um valor presente na lista; é valor típico ou ponto de equilíbrio do conjunto.
- Em tabela de frequência, repetir o valor pela frequência ou multiplicar valor por frequência apenas como aplicação do conceito, sem nomear "média ponderada" nem apresentar fórmula formal.
- Espaço amostral deve ser a lista de todos os resultados possíveis de um experimento aleatório.
- Evento deve ser tratado como parte do espaço amostral, e caso favorável como resultado que pertence ao evento.
- Probabilidade clássica só deve ser aplicada quando o espaço amostral é finito e equiprovável.
- Todo cálculo de probabilidade deve seguir a sequência: identificar experimento, listar ou contar o espaço amostral, contar favoráveis, montar fração, converter quando pedido, interpretar.
- Usar LaTeX simples e compatível: evitar `\text{}` dentro de `$$...$$`; usar `\mathrm{}` sem acentos quando necessário.

## 6. Escopo proibido geral (NÃO ANTECIPAR)
- Média ponderada com fórmula de somatórios ou pesos formais.
- Moda e mediana como medidas de tendência central.
- Variância, desvio padrão ou dispersão formal.
- Frequência relativa formal como estimativa de probabilidade.
- Eventos compostos com união, intersecção, complementar ou diagramas de Venn probabilísticos.
- Probabilidade condicional.
- Contagem combinatória formal, arranjos, permutações ou combinações.
- Lei dos grandes números, simulações extensas ou comparação experimental formal entre frequência e probabilidade.

## 7. Conexão VP da unidade
- Unidade VP: U4 — Integridade
- Tema VP: coerência interior-exterior; honestidade como prática; responsabilidade pelas escolhas; perseverança.
- Personagem bíblico: Daniel.
- Versículos-âncora: Provérbios 10:9; Lucas 16:10.
- Conexão temática: média e probabilidade exigem contabilidade honesta. Na média, todos os valores precisam entrar na soma; na probabilidade, todos os casos possíveis e favoráveis precisam ser contados. Omitir um dado, inflar um caso favorável ou esquecer o denominador quebra a balança da verdade.

## 8. Hierarquia de autoridade para o Autor
- Estrutura editorial do capítulo, nomes de seções e formato dos boxes → manual editorial da disciplina, quando disponível.
- Tom, ritmo e densidade → `Referencias/series.md` para 6º e 7º Ano EF2.
- Profundidade dos tópicos → `Referencias/niveis_profundidade.md` + pesos definidos nos blueprints.
- Objetivos e indicadores → `Referencias/objetivos_aprendizagem.md`.
- Conteúdo factual, matemáticos, VP, fórmulas, escopo e limites → este blueprint e os blueprints de capítulo.
- Onde houver conflito entre modelo genérico e framework da unidade → vence o framework da unidade.
- Onde houver risco de antecipação probabilística ou estatística → vence o escopo proibido.

## 9. Distribuição dos capítulos

| Capítulo | Título | Coração conceitual | Matemático | VP específico |
|---|---|---|---|---|
| 1 | Média Aritmética | somar todos os valores e dividir pela quantidade, interpretando a média como equilíbrio e valor típico | Adolphe Quetelet | cálculo correto mantém a balança honesta |
| 2 | Espaço Amostral e Eventos | listar todos os resultados possíveis e separar o evento de interesse | Blaise Pascal | honestidade começa em listar tudo, inclusive o que não favorece |
| 3 | Cálculo de Probabilidade | aplicar $$P(E) = \frac{n(E)}{n(\Omega)}$$ e expressar em fração, decimal e percentual | Pierre-Simon Laplace | probabilidade é fração honesta: numerador e denominador precisam estar corretos |

## 10. Ganchos transversais
- NA VIDA REAL: notas escolares, tempo de tela, consumo mensal, mesada, rifas, dados, moedas e sorteios escolares.
- E A BÍBLIA NISSO?: Provérbios 11:1, Lucas 14:28 e Provérbios 21:5 como pontes específicas por capítulo.
- Pense um pouco: provocar a diferença entre dado individual e média, entre palpite e espaço amostral, entre fração, decimal e percentual.
- Aprendizados transversais:
  - Média resume um conjunto, mas não conta a história inteira sozinha.
  - Espaço amostral é a lista honesta dos resultados possíveis.
  - Evento é a parte da lista que interessa à pergunta.
  - Probabilidade clássica é casos favoráveis divididos por casos possíveis.
  - Toda probabilidade fica entre 0 e 1, ou entre 0% e 100%.
- Pergunta final de unidade: "Que diferença existe entre torcer por um resultado e contar honestamente a chance dele acontecer?"

## 11. Critérios de aceite da unidade
A unidade está adequada se:
- todos os 3 capítulos têm blueprint individual salvo no mesmo diretório deste arquivo;
- nenhum arquivo foi salvo em `blueprints/`, `PIPELINE_CONTEUDO/PLANEJADOR/`, `teste_unidade-3-coordenadas-e-solo/` ou diretamente em `Blueprint/`;
- todos os arquivos estão em `Blueprint/Estatistica e Educacao Financeira/6ano/unidade-4-media-aritmetica-e-probabilidade/`;
- o Capítulo 1 ensina média simples e média em tabela de frequência sem fórmula de média ponderada;
- o Capítulo 2 lista espaço amostral e eventos sem calcular probabilidade;
- o Capítulo 3 calcula probabilidade com fração, decimal e percentual, sempre verificando espaço finito e equiprovável;
- os matemáticos definidos no framework são preservados: Quetelet, Pascal e Laplace;
- as fórmulas usam LaTeX simples e evitam `\text{}` dentro de blocos matemáticos;
- os limites de "NÃO ANTECIPAR" são respeitados;
- cada capítulo traz objetivos e indicadores observáveis alinhados a EF06MA30 e/ou EF06MA31;
- a conexão VP aparece como reflexão complementar, sem substituir o ensino matemático.

## 12. Referências
- Framework de unidade: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/6ano/unidade-4-media-aritmetica-e-probabilidade.md`
- Expectativas por série: `Referencias/series.md`
- Escala de profundidade: `Referencias/niveis_profundidade.md`
- Objetivos e indicadores: `Referencias/objetivos_aprendizagem.md`
- BNCC: EF06MA30; EF06MA31
- Quetelet, A. (1835). *Sur l'homme et le développement de ses facultés*.
- Pascal, B. e Fermat, P. (1654). Correspondência sobre o problema dos pontos.
- Laplace, P.-S. (1812). *Théorie Analytique des Probabilités*.
