# Blueprint Técnico — Capítulo 2: Espaço Amostral e Eventos

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 6º Ano EF
- Bimestre: 2º
- Unidade: 4 — Média Aritmética e Probabilidade
- Capítulo: 2 de 3
- Título: Espaço Amostral e Eventos
- Código BNCC: EF06MA30
- Profundidade geral: N3

## 2. Objetivo do capítulo
Ensinar o aluno a listar todos os resultados possíveis de um experimento aleatório, representar o espaço amostral e identificar eventos e casos favoráveis.

## 3. Pergunta-problema
*"Você joga dois dados ao mesmo tempo. Quantos resultados diferentes podem sair antes de qualquer conta de chance?"*

## 4. Tensão narrativa
Quando alguém quer um resultado, costuma olhar primeiro para o que favorece. A matemática exige o contrário: antes de torcer, é preciso listar tudo. A tensão do capítulo é honestidade contábil: sem espaço amostral completo, qualquer chance calculada depois fica distorcida. 💭

## 5. Sequência conceitual obrigatória
1. Começar com dado, moeda, rifa ou sorteio simples.
2. Retomar experimento aleatório como situação em que o resultado não é conhecido antes.
3. Definir espaço amostral como conjunto de todos os resultados possíveis.
4. Apresentar a notação $$\Omega$$ como opcional e sempre explicada.
5. Representar espaço amostral com lista entre chaves, tabela ou árvore.
6. Mostrar exemplos de 1 dado, 1 moeda, 2 moedas e 2 dados.
7. Definir evento como parte do espaço amostral que interessa à pergunta.
8. Identificar casos favoráveis como resultados que pertencem ao evento.
9. Contar $$n(\Omega)$$ e $$n(E)$$ sem ainda dividir para calcular probabilidade.
10. Inserir Blaise Pascal e a correspondência com Fermat como origem histórica da listagem de possibilidades em jogos.
11. Fechar com integridade: listar tudo, inclusive o que não favorece.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Espaço amostral | 30% | N3 | Coração 1. Ensinar enumeração completa por lista, tabela ou árvore. |
| Representação | 20% | N2 | Usar chaves, tabela 6 × 6 para 2 dados e árvore para moedas. |
| Evento como subconjunto | 30% | N3 | Coração 2. Selecionar resultados de interesse dentro do espaço amostral. |
| Casos favoráveis | 20% | N2 | Contar resultados pertencentes ao evento, preparando o Capítulo 3. |

## 7. Conceitos obrigatórios
- Experimento aleatório
- Espaço amostral
- Notação $$\Omega$$
- Resultado possível
- Evento
- Subconjunto, em linguagem intuitiva
- Caso favorável
- Equiprovável
- Diagrama em árvore
- Blaise Pascal
- Pierre de Fermat, apenas como menção secundária

## 8. Termos a explicar com tradução curta
- **Experimento aleatório:** situação em que sabemos os resultados possíveis, mas não sabemos qual vai acontecer.
- **Espaço amostral:** lista de todos os resultados possíveis.
- **Evento:** parte do espaço amostral que interessa à pergunta.
- **Caso favorável:** resultado que faz o evento acontecer.
- **Equiprovável:** quando todos os resultados têm a mesma chance.
- **Diagrama em árvore:** desenho que abre ramos para mostrar possibilidades em etapas.

## 9. Fórmulas e notações permitidas
Usar apenas notação de contagem:

$$n(\Omega)$$

$$n(E)$$

Explicar: $$n(\Omega)$$ é o número de resultados possíveis; $$n(E)$$ é o número de casos favoráveis.

Não calcular $$P(E)$$ neste capítulo. A divisão fica para o Capítulo 3.

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que espaço amostral inclui todos os resultados possíveis;
- que esquecer um resultado compromete qualquer cálculo posterior;
- que evento é um conjunto de resultados dentro do espaço amostral;
- que um evento pode ter 1, 2 ou vários casos favoráveis;
- que a representação pode ser lista, tabela ou árvore;
- que em dois dados a ordem importa quando os dados são lançados simultaneamente e identificados por par ordenado;
- que contar casos favoráveis prepara a fórmula de probabilidade do próximo capítulo;
- que Pascal contribuiu para a origem da probabilidade matemática ao listar possibilidades em jogos.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- calcular probabilidade com $$P(E) = \frac{n(E)}{n(\Omega)}$$;
- converter chance para fração, decimal ou percentual;
- ensinar união, intersecção ou complementar de eventos;
- usar linguagem formal de teoria dos conjuntos além do necessário;
- ensinar combinatória formal, permutação, arranjo ou combinação;
- ensinar probabilidade condicional;
- comparar probabilidade teórica com frequência experimental.

