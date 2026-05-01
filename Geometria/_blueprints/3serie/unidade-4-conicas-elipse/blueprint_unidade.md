# Blueprint Técnico da Unidade - Unidade 4: Cônicas - Elipse

## 1. Identificação
- Disciplina: Geometria
- Ano/Série: 3ª Série - Ensino Médio
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: Cônicas - Elipse.
- Recorte geral: definir a elipse como lugar geométrico, identificar seus elementos, demonstrar a relação fundamental, escrever equações reduzidas nas duas orientações e interpretar a excentricidade em aplicações reais.
- Capítulos previstos: 2
- Códigos BNCC: EM13MAT302 e EM13MAT308
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/3serie/unidade-4-conicas-elipse.md`

## 2. Nível do aluno
- Faixa etária aproximada: 17-18 anos
- Série/faixa: 3ª Série EM
- Linguagem esperada: formal, precisa e demonstrativa, sem infantilização.
- Grau de abstração: N3 predominante, com demonstrações geométricas controladas.
- Estratégia didática: partir da definição por lugar geométrico, nomear elementos na figura, derivar relações métricas, conectar com equações e finalizar com leitura de aplicações quantitativas.
- Abertura narrativa: usar a órbita da Terra e a prova de Newton para mostrar que elipses não são apenas desenhos, mas modelos matemáticos de fenômenos reais.

## 3. Tom da unidade
- Rigor analítico com clareza visual: todo símbolo deve ser associado a um elemento da elipse.
- Formalismo completo, mas progressivo: definição, elementos, relação fundamental, equação e interpretação.
- Aplicação quantitativa: órbitas, arquitetura e propriedades focais devem aparecer com dados e cálculo.
- Conexão VP sóbria: Integridade entra como coerência entre propriedade definidora, focos e variação da posição.

## 4. Profundidade geral
- Nível predominante: N3.
- Núcleos N3: definição por lugar geométrico, identificação de elementos, relação $$a^2 = b^2 + c^2$$, equações reduzidas e excentricidade.
- Pico de complexidade: dedução da equação reduzida a partir da definição e interpretação de dados reais de excentricidade.
- Referência operacional: `Gerador de Blueprint/niveis_profundidade.md`.
- Limite de densidade: não transformar a unidade em estudo completo de todas as cônicas.

## 5. Regras gerais transversais
- Usar os símbolos $$a$$, $$b$$ e $$c$$ de modo consistente: $$a$$ é semieixo maior, $$b$$ é semieixo menor e $$c$$ é semidistância focal.
- Reforçar sempre que, na elipse, $$a > b > 0$$ e $$0 \leq c < a$$.
- Apresentar focos como $$F_{1}$$ e $$F_{2}$$.
- Em equações reduzidas, explicar que o maior denominador indica a direção do eixo maior.
- Usar LaTeX simples e compatível, sem comandos de espaçamento manual, ambientes matriciais ou texto dentro de fórmulas.
- Usar marcadores com hífen.
- Manter no máximo 2 boxes por seção de conteúdo.
- Exercícios resolvidos devem separar dados, relação usada, substituição e conclusão.

## 6. Escopo proibido geral
- Não antecipar hipérbole, diferença de distâncias ou relação $$c^2 = a^2 + b^2$$ da Unidade 5.
- Não antecipar parábola, foco e diretriz da Unidade 6.
- Não antecipar rotação de cônicas ou classificação por discriminante.
- Não aprofundar equações paramétricas, geometria diferencial ou cálculo.
- Não usar matriz, autovalores ou mudança de base.
- Não tratar seções cônicas como curso universitário.

## 7. Conexão VP da unidade
- Unidade VP: U4 - Integridade
- Tema VP: coerência interior-exterior; honestidade com custo; responsabilidade pelas escolhas.
- Personagem bíblico: Daniel.
- Versículos-âncora: Provérbios 10:9; Lucas 16:10; Daniel 6:4.
- Conexão temática: cada ponto da elipse conserva a soma das distâncias aos dois focos. A figura muda de posição ponto a ponto, mas permanece fiel à propriedade que a define. Integridade é essa coerência mantida sob variação e pressão.

## 8. Hierarquia de autoridade para o Autor
- Estrutura editorial do capítulo, nomes de seções e formato de boxes: manual editorial da disciplina, quando disponível.
- Tom, ritmo e densidade: referência de 3ª Série EM em `Gerador de Blueprint/series.md`.
- Profundidade dos tópicos: `Gerador de Blueprint/niveis_profundidade.md` e pesos definidos nos blueprints.
- Objetivos e indicadores: `Gerador de Blueprint/objetivos_aprendizagem.md`.
- Conteúdo factual, fórmulas, referências, VP, escopo e limites: este blueprint e os blueprints de capítulo.
- Onde houver conflito entre modelo genérico e framework da unidade: vence o framework da unidade.
- Onde houver risco de antecipar outras cônicas: vence o escopo proibido.

## 9. Distribuição dos capítulos

| Capítulo | Título | Coração conceitual | Referência | VP específico |
|---|---|---|---|---|
| 1 | Definição e Elementos da Elipse | definição por soma constante, elementos e relação $$a^2 = b^2 + c^2$$ | Isaac Newton | coerência com dois focos fixos |
| 2 | Equações e Propriedades da Elipse | equações reduzidas, excentricidade e aplicações | Sophie Germain | identidade preservada mesmo com variação da forma |

## 10. Ganchos transversais
- NA VIDA REAL: órbita da Terra, órbita da Lua, Praça São Pedro, Coliseu de Roma, galerias de sussurro e engrenagens elípticas.
- E A BÍBLIA NISSO?: Mateus 5:37 no Capítulo 1; Provérbios 4:25 no Capítulo 2; Provérbios 10:9 e Lucas 16:10 como âncoras de unidade.
- Pense um pouco: por que modelos reais importantes aparecem como elipses, e não como círculos perfeitos?
- Simplificando: elipse é o conjunto de pontos cuja soma das distâncias a dois focos é constante; suas equações e propriedades derivam dessa definição.
- Pergunta final de unidade: "Como uma única propriedade fixa pode gerar uma curva inteira e explicar fenômenos reais?"

## 11. Critérios de aceite da unidade
A unidade está adequada se:
- todos os 2 capítulos têm blueprint individual salvo no mesmo diretório deste arquivo;
- todos os arquivos estão em `Gerador de Blueprint/saida/Geometria/3serie/unidade-4-conicas-elipse/`;
- nenhum arquivo foi salvo em `blueprints/`, pastas antigas de pipeline, pastas de teste, raiz do projeto ou `PLANEJAMENTO/`;
- o Capítulo 1 define elipse como lugar geométrico e identifica focos, centro, eixos, vértices e distância focal;
- o Capítulo 1 demonstra ou justifica geometricamente $$a^2 = b^2 + c^2$$;
- o Capítulo 2 apresenta equações reduzidas nas duas orientações;
- o Capítulo 2 calcula e interpreta excentricidade;
- os dois capítulos respeitam o escopo proibido e não antecipam hipérbole, parábola ou rotação de cônicas;
- as fórmulas usam LaTeX simples e compatível;
- as aplicações reais têm função didática, não aparecem como curiosidade solta.

## 12. Checklist para produção do Autor
- Abrir cada capítulo com uma situação concreta em até 3 frases.
- Definir os símbolos antes de usá-los em cálculo.
- Usar figuras descritas com precisão quando a produção visual for necessária.
- Explicar termos técnicos na primeira ocorrência.
- Incluir pelo menos 1 exercício resolvido de vestibular ou estilo vestibular por capítulo.
- Fechar cada capítulo com "Simplificando" em 1 frase densa.
- Revisar se nenhum trecho afirma que a elipse tem apenas dois vértices.
- Revisar se o maior denominador da equação reduzida está associado ao eixo maior.
- Revisar se a excentricidade permanece no intervalo correto para elipse.
