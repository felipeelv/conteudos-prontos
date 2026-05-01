# Blueprint Técnico — Capítulo 1: Classificação e Propriedades Gerais

## 1. Identificação
- Disciplina: Geometria
- Ano/Série: 1ª Série EM
- Bimestre: 2º
- Unidade: 4 — Quadriláteros
- Capítulo: 1 de 2
- Título: Classificação e Propriedades Gerais
- Código BNCC: apoio para EM13MAT308 e EM13MAT505
- Profundidade geral: N3

## 2. Objetivo do capítulo
Ensinar o aluno a definir quadriláteros, reconhecer elementos e diagonais, justificar a soma dos ângulos internos como 360° e organizar os quadriláteros notáveis em uma hierarquia inclusiva.

## 3. Pergunta-problema
*"Como uma única figura pode ser quadrado, retângulo, losango, paralelogramo, trapézio e quadrilátero ao mesmo tempo?"*

## 4. Tensão narrativa
A aparência de uma figura parece sugerir uma única classificação, mas a geometria trabalha com definições e herança de propriedades. A tensão do capítulo é forma visível × identidade matemática: o quadrado não perde propriedades quando é reconhecido em níveis diferentes da hierarquia.

## 5. Sequência conceitual obrigatória
1. Abrir com uma janela, ladrilho ou tabuleiro para mostrar uma figura que acumula classificações.
2. Definir quadrilátero como polígono de 4 lados.
3. Nomear vértices, lados, ângulos internos e diagonais.
4. Mostrar que um quadrilátero possui 2 diagonais.
5. Retomar a fórmula da soma dos ângulos internos de polígonos e aplicar o caso $$n = 4$$.
6. Fixar que a soma dos ângulos internos de qualquer quadrilátero é 360°.
7. Definir trapézio pela definição inclusiva: pelo menos 1 par de lados paralelos.
8. Definir paralelogramo como quadrilátero com 2 pares de lados paralelos.
9. Definir retângulo, losango e quadrado como casos especiais de paralelogramo.
10. Construir a hierarquia: quadrilátero > trapézio > paralelogramo > retângulo/losango > quadrado.
11. Fechar com exemplos e contraexemplos que testem a hierarquia.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Definição e elementos | 15% | N2 | Quadrilátero, vértices, lados, ângulos internos e diagonais. |
| Soma dos ângulos internos | 15% | N3 | Deduzir 360° a partir de $$(n - 2) \cdot 180°$$ com $$n = 4$$. |
| Classificação dos quadriláteros | 35% | N3 | Construir a hierarquia inclusiva com exemplos visuais. |
| Quadriláteros notáveis | 35% | N3 | Definir trapézio, paralelogramo, retângulo, losango e quadrado. |

## 7. Conceitos obrigatórios
- Quadrilátero
- Polígono
- Vértice
- Lado
- Ângulo interno
- Diagonal
- Soma dos ângulos internos
- Trapézio
- Paralelogramo
- Retângulo
- Losango
- Quadrado
- Hierarquia inclusiva
- Herança de propriedades

## 8. Termos a explicar com tradução curta
- **Quadrilátero:** polígono de 4 lados.
- **Diagonal:** segmento que liga dois vértices não consecutivos.
- **Trapézio:** quadrilátero com pelo menos 1 par de lados paralelos.
- **Paralelogramo:** quadrilátero com 2 pares de lados paralelos.
- **Retângulo:** paralelogramo com 4 ângulos retos.
- **Losango:** paralelogramo com 4 lados iguais.
- **Quadrado:** quadrilátero que é retângulo e losango ao mesmo tempo.
- **Hierarquia inclusiva:** organização em que uma figura mais específica herda propriedades da classe mais geral.

## 9. Fórmulas obrigatórias
Soma dos ângulos internos do quadrilátero:
$$\hat{A} + \hat{B} + \hat{C} + \hat{D} = 360^\circ$$

Caso $$n = 4$$ na fórmula dos polígonos:
$$S = (n - 2) \cdot 180^\circ$$

$$S = (4 - 2) \cdot 180^\circ = 360^\circ$$

Quantidade de diagonais no quadrilátero:
$$D = \frac{4 \cdot (4 - 3)}{2} = 2$$

Relações de inclusão a apresentar em texto corrido:
$$\mathrm{quadrado} \subset \mathrm{retangulo}$$

$$\mathrm{quadrado} \subset \mathrm{losango}$$

$$\mathrm{retangulo} \subset \mathrm{paralelogramo}$$

$$\mathrm{losango} \subset \mathrm{paralelogramo}$$

$$\mathrm{paralelogramo} \subset \mathrm{trapezio}$$

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que quadriláteros são polígonos de 4 lados;
- que todo quadrilátero possui 2 diagonais;
- que todo quadrilátero tem soma dos ângulos internos igual a 360°;
- que a classificação adotada é inclusiva;
- que trapézio tem pelo menos 1 par de lados paralelos;
- que paralelogramo é caso especial de trapézio;
- que retângulo e losango são casos especiais de paralelogramo;
- que quadrado é retângulo e losango simultaneamente;
- que uma figura pode pertencer a várias classes sem contradição;
- que exemplos cotidianos devem ser usados para testar as definições.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- demonstrar formalmente propriedades de paralelogramos, pois isso é Capítulo 2;
- ensinar base média do trapézio, pois isso é Capítulo 2;
- ensinar áreas dos quadriláteros;
- ensinar quadriláteros inscritos em circunferência;
- aprofundar Teorema de Varignon com demonstração formal;
- usar geometria analítica ou coordenadas para classificar figuras;
- apresentar sólidos geométricos como foco de estudo.

