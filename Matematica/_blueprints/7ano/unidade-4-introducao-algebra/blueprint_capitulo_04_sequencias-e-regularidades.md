# Blueprint Tecnico - Capitulo 4: Sequencias e Regularidades

## 1. Identificacao
- Disciplina: Matematica 1
- Ano/Serie: 7o Ano - Ensino Fundamental II
- Bimestre: 2o
- Unidade: 4 - Introducao a Algebra
- Capitulo: 4 de 4
- Titulo: Sequencias e Regularidades
- Codigos BNCC: EF07MA13, EF07MA14 como habilidade relacionada
- Profundidade geral: N3 - CONSOLIDA e ALIMENTA

## 2. Objetivo do capitulo
Levar o aluno a identificar padroes em sequencias, diferenciar descricoes recursivas e nao recursivas e usar expressoes algebricas simples para representar regularidades.

## 3. Pergunta-problema
*"Como descobrir um termo distante de uma sequencia sem calcular todos os anteriores?"*

## 4. Tensao narrativa
Algumas sequencias permitem saber o proximo termo olhando para o anterior. Outras podem ser descritas por uma formula direta. A forca da algebra esta em transformar o padrao observado em uma regra que funciona para muitos termos.

## 5. Sequencia conceitual obrigatoria
1. Retomar sequencias numericas simples e padroes visuais.
2. Identificar regularidades por diferencas, razoes e alternancias simples.
3. Definir sequencia recursiva como regra que depende de termo anterior.
4. Mostrar caso base como informacao necessaria em regras recursivas.
5. Definir sequencia nao recursiva como formula direta em funcao de `n`.
6. Comparar vantagens de regra recursiva e formula direta.
7. Construir expressao algebrica para regularidade simples.
8. Reconhecer equivalencia entre expressoes que descrevem a mesma sequencia.
9. Apresentar recursao em arte, literatura ou natureza como curiosidade pedagogica.
10. Usar Brook Taylor como referencia historica breve sobre padroes, formulas gerais e diferencas finitas.
11. Conectar sequencias a habitos integros e regularidade.
12. Fechar com calculo de termo proximo e termo distante.

## 6. Pesos internos
| Subtopico | Peso | Nivel | Orientacao |
|---|---:|---|---|
| Identificacao de padroes | 20% | N3 | Observar diferencas, razoes e alternancias. |
| Sequencias recursivas | 25% | N3 | `a_n` depende do termo anterior; exigir caso base. |
| Sequencias nao recursivas | 25% | N3 | `a_n = f(n)`; calcular termo direto. |
| Expressao algebrica para regularidade | 15% | N3 | Generalizar por letra. |
| Equivalencia de expressoes | 10% | N2 | Mesma sequencia com formas equivalentes. |
| Recursao na arte e literatura | 5% | N1 | Curiosidade breve, sem desviar do foco matematico. |

## 7. Conceitos obrigatorios
- Sequencia.
- Padrao.
- Regularidade.
- Sequencia recursiva.
- Caso base.
- Sequencia nao recursiva.
- Termo geral.
- Equivalencia de expressoes.
- Brook Taylor.

## 8. Termos a explicar com traducao curta
- **Sequencia:** lista ordenada de termos.
- **Padrao:** regra ou regularidade que organiza os termos.
- **Recursiva:** regra que usa termo anterior para encontrar o proximo.
- **Nao recursiva:** formula direta que usa a posicao `n`.
- **Caso base:** termo inicial necessario para iniciar uma regra recursiva.
- **Termo geral:** expressao que permite calcular o termo de posicao `n`.

## 9. Escopo obrigatorio
O capitulo DEVE explicar:
- padroes em sequencias numericas;
- sequencia recursiva com exemplo `2, 5, 11, 23, 47...`;
- formula recursiva como "dobro do anterior mais 1";
- necessidade de termo inicial;
- sequencia nao recursiva como `a_n = f(n)`;
- expressao algebrica para regularidade;
- equivalencia de expressoes em exemplos simples;
- mencao breve a Fibonacci, natureza, arte ou literatura;
- Brook Taylor como referencia historica breve;
- ponte VP com Daniel 6:10.

## 10. Escopo proibido (NAO ANTECIPAR)
O capitulo NAO DEVE:
- ensinar PA e PG completas;
- desenvolver formulas de soma de PA ou PG;
- trabalhar serie de Taylor tecnicamente;
- formalizar funcoes;
- usar limites ou somatorios;
- transformar Fibonacci em estudo avancado;
- antecipar conteudos de 8o ano ou Ensino Medio.

