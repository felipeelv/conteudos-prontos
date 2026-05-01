# Blueprint Técnico — Capítulo 7: Movimentos Compostos

## 1. Identificação
- Disciplina: Física
- Ano/Série: 1ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 — Cinemática Vetorial
- Capítulo: 7 de 8
- Título: Movimentos Compostos
- Códigos BNCC: EM13CNT204, EM13CNT301, EM13CNT302
- Profundidade geral: N3 — APRESENTA + CONSOLIDA

## 2. Objetivo do capítulo
Levar o aluno a compreender e aplicar o princípio da independência dos movimentos, analisando lançamentos horizontais e oblíquos por componentes vetoriais para calcular tempo de queda, tempo de voo, altura máxima e alcance.

## 3. Pergunta-problema
*"Se uma bola é lançada horizontalmente e outra é solta da mesma altura no mesmo instante, por que elas chegam juntas ao chão?"*

## 4. Tensão narrativa
Uma bola é empurrada para fora de uma mesa enquanto outra é simplesmente solta da mesma altura. A intuição sugere que a bola lançada deveria "demorar mais", porque também se move para frente. A Física mostra que a queda vertical não depende da velocidade horizontal: os dois movimentos acontecem ao mesmo tempo, mas obedecem a leis independentes.

## 5. Sequência conceitual obrigatória
1. Abrir com o experimento mental das duas bolas saindo da mesma altura.
2. Formular o princípio da independência dos movimentos: movimentos perpendiculares simultâneos podem ser analisados separadamente.
3. Retomar MU no eixo horizontal e queda livre/MUV no eixo vertical.
4. Resolver o lançamento horizontal com `t_{queda} = \sqrt{2h/g}` e `x = v_0 t`.
5. Introduzir Tartaglia como pioneiro da balística matemática e Galileu como referência para a independência dos movimentos.
6. Apresentar lançamento oblíquo como velocidade inicial decomposta em `V_{0x}` e `V_{0y}`.
7. Derivar o sentido físico de `T_{voo}`, `H_{max}` e alcance.
8. Explicar alcance máximo em 45° no modelo ideal com lançamento e queda no mesmo nível.
9. Aplicar o conteúdo a salto em distância, esportes e jatos d'água, explicitando limites do modelo ideal.
10. Fechar retomando a tensão: horizontal e vertical são componentes independentes de um mesmo movimento.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Princípio da independência dos movimentos | 15% | N2 | Fundamento conceitual. Mostrar que a componente horizontal não altera a queda vertical no modelo ideal. |
| Lançamento horizontal | 20% | N3 | Trabalhar tempo de queda, alcance horizontal e leitura física de `v_x` constante. |
| Decomposição de `v_0` em x e y | 25% | N3 | Coração 1. Todo lançamento oblíquo deve começar por `V_{0x}` e `V_{0y}`. |
| Tempo de voo e altura máxima | 15% | N3 | Aplicar MUV vertical; destacar que no topo `V_y = 0`. |
| Alcance horizontal | 15% | N3 | Coração 2. Aplicar `A = v_0^2 \sin(2\theta)/g` com interpretação física. |
| Alcance máximo em 45° | 10% | N2 | Explicar como consequência de `\sin(2\theta)`, sem transformar em cálculo de otimização. |

## 7. Conceitos obrigatórios
- Movimento composto
- Princípio da Independência dos Movimentos
- Movimento uniforme horizontal
- Queda livre
- MUV vertical
- Lançamento horizontal
- Lançamento oblíquo
- Decomposição vetorial
- `V_{0x}`
- `V_{0y}`
- Tempo de queda
- Tempo de voo
- Altura máxima
- Alcance horizontal
- Trajetória parabólica
- Alcance máximo
- Niccolò Tartaglia
- Galileu

