# Blueprint Técnico — Capítulo 1: Conceito de Função

## 1. Identificação
- Disciplina: Matemática
- Ano/Série: 1ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 — Introdução às Funções e Função Afim
- Capítulo: 1 de 2
- Título: Conceito de Função
- Código BNCC principal: EM13MAT302
- Código BNCC complementar: EM13MAT303
- Profundidade geral: N3-N4 — CONSOLIDA + APRESENTA

## 2. Objetivo do capítulo
Levar o aluno a compreender função como uma relação com unicidade, distinguindo domínio, contradomínio e imagem, interpretando diferentes representações e classificando funções como injetoras, sobrejetoras, bijetoras, compostas e inversas em situações adequadas.

## 3. Pergunta-problema
*"Por que uma relação em que a mesma entrada gera duas saídas diferentes não pode ser chamada de função?"*

## 4. Tensão narrativa
Um cadastro parece simples: um CPF aponta para uma pessoa. Mas e se o mesmo CPF apontasse para duas pessoas? A confiança do sistema desapareceria. A Matemática chama essa exigência de unicidade: para cada entrada do domínio, deve existir uma única imagem. A partir dessa tensão, o capítulo formaliza o conceito de função e mostra por que algumas funções permitem até o caminho inverso.

## 5. Sequência conceitual obrigatória
1. Abrir com relações cotidianas: CPF → pessoa, aluno → turma, pessoa → endereço.
2. Separar relação qualquer de função: a mesma entrada não pode ter duas imagens.
3. Definir formalmente `f: A \to B` e `x \mapsto f(x)`.
4. Distinguir domínio, contradomínio e imagem com diagrama de flechas.
5. Apresentar representações por flechas, tabela, fórmula e gráfico.
6. Explicar quando um gráfico representa função pelo teste da reta vertical.
7. Classificar funções: injetora, sobrejetora e bijetora.
8. Introduzir função composta como aplicar uma função depois da outra.
9. Introduzir função inversa como retorno possível quando há bijeção.
10. Conectar a unicidade da função à VP Integridade.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Definição formal de função | 20% | N4 | A cada `x` do domínio corresponde um e apenas um `f(x)` no contradomínio. |
| Domínio, contradomínio e imagem | 15% | N3 | Distinguir `Im(f)` de contradomínio; usar flechas e exemplos. |
| Representações de função | 15% | N2-N3 | Flechas, tabela, fórmula e gráfico; incluir teste da reta vertical. |
| Classificação: injetora, sobrejetora, bijetora | 20% | N3 | Explicar como perguntas sobre entradas e saídas. |
| Função composta | 15% | N3 | Trabalhar `f(g(x))` com ordem de aplicação explícita. |
| Função inversa | 15% | N4 | Apresentar condição de bijetividade e ideia de desfazer a função. |

## 7. Conceitos obrigatórios
- Relação
- Função
- Unicidade
- Domínio
- Contradomínio
- Imagem
- Diagrama de flechas
- Tabela
- Gráfico
- Fórmula
- Teste da reta vertical
- Função injetora
- Função sobrejetora
- Função bijetora
- Função composta
- Função inversa
- Karl Weierstrass

## 8. Termos a explicar com tradução curta
- **Domínio:** conjunto de entradas permitidas.
- **Contradomínio:** conjunto de chegadas possíveis declarado na função.
- **Imagem:** conjunto de valores que a função realmente assume.
- **Unicidade:** cada entrada tem uma única saída.
- **Injetora:** entradas diferentes geram saídas diferentes.
- **Sobrejetora:** toda saída possível do contradomínio é atingida.
- **Bijetora:** é injetora e sobrejetora; permite inversa sem ambiguidade.
- **Composta:** função obtida aplicando uma função depois de outra.
- **Inversa:** função que desfaz a função original, quando isso é possível.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- que nem toda relação é função;
- que a unicidade é a condição central da definição;
- a notação `f: A \to B` e `x \mapsto f(x)`;
- a diferença entre `Dom(f)`, `CDom(f)` e `Im(f)`;
- que `Im(f) \subset B`;
- como ler função em flechas, tabela, fórmula e gráfico;
- o teste da reta vertical como critério gráfico simples;
- injetora, sobrejetora e bijetora com exemplos concretos;
- composição `f \circ g` como `f(g(x))`;
- função inversa como retorno possível quando há bijeção;
- Weierstrass como referência histórica de rigor no conceito de função;
- a ponte VP: integridade como unicidade e coerência.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- formalizar limites ou continuidade por epsilon-delta;
- usar derivadas;
- trabalhar função complexa ou topologia;
- aprofundar análise real;
- transformar bijeção e inversa em demonstrações universitárias;
- antecipar função quadrática, exponencial ou logarítmica como conteúdo central.

