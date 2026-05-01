# Blueprint Técnico — Capítulo 8: Máquinas Térmicas

## 1. Identificação
- Disciplina: Física
- Ano/Série: 2ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 — Termodinâmica
- Capítulo: 8 de 8
- Título: Máquinas Térmicas
- Códigos BNCC: EM13CNT102, EM13CNT201, EM13CNT301
- Profundidade geral: N3, com momentos N4 na equivalência conceitual da 2ª Lei e na impossibilidade de rendimento 100%.

## 2. Objetivo do capítulo
Levar o aluno a compreender a 2ª Lei da Termodinâmica como restrição sobre processos espontâneos e máquinas térmicas, calculando rendimento, comparando máquinas reais com Carnot e interpretando entropia como função de estado ligada à irreversibilidade.

## 3. Pergunta-problema
*"Por que nenhum motor transforma todo o calor recebido em trabalho útil?"*

## 4. Tensão narrativa
Um motor recebe energia da combustão, mas aquece, vibra, emite gases quentes e perde energia para o ambiente. A 1ª Lei não proíbe rendimento de 100%, desde que a energia se conserve. A 2ª Lei entra como uma proibição mais profunda: toda máquina térmica real precisa rejeitar calor e todo processo espontâneo tem direção.

## 5. Sequência conceitual obrigatória
1. Retomar o Capítulo 7: em ciclos, `\Delta U = 0`, então calor líquido e trabalho líquido se relacionam.
2. Definir máquina térmica como dispositivo cíclico que recebe `Q_q`, realiza `W` e rejeita `Q_f`.
3. Formular rendimento: `\eta = W/Q_q = 1 - Q_f/Q_q`.
4. Apresentar enunciado de Kelvin da 2ª Lei.
5. Apresentar enunciado de Clausius da 2ª Lei.
6. Discutir a equivalência conceitual: violar uma formulação permitiria violar a outra.
7. Definir entropia como função de estado e princípio `\Delta S \geq 0` em sistema isolado.
8. Apresentar Boltzmann e `S = k \cdot \ln W` qualitativamente.
9. Construir o ciclo de Carnot como modelo reversível ideal.
10. Aplicar `\eta_{Carnot} = 1 - T_f/T_q` com temperaturas em Kelvin.
11. Apresentar refrigerador como ciclo invertido com `COP = Q_f/W`.
12. Introduzir Chandrasekhar como aplicação astrofísica e exemplo de diversidade cultural.
13. Fechar retomando a tensão: a energia se conserva, mas a conversão útil tem limite.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Máquina térmica e rendimento | 20% | N3 | Coração 1. Identificar `Q_q`, `Q_f`, `W` e calcular `\eta`. |
| Enunciados Kelvin e Clausius | 20% | N3 | Mostrar a 2ª Lei como proibição física. |
| Equivalência conceitual da 2ª Lei | 5% | N4 | Discutir sem formalismo excessivo. |
| Entropia e irreversibilidade | 20% | N3 | Tratar `S` como função de estado e `\Delta S \geq 0` como direção espontânea. |
| Interpretação estatística de Boltzmann | 10% | N3 | Usar microestado e macroestado qualitativamente. |
| Ciclo e rendimento de Carnot | 20% | N3 | Coração 2. Aplicar `\eta_{Carnot} = 1 - T_f/T_q` com Kelvin. |
| Refrigerador e COP | 5% | N2 | Mostrar que mover calor do frio para o quente exige trabalho externo. |

## 7. Conceitos obrigatórios
- Máquina térmica
- Fonte quente
- Fonte fria
- Calor recebido `Q_q`
- Calor rejeitado `Q_f`
- Trabalho útil `W`
- Rendimento `\eta`
- 2ª Lei da Termodinâmica
- Enunciado de Kelvin
- Enunciado de Clausius
- Entropia
- Irreversibilidade
- Microestado
- Macroestado
- Ciclo de Carnot
- Rendimento de Carnot
- Refrigerador
- Coeficiente de desempenho
- Rudolf Clausius
- Ludwig Boltzmann
- Subrahmanyan Chandrasekhar