## 12. Linguagem esperada
- Referência operacional: `Gerador de Blueprint/series.md` — seção **1ª e 2ª Série EM**.
- Usar linguagem formal, mas sempre ancorada em figuras.
- Evitar "parece" como critério conclusivo; usar "tem" ou "satisfaz a definição".
- Usar "é também" para reforçar herança: "todo quadrado é também retângulo".
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Classificação e Propriedades Gerais`
- Pergunta-problema: `## Uma figura pode ter várias identidades?`
- Abertura narrativa: uma janela retangular do colégio que também é paralelogramo, trapézio e quadrilátero.
- Para Conversar de intro: "O que muda quando você troca o olhar da aparência pela definição?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — O que é um Quadrilátero
    - `### 1.1 Quatro lados, quatro vértices`
    - `### 1.2 Diagonais e ângulos internos`
  - Bloco 2 — Por que a Soma Dá 360°
    - `### 2.1 Retomando a fórmula dos polígonos`
    - `### 2.2 O caso especial dos quadriláteros`
  - Bloco 3 — A Hierarquia dos Quadriláteros
    - `### 3.1 Trapézio e paralelogramo`
    - `### 3.2 Retângulo, losango e quadrado`
  - Bloco 4 — Classificar é Verificar Definições
    - `### 4.1 Exemplos do cotidiano`
    - `### 4.2 Erros comuns de classificação`
- Sua Parte: classificar figuras dadas e justificar cada resposta por definição.
- Curiosidade da Ciência: Pierre Varignon e o paralelogramo formado pelos pontos médios de qualquer quadrilátero, sem demonstração formal.
- Enquanto isso...: Tiago 1:8 como ponte para coerência de identidade.
- E para hoje...: antes de classificar uma figura, perguntar quais propriedades ela satisfaz.
- Esse foi o "cara": Pierre Varignon, matemático francês associado ao teorema dos pontos médios.
- Você já pensou nisso?: por que um quadrado pode ser mais de uma coisa sem deixar de ser quadrado?
- Simplificando: quadriláteros têm hierarquia; figuras mais específicas acumulam propriedades das mais gerais.
- Para não esquecer: 5 bullets sobre quadrilátero, diagonais, soma 360°, hierarquia inclusiva e quadrado.

## 14. Âncoras visuais/concretas
- Janela retangular.
- Tabuleiro de xadrez com quadrados.
- Pipa em forma de losango.
- Telhado ou rampa com forma trapezoidal.
- Diagrama hierárquico dos quadriláteros.
- Quadrilátero genérico com diagonais desenhadas.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Tiago 1:8.
- Ponteiro específico: o quadrado mantém coerência em todos os níveis de sua identidade geométrica.
- Conexão temática: integridade é coerência entre o que algo é em sua definição e as propriedades que manifesta.

## 16. Critérios de aceite
O capítulo está adequado se:
- define quadrilátero e seus elementos;
- calcula ou justifica que há 2 diagonais;
- deduz a soma de 360° para os ângulos internos;
- usa a definição inclusiva de trapézio;
- afirma que paralelogramo é trapézio;
- afirma que quadrado é retângulo e losango;
- usa exemplos e contraexemplos;
- não antecipa propriedades formais de paralelogramos nem áreas.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **identificará** elementos de um quadrilátero e suas diagonais.
2. O aluno **justificará** a soma dos ângulos internos de um quadrilátero.
3. O aluno **classificará** quadriláteros notáveis pela definição inclusiva.
4. O aluno **explicará** a hierarquia entre trapézio, paralelogramo, retângulo, losango e quadrado.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Nomeia lados, vértices, ângulos internos e diagonais.
- Reconhece que diagonais ligam vértices não consecutivos.
- Identifica corretamente as 2 diagonais de um quadrilátero.

**Para o objetivo 2:**
- Aplica $$(n - 2) \cdot 180^\circ$$ com $$n = 4$$.
- Conclui que a soma é 360°.
- Usa a propriedade para resolver ângulos desconhecidos simples.

**Para o objetivo 3:**
- Diferencia trapézio, paralelogramo, retângulo, losango e quadrado.
- Classifica uma figura por propriedades, não apenas por aparência.
- Justifica cada classificação com definição.

**Para o objetivo 4:**
- Explica por que todo quadrado é retângulo.
- Explica por que todo retângulo é paralelogramo.
- Explica por que todo paralelogramo é trapézio na definição inclusiva.

### Habilidade BNCC consolidada no capítulo
- Apoio para **EM13MAT308** e **EM13MAT505**, por organizar relações geométricas úteis em demonstrações e ladrilhamentos.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/1serie/unidade-4-quadrilateros.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- BNCC: apoio para EM13MAT308 e EM13MAT505
- Pierre Varignon — Teorema de Varignon, publicado postumamente em 1731.