## 11. Linguagem esperada
- Usar "posicao" e "termo" com clareza.
- Sempre informar os primeiros termos antes de uma regra recursiva.
- Comparar regra recursiva e formula direta por utilidade.
- Evitar excesso de simbolismo antes da leitura verbal.
- Usar tabelas `n` e `a_n` para apoiar a generalizacao.
- Explicar equivalencia por teste de alguns valores antes de formalizar.

## 12. Estrutura do capitulo (slots a preencher)
- Titulo: `# Capitulo 4 - Sequencias e Regularidades`
- Pergunta-problema: `## Todo padrao precisa ser calculado passo a passo?`
- Abertura narrativa: descobrir a regra escondida em uma lista de numeros ou figuras.
- Para Conversar de intro: "Na sequencia `2, 5, 11, 23, 47`, como voce encontraria o proximo termo? E o 20o?"
- Desenvolvimento em 4 blocos:
  - Bloco 1 - Padroes em sequencias
    - `### 1.1 Observar diferencas e repeticoes`
    - `### 1.2 Padroes numericos e visuais`
  - Bloco 2 - Regras recursivas
    - `### 2.1 O proximo depende do anterior`
    - `### 2.2 Caso base`
  - Bloco 3 - Regras nao recursivas
    - `### 3.1 Formula direta`
    - `### 3.2 Calcular termos distantes`
  - Bloco 4 - Regularidade em linguagem algebrica
    - `### 4.1 Expressao para o termo geral`
    - `### 4.2 Expressoes equivalentes`
- Enquanto isso: Brook Taylor, diferencas finitas e formulas gerais.
- NA VIDA REAL: Fibonacci na natureza, rotinas, populacoes e padroes em arte.
- E para hoje: Daniel 6:10 e regularidade que forma identidade.
- Simplificando: recursiva usa o anterior; nao recursiva usa a posicao; algebra descreve o padrao.
- Para nao esquecer: 5 bullets sobre sequencia, padrao, recursao, formula direta e caso base.

## 13. Formulas e notacoes centrais
- $$a_n = g(a_{n-1})$$
- $$a_n = f(n)$$
- $$a_1 = 2$$
- $$a_n = 2a_{n-1} + 1$$

## 14. Ancoras visuais/concretas
- Tabela com posicao `n` e termo `a_n`.
- Sequencia de figuras crescendo por padrao.
- Linha do tempo de termos.
- Cartao comparativo: recursiva versus nao recursiva.
- Alerta visual: regra recursiva sem termo inicial fica incompleta.

## 15. Conexao VP
- Unidade VP: Integridade.
- Versiculo principal sugerido: Daniel 6:10.
- Ponteiro especifico: sequencias recursivas modelam habitos integros, em que um padrao repetido cria identidade.
- Conexao tematica: regularidade nao e repeticao vazia; e coerencia mantida ao longo do tempo.
- Pergunta formativa: "Que padroes repetidos na sua rotina estao formando quem voce se torna?"

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **identificara** padroes em sequencias numericas e visuais.
2. O aluno **descrevera** sequencias recursivas usando termo anterior.
3. O aluno **explicara** a necessidade de caso base em regra recursiva.
4. O aluno **usara** formulas nao recursivas simples para calcular termos.
5. O aluno **reconhecera** expressoes equivalentes em regularidades simples.

### Indicadores de aprendizagem
- Encontra o proximo termo de uma sequencia por diferenca ou regra verbal.
- Escreve que `2, 5, 11, 23...` segue "dobro do anterior mais 1".
- Indica `a_1 = 2` como caso base dessa sequencia.
- Usa uma formula direta simples para calcular `a_10`.
- Reconhece que duas expressoes simples podem gerar a mesma lista de valores.

## 17. Criterios de aceite
O capitulo esta adequado se:
- padroes aparecem antes de formulas;
- sequencias recursivas e nao recursivas sao diferenciadas;
- caso base e tratado explicitamente;
- expressao algebrica para regularidade aparece;
- Taylor aparece de modo breve e sem desenvolvimento tecnico de series;
- a conexao VP e curta e ligada a regularidade;
- nao ha ensino de PA/PG completas;
- nao ha secao final `## Formulas do capitulo`.

## 18. Referencias
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/7ano/unidade-4-introducao-algebra.md`
- Blueprint da unidade: `blueprint_unidade.md`
- BNCC: EF07MA13; EF07MA14 como habilidade relacionada.
- Brook Taylor - padroes, formulas gerais e diferencas finitas.
- Biblia: Daniel 6:10.
