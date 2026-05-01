# Blueprint Tecnico - Capitulo 2: Coeficientes e Comportamento

## 1. Identificacao
- Disciplina: Matematica 1
- Ano/Serie: 9o Ano - Ensino Fundamental II
- Bimestre: 2o
- Unidade: 4 - Funcao Afim
- Capitulo: 2 de 4
- Titulo: Coeficientes e Comportamento
- Codigo BNCC principal: EF09MA06
- Codigo BNCC complementar: EF09MA08
- Profundidade geral: N3 - CONSOLIDA

## 2. Objetivo do capitulo
Levar o aluno a interpretar como os coeficientes `a` e `b` determinam a inclinacao, o sentido, o intercepto e a taxa de variacao de uma funcao afim.

## 3. Pergunta-problema
*"O que muda no grafico quando mudamos o valor de a ou de b?"*

## 4. Tensao narrativa
Duas funcoes podem ter formulas parecidas e graficos bem diferentes. O desafio e aprender a ler os numeros da formula como informacoes sobre a forma da reta.

## 5. Sequencia conceitual obrigatoria
1. Retomar a forma `f(x) = ax + b`.
2. Interpretar `a` como inclinacao da reta.
3. Mostrar com tabelas que `a > 0` gera funcao crescente.
4. Mostrar com tabelas que `a < 0` gera funcao decrescente.
5. Interpretar `b` como intercepto no eixo y.
6. Demonstrar que `f(0) = b`.
7. Apresentar taxa de variacao como variacao de `y` dividida pela variacao de `x`.
8. Calcular `a` a partir de dois pontos.
9. Usar Fermat como referencia historica breve para coeficientes e forma da reta.
10. Conectar VP: taxa constante como coerencia no caminho.

## 6. Pesos internos
| Subtopico | Peso | Nivel | Orientacao |
|---|---:|---|---|
| Coeficiente angular como inclinacao | 25% | N3 | Relacionar `a` a subida ou descida a cada passo horizontal. |
| `a > 0` crescente e `a < 0` decrescente | 30% | N3 | Usar tabela e grafico para comparar valores de `x` e `f(x)`. |
| Coeficiente linear como intercepto | 20% | N3 | Mostrar `f(0) = b` e o ponto `(0, b)`. |
| Taxa de variacao | 25% | N3 | Calcular por dois pontos e interpretar em contexto. |

## 7. Conceitos obrigatorios
- Coeficiente angular.
- Inclinacao.
- Funcao crescente.
- Funcao decrescente.
- Coeficiente linear.
- Intercepto no eixo y.
- Taxa de variacao.
- Variacao de `x`.
- Variacao de `y`.
- Pierre de Fermat.

## 8. Termos a explicar com traducao curta
- **Funcao crescente:** quando `x` aumenta, `f(x)` tambem aumenta.
- **Funcao decrescente:** quando `x` aumenta, `f(x)` diminui.
- **Taxa de variacao:** quanto `f(x)` muda para cada unidade que `x` muda.
- **Intercepto:** ponto em que a reta cruza um eixo.
- **Inclinacao:** leitura visual da subida ou descida da reta.

## 9. Escopo obrigatorio
O capitulo DEVE explicar:
- papel de `a` na inclinacao;
- `a > 0` como funcao crescente;
- `a < 0` como funcao decrescente;
- papel de `b` como intercepto no eixo y;
- prova operacional de que `f(0) = b`;
- taxa de variacao a partir de dois pontos;
- interpretacao de `a` em exemplos com unidades;
- Fermat como referencia historica breve;
- ponte VP com Proverbios 10:9.

## 10. Escopo proibido (NAO ANTECIPAR)
O capitulo NAO DEVE:
- calcular zero da funcao como conteudo central;
- fazer estudo do sinal por intervalos;
- resolver inequacoes;
- explicar coeficiente angular como tangente do angulo;
- tratar retas paralelas e perpendiculares formalmente;
- usar derivadas;
- antecipar funcao quadratica.

## 11. Linguagem esperada
- Usar comparacoes visuais entre retas com mesmo `b` e `a` diferente.
- Usar comparacoes visuais entre retas com mesmo `a` e `b` diferente.
- Sempre interpretar `a` com unidade quando o exemplo tiver contexto real.
- Evitar "sobe porque sobe"; explicar que a cada aumento de 1 em `x`, `f(x)` varia `a`.
- Manter Fermat em paragrafo historico curto.