## 8. Termos a explicar com tradução curta
- **Máquina térmica:** dispositivo cíclico que converte parte do calor recebido em trabalho.
- **Fonte quente:** reservatório que fornece calor à máquina.
- **Fonte fria:** reservatório que recebe o calor rejeitado.
- **Rendimento:** fração do calor recebido que vira trabalho útil.
- **Entropia:** função de estado ligada à dispersão da energia e à multiplicidade de microestados.
- **Irreversibilidade:** característica de processos que não retornam espontaneamente ao estado anterior sem deixar efeitos no ambiente.
- **Ciclo de Carnot:** ciclo reversível ideal que estabelece o maior rendimento possível entre duas temperaturas.
- **COP:** medida de desempenho de refrigeradores, igual ao calor retirado da fonte fria por trabalho gasto.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- que máquina térmica opera em ciclo;
- que `W = Q_q - Q_f` em uma máquina térmica idealizada;
- que rendimento nunca chega a 1 em máquinas térmicas reais;
- que a 2ª Lei tem formulações Kelvin e Clausius;
- que geladeira não viola a 2ª Lei porque recebe trabalho externo;
- que entropia é função de estado;
- que `\Delta S \geq 0` em sistema isolado;
- que `S = k \cdot \ln W` deve ser tratada qualitativamente;
- que Carnot é limite máximo teórico;
- que `\eta_{Carnot}` exige temperaturas em Kelvin;
- que Chandrasekhar pode aparecer como aplicação astrofísica da estatística e da termodinâmica, sem detalhar colapso estelar.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- calcular `\Delta S = \int \delta Q/T`;
- desenvolver mecânica estatística formal;
- apresentar ensembles, função de partição ou distribuição de Boltzmann formal;
- detalhar ciclos Otto, Diesel, Stirling, Brayton ou Rankine;
- usar energia livre de Gibbs ou Helmholtz;
- discutir termodinâmica fora do equilíbrio;
- transformar Limite de Chandrasekhar em astrofísica avançada;
- usar Celsius no cálculo de Carnot;
- afirmar que hidrelétricas são limitadas pelo mesmo rendimento de máquinas térmicas.

## 11. Linguagem esperada
- Linguagem técnica de 2ª Série EM, com forte apoio em exemplos cotidianos.
- Fórmulas acompanhadas de leitura física e de identificação de cada variável.
- Insistir na diferença entre "conservar energia" e "converter energia com rendimento 100%".
- Usar Kelvin sempre que houver razão de temperaturas.
- Tratar entropia com rigor conceitual, mas sem cálculo universitário.
- Evitar frases deterministas simplistas como "entropia é desordem" sem explicar dispersão energética e multiplicidade.

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 8 — Máquinas Térmicas`
- Pergunta-problema: `## Por que nenhum motor tem rendimento de 100%?`
- Abertura narrativa: motor de carro, geladeira aquecendo a cozinha e café esfriando sozinho; mostrar que a 2ª Lei responde aos três casos.
- Para Conversar de intro: "A 1ª Lei permitiria uma máquina perfeita? Então por que ela não existe?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Máquinas Térmicas e Rendimento
    - `### 1.1 Fonte quente, fonte fria e trabalho`
    - `### 1.2 Calculando rendimento`
  - Bloco 2 — A 2ª Lei como Proibição
    - `### 2.1 Kelvin: não há máquina 100%`
    - `### 2.2 Clausius: calor não sobe sozinho do frio ao quente`
  - Bloco 3 — Entropia e Irreversibilidade
    - `### 3.1 Entropia como função de estado`
    - `### 3.2 Boltzmann e os microestados`
  - Bloco 4 — Carnot, Refrigeradores e Limites Reais
    - `### 4.1 O ciclo ideal de Carnot`
    - `### 4.2 Rendimento máximo e temperaturas em Kelvin`
    - `### 4.3 Refrigerador como ciclo invertido`
- Fórmulas centrais em destaque:
  - `\eta = \frac{W}{Q_q}`
  - `\eta = 1 - \frac{Q_f}{Q_q}`
  - `\eta_{Carnot} = 1 - \frac{T_f}{T_q}`
  - `S = k \cdot \ln W`
  - `k = 1{,}38 \times 10^{-23}\mathrm{J/K}`
  - `\Delta S \geq 0`
  - `COP = \frac{Q_f}{W}`
- Exemplo obrigatório: máquina recebe `Q_q = 2000 J` e rejeita `Q_f = 1400 J`; calcular `W = 600 J` e `\eta = 0{,}30`.
- Exemplo obrigatório de Carnot: `T_q = 600 K` e `T_f = 300 K`; calcular `\eta_{Carnot} = 0{,}50`.
- Sua Parte: comparar rendimento real de uma máquina com limite de Carnot.
- NA VIDA REAL: Angra II, termoelétricas, motor de carro, refrigerador PROCEL e Itaipu como contraste não térmico.
- Enquanto isso: Clausius, Boltzmann e Chandrasekhar constroem uma linha histórica da irreversibilidade à aplicação astrofísica.
- E para hoje: Provérbios 10:9 e a ideia de que todo caminho tem custo.
- Você já pensou nisso?: "Por que uma geladeira precisa aquecer a cozinha para resfriar seu interior?"
- Simplificando: a 2ª Lei diz que há direção e custo nas transformações reais.
- Para não esquecer: 5 bullets sobre rendimento, 2ª Lei, entropia, Carnot e Kelvin.

