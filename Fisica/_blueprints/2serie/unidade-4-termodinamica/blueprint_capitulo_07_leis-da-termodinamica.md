# Blueprint Técnico — Capítulo 7: Leis da Termodinâmica

## 1. Identificação
- Disciplina: Física
- Ano/Série: 2ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 — Termodinâmica
- Capítulo: 7 de 8
- Título: Leis da Termodinâmica
- Códigos BNCC: EM13CNT102, EM13CNT201, EM13CNT301
- Profundidade geral: N3, com momentos N4 em função de estado, função de caminho e ciclos.

## 2. Objetivo do capítulo
Levar o aluno a compreender a 1ª Lei da Termodinâmica como conservação de energia em sistemas térmicos, calculando trabalho do gás, variação de energia interna, calor trocado e comportamento de ciclos com convenção de sinais consistente.

## 3. Pergunta-problema
*"Quando um gás empurra um pistão, de onde vem a energia que virou trabalho?"*

## 4. Tensão narrativa
Uma panela de pressão aquece, o vapor empurra a válvula e parte da energia recebida do fogão aparece como movimento. A intuição pode tratar calor como algo que simplesmente "entra e esquenta". A termodinâmica exige uma contabilidade mais precisa: parte do calor altera a energia interna e parte pode sair como trabalho realizado pelo gás.

## 5. Sequência conceitual obrigatória
1. Abrir com um gás aquecido em pistão ou panela de pressão.
2. Definir sistema termodinâmico, vizinhança e fronteira móvel.
3. Estabelecer a convenção de sinais: `Q > 0` recebido e `W > 0` realizado pelo gás.
4. Apresentar trabalho do gás como energia transferida por deslocamento da fronteira.
5. Interpretar trabalho como área sob a curva no diagrama PV.
6. Calcular trabalho em isobárica, isocórica e isotérmica.
7. Definir energia interna `U` como função de estado.
8. Diferenciar função de estado (`U`) de função de caminho (`Q` e `W`).
9. Formular e aplicar a 1ª Lei: `\Delta U = Q - W`.
10. Aplicar a lei a ciclos termodinâmicos com `\Delta U = 0`.
11. Introduzir Clausius como formalizador moderno da termodinâmica.
12. Fechar retomando a tensão: a energia não some; ela se reparte entre variação interna e trabalho.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Sistema, vizinhança e convenção de sinais | 10% | N1-N2 | Fixar linguagem operacional antes das contas. |
| Trabalho do gás como área no diagrama PV | 20% | N3 | Coração 1. Ler expansão, compressão e trabalho nulo a partir de `\Delta V`. |
| Trabalho isobárico, isocórico e isotérmico | 20% | N3 | Usar `W = P \cdot \Delta V`, `W = 0` e `W = nRT \cdot \ln(V_2/V_1)`. |
| Energia interna como função de estado | 10% | N2-N3 | Relacionar `U` a temperatura e ao estado atual do gás ideal. |
| 1ª Lei `\Delta U = Q - W` | 25% | N3 | Coração 2. Resolver balanços energéticos com sinais. |
| Ciclo termodinâmico | 10% | N4 | Mostrar que `\Delta U = 0` e, portanto, `Q_{ciclo} = W_{ciclo}`. |
| Conexões históricas e interdisciplinares | 5% | N1 | Clausius, termoquímica e engenharia como contexto breve. |

## 7. Conceitos obrigatórios
- Sistema termodinâmico
- Vizinhança
- Fronteira
- Trabalho do gás
- Diagrama PV
- Transformação isobárica
- Transformação isocórica
- Transformação isotérmica
- Energia interna
- Função de estado
- Função de caminho
- Calor recebido
- Trabalho realizado
- 1ª Lei da Termodinâmica
- Ciclo termodinâmico
- Rudolf Clausius

