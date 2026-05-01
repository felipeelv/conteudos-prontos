# Blueprint Técnico — Capítulo 3: Cálculo de Probabilidade

## 1. Identificação
- Disciplina: Estatística e Educação Financeira
- Ano/Série: 6º Ano EF
- Bimestre: 2º
- Unidade: 4 — Média Aritmética e Probabilidade
- Capítulo: 3 de 3
- Título: Cálculo de Probabilidade
- Código BNCC: EF06MA30
- Profundidade geral: N3

## 2. Objetivo do capítulo
Ensinar o aluno a calcular a probabilidade clássica de eventos em espaços amostrais finitos e equiprováveis, expressando o resultado em fração, decimal e percentual.

## 3. Pergunta-problema
*"Comprar 1 rifa em 100 dá 1% de chance. Isso é pouco, muito ou só uma forma diferente de dizer 1 em 100?"*

## 4. Tensão narrativa
Chance pode aparecer como fração, decimal ou porcentagem, e cada forma parece contar uma história diferente. O capítulo mostra que são três linguagens para a mesma razão. A tensão é fração × percentual: comparar chances exige traduzir sem mudar o valor. 💭

## 5. Sequência conceitual obrigatória
1. Começar com rifa, dado, moeda ou urna simples.
2. Retomar do Capítulo 2: espaço amostral, evento, casos favoráveis e casos possíveis.
3. Conferir se o experimento tem espaço amostral finito e resultados equiprováveis.
4. Apresentar a fórmula clássica $$P(E) = \frac{n(E)}{n(\Omega)}$$.
5. Traduzir a fórmula como casos favoráveis divididos por casos possíveis.
6. Resolver exemplos com dado, moeda, urna e rifa.
7. Mostrar que $$P = 0$$ significa impossível e $$P = 1$$ significa certo.
8. Consolidar que toda probabilidade fica entre 0 e 1.
9. Converter frações simples para decimal e percentual.
10. Interpretar o resultado em frase contextual.
11. Inserir Pierre-Simon Laplace como referência histórica à definição clássica.
12. Fechar com integridade: numerador e denominador precisam ser contados corretamente.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Fórmula clássica | 40% | N3 | Coração 1. Aplicar a 5-7 situações: dado, moeda, urna, rifa e baralho simplificado. |
| Valor entre 0 e 1 | 25% | N2 | Conectar $$P = 0$$ ao impossível, $$P = 1$$ ao certo e valores intermediários ao provável. |
| Interpretação percentual | 35% | N3 | Coração 2. Converter fração, decimal e percentual em exemplos simples. |

## 7. Conceitos obrigatórios
- Probabilidade clássica
- Evento
- Casos favoráveis
- Casos possíveis
- Espaço amostral
- Equiprovável
- Fração
- Decimal
- Percentual
- Evento impossível
- Evento certo
- Pierre-Simon Laplace

## 8. Termos a explicar com tradução curta
- **Probabilidade:** medida da chance de um evento acontecer.
- **Casos favoráveis:** resultados que fazem o evento acontecer.
- **Casos possíveis:** todos os resultados do espaço amostral.
- **Equiprovável:** quando cada resultado possível tem a mesma chance.
- **Percentual:** forma de escrever uma razão em cada 100.
- **Evento impossível:** evento com probabilidade 0.
- **Evento certo:** evento com probabilidade 1.

## 9. Fórmulas obrigatórias
Usar a fórmula principal:

$$P(E) = \frac{n(E)}{n(\Omega)}$$

Explicar: $$P(E)$$ é a probabilidade do evento E; $$n(E)$$ é o número de casos favoráveis; $$n(\Omega)$$ é o número total de casos possíveis.

Usar também a versão de leitura:

$$P = \frac{\mathrm{favoraveis}}{\mathrm{possiveis}}$$

Usar a ideia de intervalo:

$$0 \leq P \leq 1$$

Conversões obrigatórias:

$$\frac{1}{2} = 0{,}5 = 50\%$$

$$\frac{1}{4} = 0{,}25 = 25\%$$

Pode usar $$\frac{1}{6} \approx 0{,}167 \approx 16{,}7\%$$ como exemplo com aproximação.

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que probabilidade clássica é casos favoráveis divididos por casos possíveis;
- que a fórmula exige espaço amostral finito e equiprovável;
- que o denominador vem do total do espaço amostral;
- que o numerador vem do evento de interesse;
- que o resultado pode ser fração, decimal ou percentual;
- que probabilidade 0 é impossível e probabilidade 1 é certa;
- que probabilidade maior que 1 ou maior que 100% indica erro;
- que a interpretação final deve responder à pergunta do problema;
- que Laplace formulou a definição clássica usada no capítulo.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- ensinar eventos compostos com união ou intersecção;
- ensinar probabilidade condicional;
- usar frequência relativa formal como estimativa de probabilidade;
- comparar probabilidade teórica e experimental em sequência de experimentos sucessivos;
- usar árvore de possibilidades para multiplicar probabilidades de eventos independentes;
- ensinar combinatória formal;
- usar baralho completo com muitos detalhes se isso desviar do conceito principal;
- exigir conversões decimais longas sem necessidade didática.

