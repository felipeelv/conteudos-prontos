# Blueprint Técnico da Unidade — Unidade 4: Raízes Complexas e Aplicações

## 1. Identificação
- Disciplina: Matemática
- Ano/Série: 3ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: raízes n-ésimas de números complexos e aplicações em polinômios, engenharia elétrica, ondas e geometria.
- Tipo da unidade: unidade de consolidação da forma trigonométrica dos complexos com aplicações decisivas.
- Recorte geral: ensinar que um número complexo possui `n` raízes n-ésimas distintas, distribuídas simetricamente no plano complexo, e mostrar como essa estrutura aparece em polinômios, corrente alternada, oscilações e rotações.
- Capítulos previstos: 2
- Código BNCC principal: EM13MAT403
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/3serie/unidade-4-raizes-complexas-aplicacoes.md`
- Diretório obrigatório desta execução: `Gerador de Blueprint/saida/Matematica/3serie/unidade-4-raizes-complexas-aplicacoes/`

## 2. Nível do aluno
- Faixa etária aproximada: 17-18 anos.
- Série/faixa: 3ª Série EM, com estudo recente de forma trigonométrica dos complexos e De Moivre.
- Conhecimento prévio esperado: forma algébrica e trigonométrica de complexos, módulo, argumento, operações em forma polar, Teorema de De Moivre, noções de polinômios e Teorema Fundamental da Álgebra.
- Linguagem esperada: técnica, consolidativa e aplicada; fórmulas devem ser acompanhadas de leitura geométrica e exemplos numéricos.
- Grau de abstração: N3-N4, com N4 controlado na fórmula geral das raízes n-ésimas e N3 nas aplicações.
- Estratégia didática: partir da pergunta "quantas raízes existem?", usar De Moivre para gerar todas as raízes, visualizar o polígono regular e depois aplicar a estrutura a polinômios e fenômenos físicos.
- Abertura narrativa: "Quantas raízes cúbicas tem o número 1? Por que elas não ficam todas no mesmo ponto?"

## 3. Tom da unidade
- Rigor matemático com apoio visual constante no plano complexo.
- A fórmula geral deve ser destrinchada por partes: módulo, argumento, índice `k` e intervalo `0` a `n-1`.
- Evitar tratamento puramente decorativo das aplicações: engenharia elétrica, ondas e rotações devem ter significado matemático claro.
- A conexão histórica deve apoiar o conteúdo, sem transformar o capítulo em biografia.
- A conexão VP Integridade deve ser discreta: raízes equidistantes e aplicações reais de ideias chamadas "imaginárias".
- O foco da unidade é consolidar o uso de complexos, não abrir análise complexa universitária.

## 4. Profundidade geral
- Nível predominante: N3-N4.
- Pico de profundidade: N4 na dedução e uso da fórmula das raízes n-ésimas via De Moivre.
- Núcleos N3: raízes distintas, raízes da unidade, polígono regular, raízes conjugadas, impedância, fasores, oscilações e rotações.
- Núcleos N2: revisão de TFA, módulo, argumento e forma trigonométrica.
- Limite de densidade: não formalizar análise complexa, Transformada de Fourier, espaços de Hilbert, fasores por equações diferenciais nem teoria avançada de sinais.
- Referência operacional: `Gerador de Blueprint/niveis_profundidade.md`.

## 5. Regras gerais transversais
- Retomar forma trigonométrica e De Moivre antes de apresentar a fórmula das raízes.
- Indicar sempre que `k = 0, 1, ..., n-1`; não aceitar apenas a raiz principal.
- Explicar que as raízes possuem mesmo módulo `\sqrt[n]{\rho}` e argumentos separados por `2\pi/n`.
- Representar raízes n-ésimas como vértices de polígono regular no plano complexo.
- Tratar raízes da unidade como caso especial de `z = 1`.
- Em polinômios com coeficientes reais, reforçar que raízes não reais aparecem em pares conjugados.
- Usar `j` em engenharia elétrica apenas depois de explicar que evita confusão com corrente elétrica `i(t)`.
- Manter Sturm no Capítulo 1 e Steinmetz no Capítulo 2, conforme o framework.
- Manter a VP Integridade como ponte formativa: simetria, coexistência de soluções legítimas e utilidade real do "imaginário".

## 6. Escopo proibido geral (NÃO ANTECIPAR)
- Análise complexa formal.
- Transformada de Fourier formalizada.
- Espaços de Hilbert.
- Equações diferenciais como método central para corrente alternada.
- Teoria de grupos abstrata.
- Quatérnions com cálculo formal; apenas menção contextual, se necessário.
- Demonstrações universitárias do Teorema Fundamental da Álgebra.
- Teorema de Sturm em procedimento algorítmico completo.

## 7. Conexão VP da unidade
- Unidade VP: U4 — Integridade.
- Virtude: integridade simétrica e coerência entre conceito e aplicação.
- Personagem bíblico: Daniel.
- Versículos-âncora: Provérbios 11:3 e Daniel 6:4.
- Ideia central: as raízes n-ésimas de um complexo coexistem com mesmo status, distribuídas simetricamente. Essa integridade conceitual também aparece quando os números complexos, chamados de "imaginários", descrevem fenômenos reais como tensões alternadas, ondas e rotações.
- Ponte para Daniel: Daniel manteve coerência sob pressão; a unidade usa essa imagem como apoio formativo, sem substituir o ensino matemático.

## 8. Hierarquia de autoridade para o Autor
- Conteúdo, matemáticos, fórmulas, VP, limites e sequência de capítulos → framework da unidade e estes blueprints.
- Profundidade → seção 4 deste arquivo e pesos dos blueprints de capítulo.
- Objetivos e indicadores → `Gerador de Blueprint/objetivos_aprendizagem.md`.
- Expectativas de série → `Gerador de Blueprint/series.md`.
- Onde houver conflito entre modelo genérico e framework da unidade → vence o framework da unidade.
- Onde houver risco de antecipar conteúdo universitário de complexos, sinais ou álgebra abstrata → vence o escopo proibido.

## 9. Distribuição dos capítulos

| Capítulo | Título | Coração conceitual | Matemático-âncora | Conexão VP específica |
|---|---|---|---|---|
| 1 | Raízes n-ésimas | fórmula geral, `n` raízes distintas, raízes da unidade e polígono regular | Charles-François Sturm | raízes equidistantes como imagem de integridade simétrica |
| 2 | Aplicações dos Complexos | TFA, raízes conjugadas, impedância, ondas e rotações | Charles Proteus Steinmetz | o "imaginário" matemático produz aplicação física real |

## 10. Ganchos transversais
- Enquanto isso: Sturm mostra, em 1829, como contar raízes reais de polinômios; Steinmetz mostra, em 1893, como complexos simplificam a corrente alternada.
- NA VIDA REAL: cristalografia, engenharia elétrica, motores, ondas, óptica, computação gráfica e tecnologias de comunicação.
- Pergunta de unidade: "Como encontrar todas as raízes de um complexo e por que ideias chamadas imaginárias descrevem fenômenos reais?"
- Aprendizados transversais:
  - Raízes n-ésimas de um complexo são `n` valores distintos.
  - Todas possuem mesmo módulo e argumentos igualmente espaçados.
  - Raízes da unidade formam polígono regular no círculo unitário.
  - O TFA garante raízes complexas para polinômios.
  - Polinômios reais têm raízes complexas não reais em pares conjugados.
  - Impedância `Z = R + jX` organiza cálculos de corrente alternada.
  - Multiplicar por `e^{i\theta}` representa rotação no plano.
  - A integridade matemática aparece como simetria e como coerência entre teoria e aplicação.

## 11. Critérios de aceite da unidade
A unidade está adequada se:
- este arquivo está salvo exatamente como `Gerador de Blueprint/saida/Matematica/3serie/unidade-4-raizes-complexas-aplicacoes/blueprint_unidade.md`;
- os capítulos individuais estão salvos no mesmo diretório como `blueprint_capitulo_01_raizes-n-esimas.md` e `blueprint_capitulo_02_aplicacoes-dos-complexos.md`;
- nenhum arquivo foi salvo em `blueprints/`, `Blueprint/`, pastas antigas de pipeline, pastas de teste, raiz do projeto ou `PLANEJAMENTO/`;
- o Capítulo 1 cobre conceito, fórmula, índice `k`, `n` raízes distintas, raízes da unidade e polígono regular;
- o Capítulo 2 cobre TFA, raízes conjugadas, engenharia elétrica, física de oscilações/ondas e geometria por rotações;
- Sturm e Steinmetz aparecem como referências históricas de apoio, sem biografia excessiva;
- as fórmulas centrais do framework aparecem corretamente em LaTeX;
- a conexão VP Integridade aparece como ponte formativa, sem substituir o ensino matemático;
- não há formalização de análise complexa, Transformada de Fourier, espaços de Hilbert ou equações diferenciais avançadas.

## 12. Referências
- Framework de unidade: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/3serie/unidade-4-raizes-complexas-aplicacoes.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13MAT403.
- Charles-François Sturm — `Mémoire sur la résolution des équations numériques` (1829).
- Charles Proteus Steinmetz — `Complex Quantities and Their Use in Electrical Engineering` (1893).
- Bíblia: Provérbios 11:3; Daniel 6:4.