## 8. Termos a explicar com tradução curta
- **Sistema termodinâmico:** porção de matéria escolhida para análise.
- **Vizinhança:** tudo que interage com o sistema.
- **Trabalho do gás:** energia transferida quando o gás desloca uma fronteira, como um pistão.
- **Energia interna:** energia microscópica associada ao estado das partículas do sistema.
- **Função de estado:** grandeza que depende apenas do estado inicial e final, não do caminho.
- **Função de caminho:** grandeza cujo valor depende da trajetória do processo.
- **Ciclo:** transformação que retorna ao estado inicial.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- que o sistema adotado define o sinal do trabalho;
- que `W > 0` quando o gás se expande e realiza trabalho;
- que `W < 0` quando o gás é comprimido;
- que `W = 0` em transformação isocórica;
- que o trabalho no diagrama PV é área sob a curva;
- que a isobárica gera área retangular;
- que a isotérmica usa `W = nRT \cdot \ln(V_2/V_1)` sem dedução por cálculo;
- que energia interna é função de estado;
- que calor e trabalho não são propriedades armazenadas no sistema;
- que a 1ª Lei é uma forma de conservação da energia;
- que em um ciclo `\Delta U = 0`;
- que Clausius organizou a formulação moderna da termodinâmica.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- desenvolver 2ª Lei, entropia ou Carnot como conteúdo central;
- calcular ciclo de Carnot completo;
- aprofundar `c_p`, `c_v` ou relação de Mayer;
- usar transformação adiabática com `PV^\gamma = cte` como cálculo obrigatório;
- introduzir energia livre de Gibbs ou Helmholtz;
- usar cálculo integral formal para resolver `W = \int P dV`;
- trocar a convenção de sinais no meio do capítulo.

## 11. Linguagem esperada
- Linguagem técnica de 2ª Série EM, com termos definidos antes de serem usados em problemas.
- Manter sinais e unidades explícitos em todos os exemplos.
- Apresentar fórmulas depois de uma leitura física do fenômeno.
- Usar diagramas PV como apoio conceitual, não como decoração.
- Evitar frases vagas como "calor vira energia" sem especificar o balanço.
- Preservar a convenção `\Delta U = Q - W` em todo o texto.

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 7 — Leis da Termodinâmica`
- Pergunta-problema: `## Quando um gás faz trabalho, quem paga essa conta?`
- Abertura narrativa: panela de pressão, pistão ou seringa aquecida; mostrar calor entrando, gás expandindo e energia interna mudando.
- Para Conversar de intro: "Se o gás empurra o pistão, ele ganha energia ou perde energia?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Sistema, Calor e Trabalho
    - `### 1.1 O que é o sistema?`
    - `### 1.2 Convenção de sinais`
  - Bloco 2 — Trabalho em Transformações Gasosas
    - `### 2.1 Área no diagrama PV`
    - `### 2.2 Isobárica, isocórica e isotérmica`
  - Bloco 3 — Energia Interna e 1ª Lei
    - `### 3.1 Energia interna como função de estado`
    - `### 3.2 A contabilidade \Delta U = Q - W`
  - Bloco 4 — Ciclos e Sentido Físico
    - `### 4.1 Por que em ciclo \Delta U = 0`
    - `### 4.2 Clausius e a formulação moderna`
- Fórmulas centrais em destaque:
  - `W = P \cdot \Delta V`
  - `W = 0`
  - `W = nRT \cdot \ln\frac{V_2}{V_1}`
  - `U = \frac{3}{2}nRT`
  - `\Delta U = \frac{3}{2}nR\Delta T`
  - `\Delta U = Q - W`
  - `\Delta U_{ciclo} = 0`
- Exemplo obrigatório: um gás recebe `Q = 800 J` e realiza `W = 500 J`; calcular `\Delta U = 300 J` e interpretar o resultado.
- Exemplo obrigatório com sinal: um gás é comprimido com `W = -200 J` e perde `Q = -100 J`; calcular `\Delta U = 100 J`.
- Sua Parte: resolver um caso isobárico por área retangular e um caso de 1ª Lei com sinais.
- NA VIDA REAL: motor de combustão interna e termoelétrica como exemplos de calor recebido, trabalho útil e rejeitos térmicos.
- Enquanto isso: Clausius, em 1850, reorganiza Carnot, Mayer, Joule e Helmholtz em uma formulação moderna da 1ª Lei.
- E para hoje: Lucas 16:10 e a ideia de contabilidade fiel.
- Você já pensou nisso?: "Por que duas trajetórias entre os mesmos estados podem ter valores diferentes de calor e trabalho?"
- Simplificando: a 1ª Lei é a contabilidade da energia em sistemas térmicos.
- Para não esquecer: 5 bullets sobre sistema, sinais, trabalho como área, função de estado e ciclo.

