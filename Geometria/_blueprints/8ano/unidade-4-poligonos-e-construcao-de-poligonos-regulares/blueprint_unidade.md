# Blueprint Técnico da Unidade — Unidade 4: Polígonos e Construção de Polígonos Regulares

## 1. Identificação
- Disciplina: Geometria
- Ano/Série: 8º Ano — Ensino Fundamental II
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: Polígonos e Construção de Polígonos Regulares — formalização da soma dos ângulos internos, polígonos regulares, inscrição em circunferência e construção do hexágono regular.
- Recorte geral: demonstrar e aplicar a fórmula da soma dos ângulos internos, calcular ângulos de polígonos regulares, reconhecer regularidade completa e executar construções geométricas com régua e compasso.
- Capítulos previstos: 3
- Códigos BNCC: EF08MA09; EF08MA14
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares.md`

## 2. Nível do aluno
- Faixa etária aproximada: 13-14 anos
- Série/faixa: `Gerador de Blueprint/series.md` — seção **8º e 9º Ano EF2 anos finais**
- Linguagem esperada: simbólica formal com explicação clara; o aluno já pode acompanhar demonstrações curtas, algoritmo geométrico e análise leve de por que uma fórmula funciona.
- Grau de abstração: N3 predominante, com demonstrações por decomposição em triângulos e construções guiadas por ângulo central e circunferência.
- Estratégia didática: partir de figuras conhecidas, explicitar propriedades, formalizar com símbolos, aplicar em problemas resolvidos e validar por construção.
- Abertura narrativa: provocar a diferença entre "parecer regular" e "ser regular", conectando cálculo, desenho e procedimento.

## 3. Tom da unidade
- Técnico, visual e procedimental, sem perder clareza para EF II.
- Cada fórmula deve aparecer com significado, substituição numérica e conferência.
- Demonstrações devem ser curtas e apoiadas por desenho mental ou diagrama.
- Construções geométricas devem ser descritas como algoritmos verificáveis.
- A conexão VP deve aparecer como ponte curta: integridade como coerência entre lados, ângulos e procedimento.

## 4. Profundidade geral
- Nível predominante: N3
- Pico de profundidade: demonstração de $$S_i = (n - 2) \cdot 180^\circ$$ e construção do hexágono regular inscrito.
- Núcleos N3: soma dos ângulos internos, ângulo interno e externo de polígono regular, definição completa de regularidade, inscrição em circunferência, algoritmo de construção do hexágono.
- Núcleos N2: retomada de quadriláteros, triângulo equilátero, quadrado, simetrias e exemplos arquitetônicos.
- Referência operacional: `Gerador de Blueprint/niveis_profundidade.md`
- Limite de densidade: não transformar a unidade em área de polígonos regulares, trigonometria, geometria projetiva, construções não construtíveis ou teoria avançada de régua e compasso.

## 5. Regras gerais transversais
- Usar LaTeX simples e compatível, sem `\text{}`, `\;`, `\,`, `\quad`, `\qquad`, `\begin{array}` ou acentos dentro de blocos `$$`.
- Dentro de `$$ ... $$`, manter expressões curtas e sem comandos textuais.
- Manter no máximo 2 boxes por seção de conteúdo.
- Sempre distinguir polígono, polígono regular, polígono inscrito e circunferência circunscrita.
- Todo cálculo deve mostrar a fórmula geral, a substituição e o resultado.
- Ao falar de regularidade, explicitar que todos os lados e todos os ângulos são congruentes.
- Nas construções, separar instrumento, ação, ponto produzido e conferência final.
- Usar fluxograma apenas como representação de algoritmo, não como conteúdo de programação avançada.

## 6. Escopo proibido geral (NÃO ANTECIPAR)
- Fórmula de área de polígono regular.
- Apótema como conceito formal.
- Construção detalhada do pentágono regular com proporção áurea.
- Construção do polígono regular de 17 lados.
- Polígonos não construtíveis, teorema de Wantzel, heptágono ou eneágono regulares.
- Trigonometria, seno, cosseno, lei dos cossenos ou cálculo de cordas por fórmula trigonométrica.
- Geometria projetiva ou demonstrações formais de nível Ensino Médio/superior.
- Uso de mediatriz e bissetriz como eixo novo da unidade; podem aparecer apenas como pré-requisito instrumental quando necessário.

## 7. Conexão VP da unidade
- Unidade VP: U4 — Integridade
- Tema VP: coerência interior-exterior; honestidade como prática; responsabilidade pelas escolhas; perseverança.
- Personagem bíblico: Daniel
- Versículos-âncora: Provérbios 10:9; Lucas 16:10
- Conexão temática: um polígono regular exige lados congruentes e ângulos congruentes. A regularidade completa funciona como imagem de integridade: não basta parecer correto em uma parte; a coerência precisa aparecer no todo. Na construção geométrica, cada passo precisa respeitar o anterior para que a figura final seja íntegra.

## 8. Hierarquia de autoridade para o Autor
- Estrutura editorial do capítulo, nomes de seções e formato de boxes → manual editorial da disciplina, quando disponível.
- Tom, ritmo e densidade → `Gerador de Blueprint/series.md` para 8º Ano EF II.
- Profundidade dos tópicos → `Gerador de Blueprint/niveis_profundidade.md` + pesos definidos nos blueprints.
- Objetivos e indicadores → `Gerador de Blueprint/objetivos_aprendizagem.md`.
- Conteúdo factual, fórmulas, referências, VP, escopo e limites → este blueprint e os blueprints de capítulo.
- Onde houver conflito entre modelo genérico e framework da unidade → vence o framework da unidade.
- Onde houver risco de antecipar conteúdos de 9º Ano, Ensino Médio ou superior → vence o escopo proibido.

## 9. Distribuição dos capítulos

| Capítulo | Título | Coração conceitual | Referência | VP específico |
|---|---|---|---|---|
| 1 | Polígonos: Ângulos | demonstração e uso da soma dos ângulos internos; ângulos internos e externos de polígonos regulares | John Wallis | regra que vale sem exceção |
| 2 | Polígonos Regulares | definição completa, exemplos, simetria e inscrição em circunferência | Johannes Kepler | regularidade exige completude |
| 3 | Construção de Polígonos Regulares | construção de triângulo equilátero, quadrado e hexágono regular; algoritmo e fluxograma | Christopher Wren | execução precisa produz forma íntegra |

## 10. Ganchos transversais
- NA VIDA REAL: placas de trânsito, mosaicos, ladrilhos, cúpulas, vitrais, design gráfico, arquitetura e engrenagens.
- E A BÍBLIA NISSO?: Daniel 6:4, Provérbios 10:9, Lucas 16:10 e Provérbios 4:25.
- Pense um pouco: uma figura pode ter lados iguais e não ser regular? Por que o hexágono regular nasce naturalmente da circunferência?
- Simplificando: fórmulas de ângulos explicam a estrutura; regularidade exige lados e ângulos congruentes; construção correta depende de algoritmo.
- Pergunta final de unidade: "Como cálculo, definição e construção revelam se uma figura é realmente íntegra?"

## 11. Critérios de aceite da unidade
A unidade está adequada se:
- todos os 3 capítulos têm blueprint individual salvo no mesmo diretório deste arquivo;
- todos os arquivos estão em `Gerador de Blueprint/saida/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares/`;
- nenhum arquivo foi salvo em `blueprints/`, pastas antigas de pipeline, pastas de teste, raiz do projeto ou `PLANEJAMENTO/`;
- o Capítulo 1 demonstra e aplica $$S_i = (n - 2) \cdot 180^\circ$$;
- o Capítulo 1 calcula ângulo interno e externo de polígono regular;
- o Capítulo 2 define polígono regular como lados congruentes e ângulos congruentes;
- o Capítulo 2 apresenta inscrição em circunferência e ângulo central sem trigonometria;
- o Capítulo 3 ensina construção de triângulo equilátero, quadrado e hexágono regular com régua e compasso;
- o Capítulo 3 inclui algoritmo ou fluxograma para o hexágono regular;
- todos os capítulos preservam o escopo proibido e a regra de LaTeX;
- a conexão VP aparece como ponte curta, sem substituir o conteúdo matemático.

## 12. Referências
- Framework de unidade: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares.md`
- Expectativas por série: `Gerador de Blueprint/series.md`
- Escala de profundidade: `Gerador de Blueprint/niveis_profundidade.md`
- Objetivos e indicadores: `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EF08MA09; EF08MA14
- John Wallis; Johannes Kepler; Christopher Wren.
