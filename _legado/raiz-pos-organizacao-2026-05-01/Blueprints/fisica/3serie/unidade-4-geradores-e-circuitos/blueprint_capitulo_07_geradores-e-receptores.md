# Blueprint Tecnico — Capitulo 7: Geradores e Receptores

## 1. Identificacao
- Disciplina: Fisica
- Ano/Serie: 3ª Serie — Ensino Medio
- Bimestre: 2º
- Unidade: 4 — Geradores e Circuitos
- Capitulo: 7 de 8
- Titulo: Geradores e Receptores
- Codigos BNCC: EM13CNT301, EM13CNT309
- Profundidade geral: N3, com aplicacao avancada em KCL + KVL para circuitos simples de duas malhas.

## 2. Objetivo do capitulo
Levar o aluno a modelar geradores reais e receptores, distinguindo fem e tensao terminal, aplicando `U = \varepsilon - r \cdot I`, interpretando curvas caracteristicas, calculando rendimento e usando a Lei de Pouillet e as Leis de Kirchhoff em circuitos de corrente continua.

## 3. Pergunta-problema
*"Por que uma pilha que ainda mostra tensao no multimetro pode falhar quando ligada a uma lanterna?"*

## 4. Tensao narrativa
Uma pilha AA gasta pode indicar cerca de 1,2 V quando medida a vazio, mas entregar uma tensao muito menor quando alimenta um aparelho que exige corrente. A fonte nao e uma promessa ideal isolada: ela tem resistencia interna, perdas e limite de corrente. O capitulo transforma essa diferenca entre promessa e entrega em modelo fisico, grafico e calculo.

## 5. Sequencia conceitual obrigatoria
1. Abrir com pilha gasta, lanterna ou bateria de carro sob partida.
2. Definir fem `\varepsilon` como energia convertida por unidade de carga.
3. Distinguir fem `\varepsilon` de tensao terminal `U`.
4. Apresentar gerador real como fem ideal em serie com resistencia interna `r`.
5. Deduzir qualitativamente `U = \varepsilon - r \cdot I` via queda interna.
6. Definir receptor e contra-fem, com equacao `U = \varepsilon' + r' \cdot I`.
7. Construir e interpretar curva caracteristica `U` x `I`.
8. Identificar pontos notaveis: gerador a vazio e curto-circuito.
9. Calcular rendimento `\eta = U/\varepsilon`.
10. Apresentar Lei de Pouillet para malha simples.
11. Tratar geradores em serie e paralelo apenas em casos didaticos controlados.
12. Formalizar KCL e KVL como leis de conservacao.
13. Resolver um circuito simples de duas malhas por sistema 2x2.
14. Fechar retomando a tensao: pilha "morre" principalmente porque `r` cresce e a tensao util cai sob carga.

## 6. Pesos internos
| Subtopico | Peso | Nivel | Orientacao |
|---|---:|---|---|
| Equacao do gerador `U = \varepsilon - r \cdot I` | 25% | N3 | Coracao 1. Distinguir fem, queda interna e tensao util. |
| Lei de Pouillet `I = \varepsilon/(R+r)` | 20% | N3 | Coracao 2. Caso particular de KVL para malha simples. |
| Curva caracteristica `U` x `I` | 15% | N3 | Funcao afim: intercepto `\varepsilon`, inclinacao `-r`. |
| Rendimento do gerador | 10% | N3 | Calculo e interpretacao de perdas internas. |
| Receptor e contra-fem | 5% | N2 | Motor e bateria carregando; nao aprofundar maquinas eletricas. |
| KCL e KVL explicitas | 15% | N3 | Aplicar a nos, malhas e sistema 2x2 simples. |
| Geradores em serie/paralelo | 5% | N2 | Aplicacao controlada com pilhas identicas. |
| Distincao conceitual `\varepsilon` x `U` | 5% | N2 | Retomar em exemplos de pilha gasta e bateria automotiva. |

## 7. Conceitos obrigatorios
- Forca eletromotriz
- Fem `\varepsilon`
- Resistencia interna
- Tensao nos terminais
- Gerador real
- Receptor
- Contra-fem
- Equacao do gerador
- Equacao do receptor
- Curva caracteristica
- Gerador a vazio
- Corrente de curto-circuito
- Rendimento eletrico
- Lei de Pouillet
- 1ª Lei de Kirchhoff, KCL ou lei dos nos
- 2ª Lei de Kirchhoff, KVL ou lei das malhas
- Claude-Servais-Mathias Pouillet

## 8. Termos a explicar com traducao curta
- **Fem:** energia que o gerador converte para cada coulomb de carga.
- **Resistencia interna:** resistencia do proprio gerador real, responsavel por perdas internas.
- **Tensao terminal:** tensao util disponivel nos polos do gerador quando ha corrente.
- **Receptor:** dispositivo que consome energia eletrica para gerar outra forma util, como movimento ou energia quimica.
- **Contra-fem:** fem interna de um receptor, oposta ao sentido da corrente que o alimenta.
- **Curva caracteristica:** grafico que mostra como `U` varia com `I`.
- **KCL:** conservacao da carga nos nos.
- **KVL:** conservacao da energia nas malhas.