## 8. Termos a explicar com tradução curta
- **Movimento composto:** movimento que pode ser entendido como soma de dois movimentos simultâneos.
- **Independência dos movimentos:** ideia de que a componente horizontal e a vertical seguem suas próprias leis.
- **Componente horizontal:** parte do movimento na direção x; no modelo ideal, é MU.
- **Componente vertical:** parte do movimento na direção y; no modelo ideal, é MUV com aceleração `g`.
- **Tempo de voo:** tempo total entre lançamento e retorno ao mesmo nível.
- **Altura máxima:** ponto mais alto da trajetória, quando a velocidade vertical instantânea é zero.
- **Alcance:** distância horizontal entre o ponto de lançamento e o ponto de queda.
- **Trajetória parabólica:** curva resultante da combinação entre MU horizontal e MUV vertical.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- o experimento comparativo entre bola solta e bola lançada horizontalmente;
- o princípio de Galileu para movimentos independentes;
- que `v_x` é constante quando não há aceleração horizontal no modelo ideal;
- que a queda vertical é descrita por MUV com aceleração gravitacional;
- que, no lançamento horizontal, `t_{queda}` depende de `h` e `g`, não de `v_0`;
- a decomposição `V_{0x} = v_0 \cos{\theta}` e `V_{0y} = v_0 \sin{\theta}`;
- que `T_{voo}` depende da componente vertical inicial;
- que `H_{max}` ocorre quando `V_y = 0`;
- que o alcance padrão vale para lançamento e queda no mesmo nível;
- que o alcance máximo em 45° é uma conclusão do modelo ideal;
- a participação de Tartaglia como pioneiro da balística quantitativa;
- a conexão com salto em distância e a diferença entre modelo ideal e corpo real.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- aprofundar resistência do ar ou força de arrasto;
- discutir Coriolis, rotação terrestre ou curvatura da Terra;
- trabalhar movimento orbital com energia ou gravitação avançada;
- usar cálculo diferencial ou derivadas para otimização;
- tratar lançamento com altura inicial diferente como caso principal;
- resolver problemas de plataforma móvel, vento lateral ou colisões;
- transformar Tartaglia em biografia longa desconectada da balística.

## 11. Linguagem esperada
- Linguagem de 1ª Série EM, com termos técnicos definidos antes da aplicação algébrica.
- Parágrafos curtos alternados com equações e interpretações.
- Fórmulas sempre acompanhadas de leitura física: "o que cada variável representa" e "quando posso usar".
- Usar `g = 10 m/s^2` nos exemplos operacionais, salvo quando o autor explicitar outra aproximação.
- Evitar abertura metalinguística como "Neste capítulo vamos estudar...".
- Manter notação consistente: `\vec{v}`, `V_{0x}`, `V_{0y}`, `T_{voo}`, `H_{max}`, `\sin`, `\cos`.

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 7 — Movimentos Compostos`
- Pergunta-problema: `## Por que uma bola lançada para frente cai junto com uma bola solta?`
- Abertura narrativa: duas bolas saindo da mesma altura; uma solta, outra lançada horizontalmente; tensão entre intuição e modelo físico; encerrar com chamada de reflexão.
- Para Conversar de intro: "O movimento para frente deveria atrapalhar a queda? Por quê?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Dois Movimentos ao Mesmo Tempo
    - `### 1.1 O princípio da independência`
    - `### 1.2 Horizontal é uma coisa, vertical é outra`
  - Bloco 2 — Lançamento Horizontal
    - `### 2.1 Tempo de queda`
    - `### 2.2 Alcance horizontal`
  - Bloco 3 — Lançamento Oblíquo
    - `### 3.1 Decompondo a velocidade inicial`
    - `### 3.2 Tempo de voo e altura máxima`
    - `### 3.3 Alcance e ângulo de 45°`
  - Bloco 4 — Modelo Ideal e Mundo Real
    - `### 4.1 Tartaglia e a balística matemática`
    - `### 4.2 Salto em distância e limites do modelo`
- Fórmulas centrais em destaque:
  - `t_{queda} = \sqrt{\frac{2h}{g}}`
  - `x = v_0 t_{queda}`
  - `V_{0x} = v_0 \cos{\theta}`
  - `V_{0y} = v_0 \sin{\theta}`
  - `T_{voo} = \frac{2 v_0 \sin{\theta}}{g}`
  - `H_{max} = \frac{(v_0 \sin{\theta})^2}{2g}`
  - `A = \frac{v_0^2 \sin{(2\theta)}}{g}`
- Exemplo obrigatório: `v_0 = 20 m/s`, `\theta = 30°`, `g = 10 m/s^2` → `V_{0x} ≈ 17,3 m/s`, `V_{0y} = 10 m/s`, `T_{voo} = 2 s`, `H_{max} = 5 m`, `A ≈ 34,6 m`.
- Sua Parte: resolver um lançamento horizontal e um lançamento oblíquo, sempre separando eixo x e eixo y.
- NA VIDA REAL: salto em distância olímpico; explicar por que o ângulo real ótimo fica perto de 22°, não 45°.
- Enquanto isso: Tartaglia publica `Nova Scientia` em 1537 e inaugura a análise matemática da balística.
- E para hoje: Lucas 16:10 e integridade das componentes; cada parte do movimento conserva sua regra.
- Você já pensou nisso?: "Quais erros aparecem quando tento resolver tudo com uma única fórmula sem separar as componentes?"
- Simplificando: movimentos compostos são analisados em partes independentes que, juntas, formam a trajetória total.
- Para não esquecer: 5 bullets sobre independência, MU horizontal, MUV vertical, decomposição e alcance.

