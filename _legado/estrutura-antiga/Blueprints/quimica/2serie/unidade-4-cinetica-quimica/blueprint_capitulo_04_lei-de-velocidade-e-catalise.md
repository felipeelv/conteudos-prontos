# Blueprint Técnico — Capítulo 4: Lei de Velocidade e Catálise

## 1. Identificação
- Disciplina: Química
- Ano/Série: 2ª Série EM
- Bimestre: 2º
- Unidade: Cinética Química
- Capítulo: 4 de 4
- Título: Lei de Velocidade e Catálise
- Códigos BNCC: EM13CNT301
- Profundidade geral: N3-N4

## 2. Objetivo do capítulo
Levar o aluno a interpretar e usar leis de velocidade experimentais, determinar ordens simples de reação por comparação de ensaios, compreender o papel da constante `k` e diferenciar catálise homogênea, heterogênea e enzimática.

## 3. Pergunta-problema
*"Como prever, a partir de dados experimentais, qual a ordem de uma reação e como sua velocidade muda com a concentração?"*

## 4. Tensão narrativa
Dois ensaios têm a mesma reação, mas velocidades diferentes quando uma concentração dobra. O capítulo mostra que a resposta não está apenas na equação balanceada: a lei de velocidade precisa ser determinada experimentalmente.

## 5. Sequência conceitual obrigatória
1. Retomar que concentração altera velocidade, mas a intensidade do efeito precisa ser medida.
2. Apresentar a lei da ação das massas em contexto histórico com Guldberg e Waage.
3. Formalizar a lei de velocidade: `v = k[A]^alpha[B]^beta`.
4. Explicar que `alpha` e `beta` são ordens parciais determinadas experimentalmente.
5. Diferenciar ordem de reação de coeficiente estequiométrico.
6. Definir ordem total como `alpha + beta`.
7. Resolver casos simples por comparação: dobrar `[A]` e observar se a velocidade dobra, quadruplica ou não muda.
8. Apresentar constante de velocidade `k` como dependente de temperatura e catalisador.
9. Mencionar Arrhenius `k = A.e^(-Ea/RT)` como ideia de dependência, sem cálculo pesado.
10. Retomar catálise como redução de Ea.
11. Diferenciar catalisadores homogêneos e heterogêneos.
12. Apresentar enzimas como catalisadores biológicos específicos, sem Michaelis-Menten.
13. Inserir Berzelius como quem cunhou "catálise" em 1835.
14. Fechar com integridade: catalisar é influenciar sem se consumir nem perder identidade.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Lei da ação das massas | 15% | N3 | Contexto histórico e passagem para expressão matemática. |
| Expressão `v = k[A]^alpha[B]^beta` | 25% | N3-N4 | Coração formal; nomear cada símbolo. |
| Ordem de reação | 20% | N4 | Determinar ordens simples por dados experimentais. |
| Constante de velocidade `k` | 15% | N3 | Depende de T e catalisador; não aprofundar unidades por ordem. |
| Catálise | 25% | N3-N4 | Homogênea, heterogênea, enzimática e efeito na Ea. |

## 7. Conceitos obrigatórios
- Lei da ação das massas
- Lei de velocidade
- Velocidade inicial
- Constante de velocidade
- Ordem parcial
- Ordem total
- Dados experimentais
- Concentração
- Guldberg-Waage
- Catalisador homogêneo
- Catalisador heterogêneo
- Enzima
- Energia de ativação
- Berzelius
- Integridade como influência