## 13. Âncoras visuais/concretas
- Esquema de máquina térmica com fonte quente, trabalho e fonte fria.
- Diagrama de fluxo energético: `Q_q`, `W`, `Q_f`.
- Comparação entre motor ideal impossível e motor real.
- Café esfriando e gota de tinta se espalhando como imagens de irreversibilidade.
- Ciclo de Carnot representado qualitativamente no diagrama PV.
- Geladeira como máquina térmica invertida.
- Escala Kelvin destacada antes do cálculo de Carnot.

## 14. Conexão VP
- Unidade VP: Integridade.
- Versículo principal sugerido: Provérbios 10:9.
- Personagem bíblico: Daniel, como referência de integridade assumida mesmo com custo.
- Ponteiro específico: a 2ª Lei mostra que toda conversão real tem ônus; integridade reconhece custos em vez de prometer atalhos impossíveis.
- Conexão temática: quem promete rendimento 100% vende uma impossibilidade física; quem promete vida sem consequência vende uma impossibilidade moral.
- Pergunta formativa: "Onde você tenta buscar resultado sem assumir o custo correspondente?"

## 15. Critérios de aceite
O capítulo está adequado se:
- preserva a pergunta-problema sobre rendimento 100%;
- define máquina térmica por `Q_q`, `Q_f` e `W`;
- calcula rendimento com `\eta = W/Q_q = 1 - Q_f/Q_q`;
- apresenta os enunciados Kelvin e Clausius;
- explica geladeira como ciclo invertido que exige trabalho externo;
- define entropia como função de estado sem reduzi-la apenas a "bagunça";
- usa `S = k \cdot \ln W` qualitativamente;
- aplica Carnot com temperaturas em Kelvin;
- inclui Clausius, Boltzmann e Chandrasekhar sem desviar para biografia longa;
- não antecipa mecânica estatística formal, energia livre ou ciclos reais detalhados.

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **descreverá** o funcionamento de uma máquina térmica em termos de fonte quente, fonte fria e trabalho.
2. O aluno **calculará** rendimento de máquinas térmicas usando calor recebido, calor rejeitado e trabalho.
3. O aluno **explicará** os enunciados Kelvin e Clausius da 2ª Lei.
4. O aluno **interpretará** entropia e irreversibilidade em situações qualitativas.
5. O aluno **comparará** o rendimento real de máquinas com o limite de Carnot usando temperaturas em Kelvin.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Identifica `Q_q`, `Q_f` e `W` em esquemas.
- Afirma que a máquina térmica opera em ciclo.

**Para o objetivo 2:**
- Calcula `W = Q_q - Q_f`.
- Calcula `\eta = W/Q_q`.
- Converte rendimento decimal em porcentagem.

**Para o objetivo 3:**
- Explica por que uma máquina 100% violaria Kelvin.
- Explica por que calor não flui espontaneamente do frio para o quente.

**Para o objetivo 4:**
- Reconhece processos irreversíveis cotidianos.
- Relaciona `\Delta S \geq 0` à direção espontânea em sistema isolado.
- Interpreta microestados de forma qualitativa.

**Para o objetivo 5:**
- Usa Kelvin em `\eta_{Carnot} = 1 - T_f/T_q`.
- Compara rendimento real com rendimento máximo.
- Reconhece que Carnot é limite ideal, não meta atingível por máquinas reais.

### Competências consolidadas no capítulo
- Modelagem de máquinas térmicas.
- Argumentação sobre limites físicos e sustentabilidade.
- Interpretação de leis como restrições, não apenas fórmulas.
- Comparação entre idealização, tecnologia real e eficiência energética.

## 17. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/2serie/unidade-4-termodinamica.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13CNT102, EM13CNT201, EM13CNT301.
- Clausius, Rudolf. Trabalhos sobre 2ª Lei e entropia (1854-1865).
- Boltzmann, Ludwig. Interpretação estatística da entropia (1877).
- Chandrasekhar, Subrahmanyan. Trabalhos sobre estrelas compactas (1930-1931).
- Halliday, Resnick & Walker. `Fundamentos de Física`, vol. 2.
- Tipler & Mosca. `Física para Cientistas e Engenheiros`, vol. 1.
- ANEEL, Eletronuclear, INMETRO/CONPET, PROCEL/Eletrobras.
- Bíblia: Daniel 6:4; Provérbios 10:9.