## 12. Linguagem esperada
- Referência operacional: `Referencias/series.md` — seção **6º e 7º Ano — EF2 anos iniciais**.
- Usar "lista completa" antes de "espaço amostral".
- Usar "parte da lista" antes de "evento".
- Manter a contagem visível e conferir se há repetição ou omissão.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 2 — Espaço Amostral e Eventos`
- Pergunta-problema: `## Antes de calcular a chance, você sabe listar tudo o que pode acontecer?`
- Abertura narrativa: dois dados sobre a mesa, com aluno vendo só a soma 7 antes de perceber os 36 pares possíveis.
- Para Conversar de intro: "Você costuma pensar em todas as possibilidades ou só nas que quer que aconteçam?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Antes da Chance, a Lista
    - `### 1.1 Experimentos aleatórios`
    - `### 1.2 Espaço amostral`
  - Bloco 2 — Como Representar Possibilidades
    - `### 2.1 Lista entre chaves`
    - `### 2.2 Tabela e árvore`
  - Bloco 3 — Evento: a Parte Que Interessa
    - `### 3.1 Evento dentro do espaço amostral`
    - `### 3.2 Casos favoráveis`
  - Bloco 4 — Conferir Para Não Esquecer
    - `### 4.1 Dois dados e pares possíveis`
    - `### 4.2 O erro de contar só o que aparece primeiro`
- Sua Parte: listar o espaço amostral de 2 moedas e marcar o evento "sair exatamente uma cara".
- Curiosidade da Ciência: Pascal e Fermat listando possibilidades para dividir apostas interrompidas com justiça.
- Enquanto isso...: Lucas 14:28 como ponte para calcular antes de agir.
- E para hoje...: considerar possibilidades antes de uma decisão.
- Esse foi o "cara": Blaise Pascal (1623-1662), matemático, físico e teólogo francês.
- Você já pensou nisso?: a propaganda mostra quem ganhou; o espaço amostral mostra quantos poderiam não ganhar.
- Simplificando: espaço amostral é o todo; evento é a parte; caso favorável é cada resultado da parte.
- Para não esquecer: 5 bullets sobre experimento aleatório, espaço amostral, representação, evento e casos favoráveis.

## 14. Âncoras visuais/concretas
- Lista $$\Omega = \{1, 2, 3, 4, 5, 6\}$$ para um dado.
- Árvore para dois lançamentos de moeda.
- Tabela 6 × 6 para dois dados.
- Destaque colorido dos pares cuja soma é 7.
- Quadro "todo → parte → casos favoráveis".

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Lucas 14:28.
- Ponteiro específico: listar o espaço amostral é assumir todas as possibilidades, não apenas as convenientes.
- Conexão temática: honestidade matemática começa antes da fórmula. O aluno precisa ver o todo para falar com verdade sobre a parte.

## 16. Critérios de aceite
O capítulo está adequado se:
- define espaço amostral como todos os resultados possíveis;
- apresenta representação por lista, tabela e árvore;
- define evento como parte do espaço amostral;
- identifica e conta casos favoráveis;
- prepara a fórmula de probabilidade sem aplicá-la;
- usa Pascal como curiosidade breve;
- não calcula probabilidade nem converte para porcentagem.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **listará** o espaço amostral de experimentos aleatórios simples.
2. O aluno **representará** resultados possíveis por lista, tabela ou árvore.
3. O aluno **identificará** eventos como partes do espaço amostral.
4. O aluno **contará** casos favoráveis sem confundi-los com casos possíveis.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Lista todos os resultados de um dado ou moeda.
- Reconhece quando faltam resultados na lista.
- Diferencia resultado possível de resultado desejado.

**Para o objetivo 2:**
- Usa chaves em listas simples.
- Monta tabela para dois dados com pares possíveis.
- Usa árvore para experimento em etapas simples.

**Para o objetivo 3:**
- Marca no espaço amostral os resultados que pertencem ao evento.
- Descreve evento em linguagem clara.
- Reconhece evento com um ou mais resultados favoráveis.

**Para o objetivo 4:**
- Conta $$n(\Omega)$$ corretamente.
- Conta $$n(E)$$ corretamente.
- Explica que a divisão para probabilidade será feita depois.

### Habilidade BNCC consolidada no capítulo
- **EF06MA30:** preparar o cálculo de probabilidade por identificação do evento aleatório, do espaço amostral e dos casos favoráveis.

## 18. Referências
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/6ano/unidade-4-media-aritmetica-e-probabilidade.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Referencias/series.md`
- `Referencias/niveis_profundidade.md`
- BNCC: EF06MA30
- Pascal, B. e Fermat, P. (1654). Correspondência sobre o problema dos pontos.
