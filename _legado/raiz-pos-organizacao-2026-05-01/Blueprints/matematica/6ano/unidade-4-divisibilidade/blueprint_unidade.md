# Blueprint Técnico da Unidade — Unidade 4: Divisibilidade

## 1. Identificação
- Disciplina: Matemática 1
- Ano/Série: 6º Ano — Ensino Fundamental II
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: divisibilidade, múltiplos, divisores, números primos, números compostos, fatoração, MDC e MMC.
- Recorte geral: reconhecer relações de divisibilidade, aplicar critérios, decompor números naturais em fatores primos e usar MDC/MMC em situações de partilha e ciclos.
- Capítulos previstos: 3
- Códigos BNCC: EF06MA05, EF06MA06
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/6ano/unidade-4-divisibilidade.md`
- Diretório obrigatório desta execução: `Gerador de Blueprint/saida/Matematica/6ano/unidade-4-divisibilidade/`

## 2. Nível do aluno
- Faixa etária aproximada: 11-12 anos.
- Série/faixa: 6º Ano EF II, em consolidação da aritmética dos naturais e transição para procedimentos mais formais.
- Conhecimento prévio esperado: multiplicação, divisão exata, tabuada, quociente, resto, noção de fator e operações fundamentais.
- Linguagem esperada: técnica, mas sempre acompanhada de leitura verbal e exemplos numéricos pequenos antes da generalização.
- Grau de abstração: N2-N3, com N3 predominante nos critérios de divisibilidade, fatoração, MDC e MMC.
- Estratégia didática: partir de listas, tabelas, decomposição visual, árvores de fatores, situações de partilha, calendários e ciclos.
- Abertura narrativa: investigar como saber se um número "combina" com outro sem fazer a divisão completa.

## 3. Tom da unidade
- Matemática investigativa, organizada e verificável.
- O fio condutor é a estrutura interna dos números: múltiplos mostram para onde um número vai; divisores mostram do que ele é feito.
- Critérios de divisibilidade devem aparecer como atalhos com razão lógica, não como lista decorada.
- Fatoração em primos deve ser tratada como identidade matemática do número.
- MDC e MMC devem ser diferenciados por pergunta: "o que eles compartilham?" versus "onde eles se encontram?".
- A conexão VP Integridade deve ser breve e ligada à coerência interna dos números.

## 4. Profundidade geral
- Nível predominante: N3.
- Núcleos N3: múltiplos e divisores, critérios de divisibilidade, identificação de primos, decomposição em fatores primos, MDC, MMC e aplicações.
- Núcleos N2: compostos, divisões sucessivas como procedimento introdutório, exemplos concretos de partilha e ciclos.
- Pico de profundidade: relação entre fatoração, MDC/MMC e identidade `MDC(a,b) * MMC(a,b) = a * b`.
- Limite de densidade: não formalizar Algoritmo de Euclides, não desenvolver criptografia RSA e não antecipar estudo algébrico avançado.
- Referência operacional: `Gerador de Blueprint/niveis_profundidade.md`.

## 5. Regras gerais transversais
- Sempre distinguir múltiplo de divisor por pares de exemplos.
- Todo critério de divisibilidade deve ser usado em números concretos antes de ser nomeado como regra.
- Critérios obrigatórios: 2, 3, 4, 5, 6, 9 e 10.
- Fatoração deve ser ensinada por árvore ou tabela antes de se usar potência.
- O número 1 deve ser tratado explicitamente como não primo.
- O número 2 deve ser tratado explicitamente como único primo par.
- MDC deve ser associado à maior partilha possível sem sobras.
- MMC deve ser associado ao primeiro encontro comum de ciclos.
- Em LaTeX, evitar `\text{}`, `\;`, `\,`, `\qquad`, `\quad`, `\begin{array}` e acentos dentro de `$$`.
- Não criar seção final `## Fórmulas do capítulo`.

## 6. Escopo proibido geral (NÃO ANTECIPAR)
- Algoritmo de Euclides formal.
- Demonstração formal do Teorema Fundamental da Aritmética.
- Congruências modulares.
- Aritmética modular.
- Criptografia RSA como desenvolvimento técnico.
- Provas abstratas sobre primos infinitos.
- Ideais, anéis, corpos ou álgebra moderna.
- Operações com frações como foco da unidade; apenas indicar que MMC alimenta frações na unidade seguinte.