## 13. Âncoras visuais/concretas
- Diagrama com duas bolas saindo da mesma altura: uma solta e uma lançada horizontalmente.
- Trajetória parabólica com setas separadas para `V_{0x}` e `V_{0y}`.
- Tabela comparando eixo x e eixo y: tipo de movimento, aceleração, equação usada.
- Gráfico simples de alcance por ângulo, destacando 45° no modelo ideal.
- Cena de salto em distância com vetores horizontal e vertical na decolagem.
- Ilustração histórica discreta de Tartaglia associada a projéteis e ângulos.

## 14. Conexão VP
- Unidade VP: Integridade.
- Versículo principal sugerido: Lucas 16:10.
- Personagem bíblico: Daniel, como referência de coerência em diferentes ambientes.
- Ponteiro específico: no movimento composto, cada componente é fiel à sua lei; na vida, integridade é manter coerência nas diferentes dimensões.
- Conexão temática: a componente horizontal não finge ser vertical, e a vertical não invade a horizontal. Entender o todo exige respeitar a verdade de cada parte.
- Pergunta formativa: "Em que dimensão da vida você precisa ser fiel no pequeno para que o todo também seja íntegro?"

## 15. Critérios de aceite
O capítulo está adequado se:
- preserva a pergunta-problema das duas bolas;
- explica o princípio da independência antes das fórmulas;
- separa horizontal e vertical em todos os exemplos centrais;
- usa corretamente `V_{0x}`, `V_{0y}`, `T_{voo}`, `H_{max}`, `\sin` e `\cos`;
- resolve pelo menos um exemplo numérico completo de lançamento oblíquo;
- inclui lançamento horizontal com tempo de queda independente da velocidade horizontal;
- apresenta Tartaglia e Galileu sem desviar do objetivo físico;
- inclui NA VIDA REAL com salto em distância e limitação biomecânica;
- mantém resistência do ar apenas como limite qualitativo do modelo;
- inclui objetivos e indicadores observáveis ligados à BNCC.

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **explicará** o princípio da independência dos movimentos, usando o exemplo de duas bolas lançadas da mesma altura.
2. O aluno **calculará** tempo de queda e alcance em lançamento horizontal, a partir de altura e velocidade horizontal fornecidas.
3. O aluno **decomporá** a velocidade inicial em `V_{0x}` e `V_{0y}` em problemas de lançamento oblíquo.
4. O aluno **determinará** tempo de voo, altura máxima e alcance horizontal em lançamento oblíquo no mesmo nível.
5. O aluno **avaliará** os limites do modelo ideal, distinguindo previsão teórica e situação real com resistência do ar ou biomecânica.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Afirma que movimentos horizontal e vertical podem ser analisados separadamente.
- Reconhece que a velocidade horizontal não altera o tempo de queda no modelo ideal.

**Para o objetivo 2:**
- Usa `t_{queda} = \sqrt{2h/g}` corretamente.
- Calcula `x = v_0 t` e identifica a unidade do alcance.

**Para o objetivo 3:**
- Calcula `V_{0x} = v_0 \cos{\theta}`.
- Calcula `V_{0y} = v_0 \sin{\theta}`.
- Mantém coerência de unidades e arredondamentos.

**Para o objetivo 4:**
- Usa `T_{voo} = 2v_0\sin{\theta}/g` quando lançamento e queda estão no mesmo nível.
- Identifica que `H_{max}` ocorre quando `V_y = 0`.
- Aplica `A = v_0^2\sin(2\theta)/g` e interpreta o resultado.

**Para o objetivo 5:**
- Explica por que o alcance real pode ser menor que o ideal.
- Reconhece que o ângulo de 45° é máximo do modelo ideal, não regra universal para todo corpo real.

### Competências consolidadas no capítulo
- Modelagem de fenômenos com idealizações explícitas.
- Uso de vetores para decompor movimentos.
- Interpretação de equações físicas e dados numéricos.
- Argumentação sobre previsões, limites e evidências.

## 17. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/1serie/unidade-4-cinematica-vetorial.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13CNT204, EM13CNT301, EM13CNT302.
- Tartaglia, Niccolò. `Nova Scientia` (1537).
- Galilei, Galileo. `Discorsi e Dimostrazioni Matematiche` (1638).
- Halliday, Resnick & Walker. `Fundamentos de Física`, vol. 1.
- Hay, J. G. `The Biomechanics of Sports Techniques` (1985).
- World Athletics — Long Jump Records.
- Bíblia: Daniel 6:4; Lucas 16:10.