## 8. Termos a explicar com tradução curta
- **Lei de velocidade:** expressão matemática que relaciona velocidade e concentração dos reagentes.
- **Ordem parcial:** expoente que mostra como a velocidade depende de uma substância.
- **Ordem total:** soma das ordens parciais.
- **Constante `k`:** fator que ajusta a lei para uma reação em certa temperatura e condição.
- **Catalisador homogêneo:** catalisador na mesma fase dos reagentes.
- **Catalisador heterogêneo:** catalisador em fase diferente dos reagentes.
- **Enzima:** catalisador biológico altamente específico.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- que lei de velocidade é experimental;
- que expoentes não devem ser copiados automaticamente dos coeficientes da equação global;
- como interpretar `v = k[A]^alpha[B]^beta`;
- como determinar ordem por comparação de ensaios simples;
- como prever efeito de dobrar concentração em ordem 0, 1 ou 2;
- que `k` depende de temperatura e catalisador;
- que catalisador reduz Ea por caminho alternativo;
- que catalisador não altera `Delta H` nem posição de equilíbrio;
- diferenças entre catálise homogênea, heterogênea e enzimática;
- que Berzelius cunhou "catálise" e Guldberg-Waage formularam a ação das massas.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- desenvolver mecanismos complexos;
- tratar etapa determinante de velocidade como conteúdo central;
- usar cinética integrada;
- calcular meia-vida;
- deduzir unidades de `k` para todas as ordens como foco principal;
- resolver Arrhenius por logaritmos ou regressão;
- desenvolver Michaelis-Menten;
- antecipar equilíbrio químico além da menção de que catalisador não desloca equilíbrio.

## 11. Linguagem esperada
- Apresentar a fórmula como resumo de dados experimentais, não como regra decorada.
- Usar tabelas de ensaios curtas e comparações controladas.
- Explicar ordem com frases como "se dobrar A e a velocidade quadruplicar, a ordem em A é 2".
- Nomear `alpha` e `beta` como expoentes experimentais.
- Não confundir ação das massas histórica com a regra simplificada de equilíbrio.
- Manter catálise conectada ao gráfico de Ea do capítulo anterior.

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 4 — Lei de Velocidade e Catálise`
- Pergunta-problema: `## Como os dados revelam a ordem de uma reação?`
- Abertura narrativa: ensaios com concentrações diferentes mostram que dobrar reagente nem sempre dobra a velocidade.
- Para Conversar de intro: "Por que a equação balanceada não basta para prever a velocidade?"
- Desenvolvimento em 8 blocos numerados:
  - Bloco 1 — Lei da Ação das Massas
    - `### 1.1 De observações a leis`
    - `### 1.2 Guldberg e Waage`
  - Bloco 2 — Expressão da Lei de Velocidade
    - `### 2.1 v = k[A]^alpha[B]^beta`
    - `### 2.2 O que cada símbolo significa`
  - Bloco 3 — Ordem de Reação
    - `### 3.1 Ordem parcial`
    - `### 3.2 Ordem total`
    - `### 3.3 Comparando ensaios`
  - Bloco 4 — Constante de Velocidade k
    - `### 4.1 O que k carrega`
    - `### 4.2 Temperatura e catalisador`
  - Bloco 5 — Catalisadores Homogêneos
    - `### 5.1 Mesma fase`
    - `### 5.2 Exemplo em solução`
  - Bloco 6 — Catalisadores Heterogêneos
    - `### 6.1 Fase distinta`
    - `### 6.2 Superfície catalítica`
  - Bloco 7 — Catálise Enzimática
    - `### 7.1 Especificidade`
    - `### 7.2 Enzimas digestivas`
  - Bloco 8 — Aplicações Práticas
    - `### 8.1 Conversor catalítico`
    - `### 8.2 Haber, V2O5 e processos industriais`
- Sua Parte: determinar ordens simples por comparação de ensaios e prever efeito de dobrar concentração.
- Enquanto isso...: Daniel como influência íntegra em ambiente de poder.
- E para hoje...: "Em que você acelera o bem sem se consumir?"
- Esse foi o "cara": Berzelius (1779-1848), termo catálise; Guldberg-Waage, ação das massas.
- Você já pensou nisso?: platina acelera reações no carro sem aparecer no produto final.
- Simplificando: a lei de velocidade vem de dados; catalisador diminui Ea.
- Para não esquecer: 5 bullets sobre lei, ordem, `k`, catálise e integridade.