## 13. Âncoras visuais/concretas
- Pistão com gás recebendo calor e empurrando uma massa.
- Diagrama PV com área retangular em transformação isobárica.
- Diagrama PV com linha vertical isocórica e trabalho nulo.
- Curva isotérmica no diagrama PV com área sombreada.
- Tabela de sinais para `Q`, `W` e `\Delta U`.
- Ciclo retangular simples mostrando trabalho líquido como área interna.

## 14. Conexão VP
- Unidade VP: Integridade.
- Versículo principal sugerido: Lucas 16:10.
- Personagem bíblico: Daniel, como referência de coerência e fidelidade.
- Ponteiro específico: a 1ª Lei afirma que a contabilidade da energia fecha; integridade é não fingir perda nem inventar ganho.
- Conexão temática: quem é fiel no pouco reconhece os sinais, os custos e os efeitos de cada ação; na Física, o balanço energético não aceita atalhos.
- Pergunta formativa: "Em que situações pequenas você é tentado a esconder uma perda ou inflar um ganho?"

## 15. Critérios de aceite
O capítulo está adequado se:
- preserva a pergunta-problema do trabalho do gás;
- define sistema, vizinhança e fronteira;
- fixa a convenção de sinais antes de resolver problemas;
- usa `\Delta U = Q - W` em todas as aplicações;
- explica trabalho como área no diagrama PV;
- cobre isobárica, isocórica e isotérmica;
- distingue função de estado e função de caminho;
- inclui ciclos com `\Delta U = 0`;
- apresenta Clausius de forma breve e funcional;
- mantém 2ª Lei, entropia e Carnot apenas como ponte para o capítulo seguinte.

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **identificará** sistema, vizinhança, calor e trabalho em situações termodinâmicas simples.
2. O aluno **calculará** trabalho do gás em transformações isobáricas, isocóricas e isotérmicas.
3. O aluno **distinguirá** função de estado e função de caminho usando energia interna, calor e trabalho.
4. O aluno **aplicará** a 1ª Lei da Termodinâmica com convenção de sinais consistente.
5. O aluno **analisará** ciclos termodinâmicos reconhecendo que `\Delta U = 0`.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Delimita corretamente o sistema em um problema.
- Atribui sinal adequado a `Q` e `W`.

**Para o objetivo 2:**
- Calcula `W = P \cdot \Delta V` em isobárica.
- Reconhece `W = 0` em isocórica.
- Usa `W = nRT \cdot \ln(V_2/V_1)` em isotérmica sem exigir dedução formal.

**Para o objetivo 3:**
- Afirma que `U` depende apenas do estado.
- Reconhece que `Q` e `W` dependem do caminho.

**Para o objetivo 4:**
- Resolve `\Delta U = Q - W` com sinais corretos.
- Interpreta se a energia interna aumenta, diminui ou permanece constante.

**Para o objetivo 5:**
- Explica por que `\Delta U = 0` em ciclo.
- Relaciona o trabalho líquido à área interna do ciclo no diagrama PV.

### Competências consolidadas no capítulo
- Modelagem de sistemas térmicos.
- Interpretação de diagramas PV.
- Uso rigoroso de sinais e unidades.
- Aplicação de conservação de energia a fenômenos térmicos.

## 17. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/2serie/unidade-4-termodinamica.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13CNT102, EM13CNT201, EM13CNT301.
- Clausius, Rudolf. `Über die bewegende Kraft der Wärme` (1850).
- Halliday, Resnick & Walker. `Fundamentos de Física`, vol. 2.
- Tipler & Mosca. `Física para Cientistas e Engenheiros`, vol. 1.
- Bíblia: Daniel 6:4; Lucas 16:10.