## 12. Estrutura do capitulo (slots a preencher)
- Titulo: `# Capitulo 2 - Coeficientes e Comportamento`
- Pergunta-problema: `## Como a e b mudam a reta?`
- Abertura narrativa: dois vendedores com salario fixo e comissoes diferentes.
- Para Conversar de intro: "E melhor receber mais fixo ou maior porcentagem de comissao?"
- Desenvolvimento em 4 blocos:
  - Bloco 1 - O coeficiente angular
    - `### 1.1 A inclinacao da reta`
    - `### 1.2 Quanto y muda quando x aumenta`
  - Bloco 2 - Crescente e decrescente
    - `### 2.1 Quando a > 0`
    - `### 2.2 Quando a < 0`
  - Bloco 3 - O coeficiente linear
    - `### 3.1 O ponto (0, b)`
    - `### 3.2 Como b desloca a reta`
  - Bloco 4 - Taxa de variacao
    - `### 4.1 Calculando a por dois pontos`
    - `### 4.2 Interpretando a unidade da taxa`
- Enquanto isso: Fermat e a ideia de que equacoes descrevem lugares geometricos.
- NA VIDA REAL: salario base mais comissao.
- E para hoje: Proverbios 10:9 e a seguranca de andar com a mesma inclinacao.
- Simplificando: `a` decide o sentido e a inclinacao; `b` decide o ponto inicial no eixo y.
- Para nao esquecer: 5 bullets sobre `a`, `b`, crescimento, decrescimento e taxa.

## 13. Formulas e notacoes centrais
- `f(x) = ax + b`
- `f(0) = b`
- `a > 0` indica funcao crescente.
- `a < 0` indica funcao decrescente.
- `a = \frac{y_2 - y_1}{x_2 - x_1}`
- `a = \frac{f(x_2) - f(x_1)}{x_2 - x_1}`

## 14. Exemplo obrigatorio
Usar pelo menos um exemplo completo com vendedores:
- Carlos: `C(x) = 0,05x + 1200`.
- Mariana: `M(x) = 0,10x + 800`.
- Interpretacao:
  - Carlos tem maior valor fixo.
  - Mariana tem maior taxa de variacao.
- Calculo sugerido para `x = 8000`:
  - `C(8000) = 1600`
  - `M(8000) = 1600`
- Discussao: mesmo resultado nesse ponto, mas comportamentos diferentes antes e depois dele, sem resolver formalmente como sistema.

## 15. Ancoras visuais/concretas
- Duas retas com mesmo `b` e `a` diferente.
- Duas retas com mesmo `a` e `b` diferente.
- Tabela mostrando variacao constante.
- Destaque do intercepto `(0, b)`.
- Setas indicando subida para `a > 0` e descida para `a < 0`.

## 16. Conexao VP
- Unidade VP: Integridade.
- Versiculo principal sugerido: Proverbios 10:9.
- Ponteiro especifico: taxa de variacao constante significa que a reta caminha com a mesma inclinacao.
- Conexao tematica: quem anda em integridade nao muda a regra conforme o contexto; Daniel preservou a mesma direcao em situacoes diferentes.
- Pergunta formativa: "Sua postura muda muito quando muda o ambiente, ou sua inclinacao continua a mesma?"

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **interpretara** o coeficiente angular como inclinacao e taxa de variacao.
2. O aluno **determinara** crescimento ou decrescimento pelo sinal de `a`.
3. O aluno **interpretara** o coeficiente linear como intercepto no eixo y.
4. O aluno **calculara** a taxa de variacao a partir de dois pontos.
5. O aluno **comparara** funcoes afins por seus coeficientes.

### Indicadores de aprendizagem
- Explica o efeito de mudar `a`.
- Explica o efeito de mudar `b`.
- Conclui corretamente crescimento quando `a > 0`.
- Conclui corretamente decrescimento quando `a < 0`.
- Calcula `a` com dois pontos sem inverter a razao.

## 18. Criterios de aceite
O capitulo esta adequado se:
- explica inclinacao, crescimento, decrescimento, intercepto e taxa de variacao;
- usa tabela e grafico para justificar o comportamento;
- inclui `f(0) = b`;
- inclui calculo de `a` por dois pontos;
- traz exemplo real com unidade de medida ou dinheiro;
- apresenta Fermat de modo breve e conectado aos coeficientes;
- nao antecipa zero, estudo do sinal ou tangente do angulo.

## 19. Referencias
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Matematica/9ano/unidade-4-funcao-afim.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EF09MA06 e EF09MA08.
- Pierre de Fermat - geometria analitica e equacoes de retas.
- Biblia: Proverbios 10:9.