## 9. Escopo obrigatorio
O capitulo DEVE explicar:
- que `\varepsilon` e `U` so coincidem a vazio, quando `I = 0`;
- que gerador real e modelado como fem ideal em serie com `r`;
- que a queda interna e `r \cdot I`;
- que `U = \varepsilon - r \cdot I` e a equacao do gerador;
- que receptor usa `U = \varepsilon' + r' \cdot I`;
- que a curva `U` x `I` e uma reta decrescente;
- que o intercepto vertical da curva e `\varepsilon`;
- que o coeficiente angular e `-r`;
- que `I_{\mathrm{curto}} = \varepsilon/r`;
- que `\eta = U/\varepsilon`;
- que Pouillet em malha simples resulta em `I = \varepsilon/(R+r)`;
- que a nomenclatura "Lei de Pouillet" e didatica brasileira/francesa, embora fontes anglofonas tratem como KVL + Ohm;
- que KCL conserva carga em nos e KVL conserva energia em malhas;
- que circuitos de duas malhas podem gerar sistema linear 2x2 em nivel vestibular.

## 10. Escopo proibido (NAO ANTECIPAR)
O capitulo NAO DEVE:
- desenvolver Thevenin, Norton ou fontes equivalentes;
- usar analise nodal ou matricial como metodo;
- entrar em circuitos AC, impedancia ou fasores;
- detalhar eletroquimica de pilhas, Nernst ou celula de Daniell;
- formalizar inducao eletromagnetica ou fem induzida de Faraday;
- transformar motor eletrico em conteudo de magnetismo;
- resolver malhas numerosas ou sistemas lineares extensos.

## 11. Linguagem esperada
- Linguagem tecnico-formal de 3ª Serie EM, adequada a ENEM e vestibulares.
- Definir simbolos antes de usar: `\varepsilon`, `U`, `r`, `I`, `R`, `\eta`.
- Sempre interpretar o resultado fisicamente depois da conta.
- Usar exemplos numericos com unidades e decimal brasileiro em texto.
- Tratar graficos como fonte de informacao quantitativa.
- Evitar frases como "a pilha perdeu voltagem" sem separar fem, queda interna e tensao util.

## 12. Estrutura do capitulo (slots a preencher)
- Titulo: `# Capitulo 7 — Geradores e Receptores`
- Pergunta-problema: `## Por que uma pilha com tensao ainda pode falhar?`
- Abertura narrativa: pilha AA nova x gasta em multimetro e sob carga; bateria de carro durante partida.
- Para Conversar de intro: "O que muda quando a pilha sai do multimetro e passa a alimentar um aparelho real?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Fem, Tensao Terminal e Gerador Real
    - `### 1.1 O que a fem mede?`
    - `### 1.2 Por que a tensao util cai sob carga?`
  - Bloco 2 — Curva Caracteristica e Rendimento
    - `### 2.1 Como extrair \varepsilon e r do grafico?`
    - `### 2.2 Para onde vai a potencia perdida?`
  - Bloco 3 — Lei de Pouillet e Receptores
    - `### 3.1 Como a KVL gera I = \varepsilon/(R+r)?`
    - `### 3.2 O que muda em um receptor?`
  - Bloco 4 — Kirchhoff em Circuitos Reais
    - `### 4.1 O que KCL conserva nos nos?`
    - `### 4.2 O que KVL conserva nas malhas?`
- Formulas centrais em destaque:
  - `U = \varepsilon - r \cdot I`
  - `U = \varepsilon' + r' \cdot I`
  - `I = \frac{\varepsilon}{R+r}`
  - `\eta = \frac{U}{\varepsilon}`
  - `P_{\mathrm{total}} = \varepsilon \cdot I`
  - `P_{\mathrm{util}} = U \cdot I`
  - `P_{\mathrm{interna}} = r \cdot I^2`
  - `I_{\mathrm{curto}} = \frac{\varepsilon}{r}`
  - `\sum I_{\mathrm{entram}} = \sum I_{\mathrm{saem}}`
  - `\sum_{\mathrm{malha}} \Delta V = 0`