## 7. Conexão VP da unidade
- Unidade VP: U4 — Integridade.
- Virtude: coerência interior-exterior.
- Personagem bíblico: Daniel.
- Versículos-âncora: Provérbios 10:9, Daniel 6:4 e 1 Coríntios 12:14.
- Ideia central: divisibilidade revela estrutura. Um número tem relações externas, mas conserva uma composição interna definida.
- Ponte para múltiplos e divisores: a relação entre números revela ordem e estrutura.
- Ponte para primos e compostos: primos são indivisíveis em sua estrutura; compostos têm fatoração única.
- Ponte para MDC/MMC: números podem compartilhar divisores e encontrar múltiplos comuns sem perder sua identidade.

## 8. Hierarquia de autoridade para o Autor
- Conteúdo, matemáticos, VP, limites e sequência de capítulos -> framework da unidade e estes blueprints.
- Profundidade -> seção 4 deste arquivo e pesos dos blueprints de capítulo.
- Objetivos e indicadores -> `Gerador de Blueprint/objetivos_aprendizagem.md`.
- Expectativas de série -> `Gerador de Blueprint/series.md`.
- Onde houver conflito entre modelo genérico e framework da unidade -> vence o framework da unidade.
- Onde houver risco de antecipar 7º ano ou Ensino Médio -> vence o escopo proibido.

## 9. Distribuição dos capítulos

| Capítulo | Título | Coração conceitual | Matemático-âncora | Conexão VP específica |
|---|---|---|---|---|
| 1 | Múltiplos e Divisores | relação recíproca entre múltiplo e divisor; critérios de divisibilidade | Ernst Kummer | divisibilidade como estrutura interna e integridade relacional |
| 2 | Primos e Compostos | identificação de primos, compostos e decomposição em fatores primos | Sophie Germain | primos como indivisíveis; compostos com fatoração única |
| 3 | MDC e MMC | maior divisor comum, menor múltiplo comum, métodos e aplicações | Gabriel Lamé | compartilhar divisores e encontrar múltiplos comuns sem perder unicidade |

## 10. Ganchos transversais
- Pergunta de unidade: "Como descobrir a estrutura de um número sem testar todas as divisões?"
- Enquanto isso: Kummer generaliza ideias de divisibilidade, Sophie Germain investiga primos e Lamé mede a eficiência de métodos para encontrar MDC.
- NA VIDA REAL: conferência de cálculos, calendários, engrenagens, ciclos de ônibus, organização de equipes, partilha justa, música e segurança digital como menção breve.
- Aprendizados transversais:
  - Todo múltiplo nasce de uma multiplicação.
  - Todo divisor cabe exatamente em um número.
  - Critérios de divisibilidade economizam divisões.
  - Primos são blocos básicos da fatoração.
  - MDC responde à melhor partilha comum.
  - MMC responde ao primeiro encontro comum.

## 11. Critérios de aceite da unidade
A unidade está adequada se:
- este arquivo está salvo exatamente como `Gerador de Blueprint/saida/Matematica/6ano/unidade-4-divisibilidade/blueprint_unidade.md`;
- os 3 capítulos individuais estão salvos no mesmo diretório como `blueprint_capitulo_01_multiplos-e-divisores.md`, `blueprint_capitulo_02_primos-e-compostos.md` e `blueprint_capitulo_03_mdc-e-mmc.md`;
- nenhum arquivo foi salvo em `blueprints/`, `Blueprint/`, pastas antigas de pipeline, pastas de teste, raiz do projeto ou `PLANEJAMENTO/`;
- o nome da pasta da unidade é exatamente `unidade-4-divisibilidade`;
- todos os subtópicos obrigatórios do framework aparecem nos capítulos;
- Kummer, Sophie Germain e Lamé aparecem como referências históricas de apoio, sem biografia excessiva;
- as conexões VP aparecem como pontes formativas breves e não substituem o ensino matemático;
- não há formalização do Algoritmo de Euclides nem desenvolvimento técnico de criptografia RSA.

## 12. Referências
- Framework de unidade: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/6ano/unidade-4-divisibilidade.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EF06MA05, EF06MA06.
- Ernst Eduard Kummer; Sophie Germain; Gabriel Lamé.
- Bíblia: Provérbios 10:9, Daniel 6:4, 1 Coríntios 12:14.