## 12. Linguagem esperada
- Referência operacional: `Referencias/series.md` — seção **6º e 7º Ano — EF2 anos iniciais**.
- Resolver cada exemplo na ordem: espaço amostral → evento → favoráveis → possíveis → fração → interpretação.
- Nomear numerador e denominador em linguagem natural.
- Em porcentagem, lembrar que 1% significa 1 em cada 100.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 3 — Cálculo de Probabilidade`
- Pergunta-problema: `## Uma chance em cem é a mesma coisa que 1%?`
- Abertura narrativa: rifa escolar com 100 números e aluno comparando comprar 1, 5 ou 10 números.
- Para Conversar de intro: "Por que 0,2, 20% e 1 em 5 parecem diferentes se dizem a mesma chance?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Da Lista Para a Fração
    - `### 1.1 Retomando espaço amostral e evento`
    - `### 1.2 Casos favoráveis sobre casos possíveis`
  - Bloco 2 — A Fórmula Clássica
    - `### 2.1 O que significa cada parte da fórmula`
    - `### 2.2 Quando a fórmula pode ser usada`
  - Bloco 3 — Probabilidade Entre 0 e 1
    - `### 3.1 Impossível, certo e provável`
    - `### 3.2 Conferindo erros de conta`
  - Bloco 4 — Fração, Decimal e Porcentagem
    - `### 4.1 Três formas de dizer a mesma chance`
    - `### 4.2 Comparando chances em situações reais`
- Sua Parte: calcular a chance de tirar número par em um dado e escrever em fração, decimal e percentual.
- Curiosidade da Ciência: Laplace e a definição clássica de probabilidade em 1812.
- Enquanto isso...: Provérbios 21:5 como ponte para diligência no cálculo.
- E para hoje...: conferir números antes de decidir por impulso.
- Esse foi o "cara": Pierre-Simon Laplace (1749-1827), matemático francês ligado à formulação clássica da probabilidade.
- Você já pensou nisso?: 1 em 5, 0,2 e 20% são a mesma chance em três escritas.
- Simplificando: probabilidade é casos favoráveis sobre casos possíveis.
- Para não esquecer: 5 bullets sobre fórmula, equiprovável, intervalo 0 a 1, conversões e interpretação.

## 14. Âncoras visuais/concretas
- Rifa com 100 quadrinhos, destacando 1, 5 e 10 números comprados.
- Dado com faces favoráveis coloridas.
- Urna com bolas de cores diferentes em quantidade pequena.
- Linha de 0 a 1 com impossível, meio provável e certo.
- Quadro de equivalências: fração → decimal → percentual.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Provérbios 21:5.
- Ponteiro específico: a probabilidade depende de dois números honestos, favoráveis e possíveis.
- Conexão temática: inflar o numerador ou esquecer casos do denominador muda a verdade da chance. A diligência confere antes de concluir.

## 16. Critérios de aceite
O capítulo está adequado se:
- aplica $$P(E) = \frac{n(E)}{n(\Omega)}$$ em situações finitas e equiprováveis;
- explica cada parte da fórmula;
- converte fração, decimal e percentual em exemplos simples;
- interpreta probabilidade como valor entre 0 e 1;
- usa Laplace como curiosidade breve;
- exige conferência do espaço amostral antes da fórmula;
- não ensina eventos compostos, frequência relativa formal ou probabilidade condicional.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **calculará** a probabilidade clássica de eventos simples em espaços amostrais finitos e equiprováveis.
2. O aluno **identificará** corretamente casos favoráveis e casos possíveis antes de aplicar a fórmula.
3. O aluno **expressará** probabilidades simples em fração, decimal e percentual.
4. O aluno **interpretará** probabilidades como valores entre 0 e 1, reconhecendo eventos impossíveis e certos.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Escreve a fórmula adequada.
- Substitui $$n(E)$$ e $$n(\Omega)$$ por valores corretos.
- Simplifica ou interpreta a fração quando possível.

**Para o objetivo 2:**
- Identifica o espaço amostral antes de contar o evento.
- Conta casos favoráveis sem misturar com casos possíveis.
- Verifica se os resultados são equiprováveis.

**Para o objetivo 3:**
- Converte $$\frac{1}{2}$$ para 0,5 e 50%.
- Converte $$\frac{1}{4}$$ para 0,25 e 25%.
- Interpreta 1% como 1 em cada 100.

**Para o objetivo 4:**
- Reconhece $$P = 0$$ como impossível.
- Reconhece $$P = 1$$ como certo.
- Identifica erro quando uma probabilidade passa de 1 ou 100%.

### Habilidade BNCC consolidada no capítulo
- **EF06MA30:** calcular a probabilidade de evento aleatório e expressá-la por número racional nas formas fracionária, decimal e percentual.

## 18. Referências
- Framework de origem: `FRAMEWORKS/FRAMEWORKS POR UNIDADE/Estatistica e Educacao Financeira/6ano/unidade-4-media-aritmetica-e-probabilidade.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Referencias/series.md`
- `Referencias/niveis_profundidade.md`
- BNCC: EF06MA30
- Laplace, P.-S. (1812). *Théorie Analytique des Probabilités*.