## 13. Âncoras visuais/concretas
- Tabela de velocidades iniciais com três ensaios.
- Quadro "dobrou, quadruplicou, não mudou" para ordem 1, 2 e 0.
- Fórmula `v = k[A]^alpha[B]^beta` com setas nomeando cada parte.
- Diagrama de energia com e sem catalisador.
- Imagem conceitual de catalisador homogêneo em solução e heterogêneo em superfície metálica.
- Exemplos: MnO2 decompondo H2O2, Pt/Pd/Rh em conversor catalítico, Fe no Haber, V2O5 em processo industrial, amilase e lipase.
- Box "Atenção": ordem de reação não é necessariamente coeficiente da equação.

## 14. Conexão Cristã
- Tema: Integridade como influência sem perda de identidade.
- Versículo principal sugerido: Lucas 16:10.
- Versículos de apoio: Tiago 1:17; Daniel 6:10.
- Ponteiro específico: catalisador transforma o processo sem ser consumido globalmente; Daniel influencia a Babilônia sem abandonar sua fé.
- Conexão temática: ser catalisador do bem envolve acelerar transformação correta sem negociar identidade.

## 15. Critérios de aceite
O capítulo está adequado se:
- apresenta `v = k[A]^alpha[B]^beta`;
- explica que ordens são determinadas experimentalmente;
- diferencia ordem de coeficiente estequiométrico;
- resolve exemplos simples de ordem por comparação de dados;
- define ordem parcial e total;
- explica `k` como dependente de temperatura e catalisador;
- diferencia catálise homogênea, heterogênea e enzimática;
- inclui Guldberg-Waage e Berzelius;
- conecta catálise com integridade;
- não antecipa cinética integrada, mecanismos complexos, Arrhenius avançado ou Michaelis-Menten.

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **interpretará** a lei de velocidade e seus símbolos.
2. O aluno **determinará** ordens parciais simples a partir de dados experimentais.
3. O aluno **preverá** efeitos de alteração de concentração sobre a velocidade.
4. O aluno **explicará** o papel da constante `k`.
5. O aluno **diferenciará** tipos de catálise e suas aplicações.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Nomeia `v`, `k`, `[A]`, `[B]`, `alpha` e `beta`.
- Explica que a lei vem de dados experimentais.
- Evita copiar automaticamente coeficientes da equação.

**Para o objetivo 2:**
- Compara dois ensaios mantendo uma variável constante.
- Identifica ordem 0, 1 ou 2 em casos simples.
- Soma ordens parciais para obter ordem total.

**Para o objetivo 3:**
- Prevê velocidade dobrada em primeira ordem.
- Prevê velocidade quadruplicada em segunda ordem.
- Reconhece ausência de efeito em ordem zero.

**Para o objetivo 4:**
- Relaciona `k` à reação em uma temperatura.
- Afirma que temperatura pode alterar `k`.
- Afirma que catalisador pode alterar `k` por mudar o caminho de menor Ea.

**Para o objetivo 5:**
- Identifica catalisador homogêneo pela mesma fase.
- Identifica catalisador heterogêneo pela fase distinta.
- Descreve enzimas como catalisadores biológicos específicos.

### Habilidades BNCC consolidadas no capítulo
- **EM13CNT301:** analisar dados experimentais, construir modelos quantitativos simples e comunicar previsões baseadas em evidências.

## 17. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Quimica/2serie/unidade-4-cinetica-quimica.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- Guldberg, Cato; Waage, Peter. Lei da ação das massas, 1864.
- Berzelius, Jöns Jacob. Formulação do termo catálise, 1835.
- Arrhenius, Svante. Equação de dependência de `k` com temperatura, 1889.
- Bíblia: Lucas 16:10; Tiago 1:17; Daniel 6:10.