## 11. Linguagem esperada
- Linguagem formal acessível para 1ª Série EM.
- Definir cada termo antes de usá-lo em cadeia.
- Alternar exemplos cotidianos, representação visual e notação algébrica.
- Evitar excesso de símbolos sem leitura verbal.
- Usar "entrada" e "saída" como apoio, mas consolidar os termos domínio, contradomínio e imagem.
- Tratar Weierstrass em parágrafo breve, conectado ao rigor do conceito.

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Conceito de Função`
- Pergunta-problema: `## O que faz uma relação ser uma função?`
- Abertura narrativa: CPF, cadastro e falha de unicidade.
- Para Conversar de intro: "Que problema surgiria se a mesma entrada pudesse gerar duas saídas diferentes?"
- Desenvolvimento em 5 blocos:
  - Bloco 1 — Relação e Função
    - `### 1.1 Relações do cotidiano`
    - `### 1.2 A regra da unicidade`
  - Bloco 2 — Domínio, Contradomínio e Imagem
    - `### 2.1 O que entra`
    - `### 2.2 Onde pode chegar`
    - `### 2.3 Onde realmente chega`
  - Bloco 3 — Representações
    - `### 3.1 Flechas e tabelas`
    - `### 3.2 Fórmulas e gráficos`
  - Bloco 4 — Classificação de Funções
    - `### 4.1 Injetora`
    - `### 4.2 Sobrejetora`
    - `### 4.3 Bijetora`
  - Bloco 5 — Composta e Inversa
    - `### 5.1 Aplicar uma função depois da outra`
    - `### 5.2 Quando é possível voltar`
- Enquanto isso: Weierstrass e a busca por rigor na análise moderna.
- NA VIDA REAL: CPF, cadastro escolar, aplicativos, senhas e identificadores únicos.
- E para hoje: Provérbios 10:9 e integridade como unicidade.
- Simplificando: função é uma regra de associação com entrada permitida e saída única.
- Para não esquecer: 5 bullets sobre unicidade, Dom/CDom/Im, representações, bijeção e inversa.

## 13. Fórmulas e notações centrais
- `f: A \to B`
- `x \mapsto f(x)`
- `Dom(f) = A`
- `CDom(f) = B`
- `Im(f) \subset B`
- `x_1 \neq x_2 \Rightarrow f(x_1) \neq f(x_2)` para função injetora.
- `Im(f) = B` para função sobrejetora.
- `f` bijetora = injetora e sobrejetora.
- `(f \circ g)(x) = f(g(x))`
- `f^{-1}(y) = x \Leftrightarrow f(x) = y`

## 14. Âncoras visuais/concretas
- Diagrama de flechas com uma relação que é função e outra que não é.
- Tabela de valores com domínio e imagem destacados em cores diferentes.
- Gráfico com reta vertical mostrando quando há ou não função.
- Três diagramas comparando injetora, sobrejetora e bijetora.
- Esquema de composição: entrada → `g` → saída intermediária → `f` → saída final.
- Esquema de inversa como caminho de volta.

## 15. Conexão VP
- Unidade VP: Integridade.
- Versículo principal sugerido: Provérbios 10:9.
- Personagem bíblico: Daniel.
- Ponteiro específico: função exige que a mesma entrada tenha uma única imagem; integridade exige coerência entre o que se é e o que se faz.
- Conexão temática: se uma relação muda de resposta para a mesma entrada, ela perde confiabilidade. A integridade também aparece quando não há duplicidade entre contextos.
- Pergunta formativa: "Você é a mesma 'função' em casa, na escola e entre amigos, ou sua resposta muda conforme quem está olhando?"

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **definirá** função como relação com unicidade entre domínio e contradomínio.
2. O aluno **distinguirá** domínio, contradomínio e imagem em diagramas, tabelas e fórmulas.
3. O aluno **identificará** se uma relação representada por tabela, flechas ou gráfico é função.
4. O aluno **classificará** funções simples como injetoras, sobrejetoras ou bijetoras.
5. O aluno **calculará e interpretará** composições e inversas simples quando forem possíveis.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Afirma que cada elemento do domínio deve ter uma única imagem.
- Identifica uma relação que falha por falta de unicidade.

**Para o objetivo 2:**
- Localiza domínio e contradomínio declarados.
- Determina a imagem observando os valores efetivamente assumidos.
- Reconhece que imagem pode ser subconjunto próprio do contradomínio.

**Para o objetivo 3:**
- Usa o teste da reta vertical em gráficos simples.
- Reconhece tabelas com entradas repetidas gerando saídas diferentes como não funções.

**Para o objetivo 4:**
- Verifica se entradas distintas têm imagens distintas.
- Verifica se todo elemento do contradomínio foi atingido.
- Conclui bijetividade quando ambas as condições são satisfeitas.

**Para o objetivo 5:**
- Calcula `(f \circ g)(x)` respeitando a ordem.
- Reconhece que a inversa exige bijetividade ou restrição adequada de domínio.

## 17. Critérios de aceite
O capítulo está adequado se:
- a definição formal de função aparece antes das classificações;
- domínio, contradomínio e imagem são diferenciados com exemplos;
- o capítulo inclui flechas, tabela, fórmula e gráfico;
- injetora, sobrejetora e bijetora são explicadas por critérios verificáveis;
- composta e inversa aparecem como introdução operacional;
- Weierstrass aparece ligado ao rigor da noção de função;
- a conexão VP é formativa e breve;
- não há limite, derivada, continuidade formal ou análise real avançada.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/1serie/unidade-4-funcoes-e-funcao-afim.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13MAT302 e EM13MAT303.
- Karl Weierstrass — formalização rigorosa da análise moderna.
- Bíblia: Provérbios 10:9; Daniel 6:4.