- Exemplo obrigatorio 1: pilha nova com `\varepsilon = 1{,}5 V`, `r = 0{,}15 \Omega` e `R = 10 \Omega`; calcular `I`, `U` e `\eta`.
- Exemplo obrigatorio 2: curva `U` x `I` com intercepto `1{,}5 V` e corrente de curto `10 A`; extrair `r`.
- Exemplo obrigatorio 3: circuito de duas malhas simples usando KCL + KVL e sistema 2x2.
- Sua Parte: comparar pilha nova e pilha gasta sob a mesma carga.
- NA VIDA REAL: pilha AA e bateria automotiva sob partida.
- Enquanto isso: Pouillet confirma Ohm em 1834 e Kirchhoff formaliza leis de circuitos em 1845.
- E para hoje: baterias de celular e queda de tensao sob alta corrente.
- Voce ja pensou nisso?: "Que perdas internas fazem uma entrega real ficar menor que a promessa inicial?"
- Simplificando: gerador real entrega `U`, nao `\varepsilon`, quando ha corrente.
- Para nao esquecer: 5 bullets sobre fem, resistencia interna, curva, Pouillet e Kirchhoff.

## 13. Ancoras visuais/concretas
- Esquema de gerador real: fem ideal em serie com resistencia interna `r`.
- Grafico `U` x `I` com intercepto `\varepsilon`, inclinacao `-r` e `I_{\mathrm{curto}}`.
- Tabela comparando pilha nova e pilha gasta.
- Circuito de malha simples com `\varepsilon`, `r` e `R`.
- Circuito de duas malhas com correntes nomeadas e equacoes KCL/KVL.
- Fluxo de potencia: total gerada, util entregue e dissipada internamente.

## 14. Conexao VP
- Unidade VP: Integridade.
- Versiculo principal sugerido: Daniel 6:4.
- Personagem biblico: Daniel.
- Ponteiro especifico: `U = \varepsilon - r \cdot I` mostra que perdas internas reduzem a entrega util.
- Conexao tematica: Daniel manteve integridade interna mesmo sob pressao externa; no modelo do gerador, menor resistencia interna significa menor dissipacao e maior entrega util.
- Pergunta formativa: "Que resistencias internas silenciosas reduzem sua entrega real mesmo quando suas intencoes parecem fortes?"

## 15. Criterios de aceite
O capitulo esta adequado se:
- distingue fem, tensao terminal e queda interna;
- apresenta o modelo de gerador real antes da formula;
- usa corretamente `U = \varepsilon - r \cdot I`;
- inclui receptor e contra-fem sem aprofundar motores;
- interpreta a curva `U` x `I` como funcao afim;
- calcula `I_{\mathrm{curto}}`, `r` e rendimento;
- aplica Lei de Pouillet em malha simples;
- explicita KCL e KVL como leis nominadas;
- resolve ao menos um exemplo de duas malhas simples;
- apresenta Pouillet de modo breve e funcional;
- preserva magnetismo, inducao e Thevenin/Norton apenas como pontes futuras.

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **distinguirá** fem, tensao terminal e queda interna em geradores reais, usando exemplos numericos.
2. O aluno **calculará** corrente, tensao terminal e rendimento em malha simples com gerador real.
3. O aluno **interpretará** curva caracteristica `U` x `I`, extraindo `\varepsilon`, `r` e `I_{\mathrm{curto}}`.
4. O aluno **aplicará** KCL e KVL em circuitos simples de corrente continua.
5. O aluno **comparará** gerador e receptor, identificando o papel da contra-fem.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Afirma que `\varepsilon` e `U` coincidem apenas a vazio.
- Identifica `r \cdot I` como queda interna.

**Para o objetivo 2:**
- Usa `I = \varepsilon/(R+r)` com unidades corretas.
- Calcula `U = \varepsilon - r \cdot I`.
- Calcula `\eta = U/\varepsilon` e interpreta perda interna.

**Para o objetivo 3:**
- Reconhece o intercepto vertical como `\varepsilon`.
- Determina `r` a partir da inclinacao da reta.
- Calcula `I_{\mathrm{curto}}` a partir da raiz do grafico.

**Para o objetivo 4:**
- Escreve uma equacao de no coerente com KCL.
- Escreve uma equacao de malha coerente com KVL.
- Resolve um sistema 2x2 simples associado ao circuito.

**Para o objetivo 5:**
- Diferencia a equacao do gerador da equacao do receptor.
- Cita motor ou bateria carregando como exemplo de receptor.

### Competencias consolidadas no capitulo
- Modelagem de geradores reais.
- Interpretacao de graficos de funcao afim em circuitos.
- Aplicacao de conservacao de carga e energia.
- Uso de formulas com consistencia de unidades.

## 17. Referencias
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/3serie/unidade-4-geradores-e-circuitos.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13CNT301, EM13CNT309.
- Pouillet, Claude-Servais-Mathias. `Elements de physique experimentale et de meteorologie` (1837).
- Kirchhoff, Gustav Robert. Trabalhos sobre leis de circuitos (1845-1847).
- Halliday, Resnick & Walker. `Fundamentos de Fisica`, vol. 3.
- Tipler & Mosca. `Fisica para Cientistas e Engenheiros`, vol. 2.
- Biblia: Daniel 6:4; Lucas 16:10.
