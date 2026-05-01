# Blueprint Tecnico — Capitulo 8: Medidas Eletricas

## 1. Identificacao
- Disciplina: Fisica
- Ano/Serie: 3ª Serie — Ensino Medio
- Bimestre: 2º
- Unidade: 4 — Geradores e Circuitos
- Capitulo: 8 de 8
- Titulo: Medidas Eletricas
- Codigos BNCC: EM13CNT301, EM13CNT309, EM13CNT203
- Profundidade geral: N3, com aplicacao em medidores ideais/reais, curto-circuito e dispositivos de protecao.

## 2. Objetivo do capitulo
Levar o aluno a usar modelos de medidores ideais e reais para decidir como medir corrente e tensao, interpretar erros de instalacao, calcular correntes de curto-circuito e reconhecer fusivel, disjuntor e DR como respostas de engenharia a riscos eletricos.

## 3. Pergunta-problema
*"Por que o amperimetro deve entrar em serie, enquanto o voltimetro deve entrar em paralelo?"*

## 4. Tensao narrativa
Medir um circuito nao e olhar de fora: o instrumento tambem vira parte do circuito. Um amperimetro em paralelo pode criar quase um curto-circuito; um voltimetro em serie pode praticamente abrir a malha e produzir uma leitura enganosa. O capitulo mostra que medir com integridade exige perturbar o circuito o minimo possivel.

## 5. Sequencia conceitual obrigatoria
1. Abrir com multimetro, disjuntor ou erro comum de bancada.
2. Retomar corrente como grandeza que atravessa um ramo e tensao como diferenca entre dois pontos.
3. Definir amperimetro e justificar ligacao em serie.
4. Modelar amperimetro ideal com `R_A \to 0`.
5. Definir voltimetro e justificar ligacao em paralelo.
6. Modelar voltimetro ideal com `R_V \to \infty`.
7. Explicar erros de instalacao: amperimetro em paralelo e voltimetro em serie.
8. Apresentar galvanometro como base historica e Edward Weston como ancora.
9. Apresentar multimetro digital moderno e resistencias tipicas.
10. Contrastar medidor ideal e medidor real.
11. Definir curto-circuito como caso-limite de resistencia externa muito baixa.
12. Calcular `I_{\mathrm{curto}} = \varepsilon/r`.
13. Distinguir fusivel, disjuntor termomagnetico e DR.
14. Fechar com protecao em camadas: sobrecorrente e fuga sao problemas diferentes.

## 6. Pesos internos
| Subtopico | Peso | Nivel | Orientacao |
|---|---:|---|---|
| Amperimetro e voltimetro ideais | 25% | N3 | Coracao 1. Serie/paralelo e consequencias de errar. |
| Curto-circuito e dispositivos de protecao | 25% | N3 | Coracao 2. `I_{\mathrm{curto}}`, fusivel, disjuntor e DR. |
| Galvanometro e Weston | 10% | N2 | Instrumentacao de precisao e diversidade: imigrante UK-EUA. |
| Multimetro digital moderno | 10% | N2 | Funcoes V/I/Ohm/continuidade e cuidados de escala. |
| Medidor real x ideal | 10% | N2 | `R_A` finita e `R_V` finita; erro por carga. |
| Fusivel x disjuntor | 10% | N2 | Descartavel x rearmavel; sobrecorrente. |
| DR e choque eletrico | 10% | N2 | Corrente de fuga, 30 mA e areas molhadas. |

## 7. Conceitos obrigatorios
- Amperimetro
- Voltimetro
- Galvanometro
- Multimetro digital
- Medidor ideal
- Medidor real
- Resistencia interna do instrumento
- Curto-circuito
- Sobrecorrente
- Corrente de fuga
- Fusivel
- Disjuntor termomagnetico
- DR, dispositivo diferencial residual
- Choque eletrico
- Edward Weston

## 8. Termos a explicar com traducao curta
- **Amperimetro:** instrumento que mede corrente e deve ser atravessado pela corrente medida.
- **Voltimetro:** instrumento que mede diferenca de potencial entre dois pontos.
- **Galvanometro:** medidor sensivel de corrente, base historica dos instrumentos analogicos.
- **Medidor ideal:** instrumento-limite que nao altera o circuito medido.
- **Curto-circuito:** caminho de resistencia muito baixa que permite corrente perigosa.
- **Sobrecorrente:** corrente acima da capacidade nominal de fios ou dispositivos.
- **Corrente de fuga:** corrente que escapa do percurso previsto, possivelmente pelo corpo humano.
- **DR:** dispositivo que compara corrente na fase e no neutro e desliga se houver fuga.

## 9. Escopo obrigatorio
O capitulo DEVE explicar:
- que amperimetro mede `I` e deve ser ligado em serie;
- que amperimetro ideal tem `R_A \to 0`;
- que voltimetro mede `U` e deve ser ligado em paralelo;
- que voltimetro ideal tem `R_V \to \infty`;
- que amperimetro em paralelo pode queimar por curto;
- que voltimetro em serie praticamente abre o circuito e mede mal;
- que multimetro digital tipico tem `R_V` da ordem de `10 M\Omega`;
- que `R_A` real nao e zero e pode introduzir pequena queda de tensao;
- que Edward Weston aperfeicoou instrumentos de precisao e a celula padrao Weston;
- que curto-circuito em gerador real obedece ao limite `I_{\mathrm{curto}} = \varepsilon/r`;
- que fusivel protege derretendo e e descartavel;
- que disjuntor termomagnetico e rearmavel e atua por sobrecarga/curto;
- que DR protege contra fuga de corrente e choque, nao substitui disjuntor.

## 10. Escopo proibido (NAO ANTECIPAR)
O capitulo NAO DEVE:
- desenvolver magnetismo formal para explicar galvanometro em detalhe;
- entrar em osciloscopio, ponte de Wheatstone, wattimetro ou analisador de impedancia;
- tratar circuitos AC com fasores, potencia ativa/reativa ou fator de potencia;
- fazer projeto predial completo segundo NBR 5410;
- detalhar curvas B/C/D de disjuntores alem de mencao contextual;
- transformar seguranca eletrica em manual normativo;
- usar inducao eletromagnetica como conteudo central.

## 11. Linguagem esperada
- Linguagem tecnica de 3ª Serie EM, com foco em decisao de ligacao, modelo e consequencia fisica.
- Associar cada instrumento a grandeza, forma de conexao e resistencia ideal.
- Usar esquemas de circuito para evitar ensino apenas verbal.
- Diferenciar com rigor choque, curto-circuito, sobrecarga e fuga.
- Tratar normas e catalogos como exemplos de engenharia real, nao como lista decorativa.
- Evitar recomendacoes praticas arriscadas de bancada sem supervisao.

## 12. Estrutura do capitulo (slots a preencher)
- Titulo: `# Capitulo 8 — Medidas Eletricas`
- Pergunta-problema: `## Como medir sem alterar o circuito que se mede?`
- Abertura narrativa: multimetro em bancada; a mesma caixa pode medir tensao com seguranca ou queimar se estiver em modo corrente e ligada em paralelo.
- Para Conversar de intro: "Quando voce mede alguma coisa, o instrumento pode mudar aquilo que esta medindo?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Medir Corrente e Medir Tensao
    - `### 1.1 Por que amperimetro entra em serie?`
    - `### 1.2 Por que voltimetro entra em paralelo?`
  - Bloco 2 — Instrumentos Reais e Historia da Medida
    - `### 2.1 O que muda quando R_A e R_V nao sao ideais?`
    - `### 2.2 Como Weston ajudou a padronizar medidas eletricas?`
  - Bloco 3 — Curto-Circuito
    - `### 3.1 Por que R externa quase zero e perigosa?`
    - `### 3.2 Como calcular I_{\mathrm{curto}}?`
  - Bloco 4 — Protecao Eletrica
    - `### 4.1 Fusivel e disjuntor protegem do que?`
    - `### 4.2 Por que o DR protege contra fuga?`
- Formulas centrais em destaque:
  - `R_A \to 0`
  - `R_V \to \infty`
  - `I_{\mathrm{curto}} = \frac{\varepsilon}{r}`
  - `I_{\mathrm{choque}} = \frac{V}{R_{\mathrm{corpo}}}`
- Exemplo obrigatorio 1: escolher instalacao correta de amperimetro e voltimetro em diagrama de circuito.
- Exemplo obrigatorio 2: pilha com `\varepsilon = 1{,}5 V` e `r = 0{,}15 \Omega`; calcular corrente de curto idealizada.
- Exemplo obrigatorio 3: choque em 127 V com `R_{\mathrm{corpo}} = 1000 \Omega`; calcular corrente e comparar com DR de 30 mA.
- Sua Parte: corrigir tres esquemas de medicao incorretos.
- NA VIDA REAL: disjuntor residencial, fusivel NH e DR em areas molhadas.
- Enquanto isso: Weston, celula padrao e galvanometro de bobina movel.
- E para hoje: multimetro digital, botao TEST do DR e protecao residencial.
- Voce ja pensou nisso?: "Quais instrumentos voce usa para medir sua vida, e eles estao bem instalados?"
- Simplificando: amperimetro em serie, voltimetro em paralelo, protecao em camadas.
- Para nao esquecer: 5 bullets sobre medidores, curto, fusivel, disjuntor e DR.

## 13. Ancoras visuais/concretas
- Diagrama com amperimetro em serie e voltimetro em paralelo no mesmo circuito.
- Diagrama de erro: amperimetro em paralelo gerando curto.
- Diagrama de erro: voltimetro em serie abrindo a malha.
- Foto ou esquema de multimetro digital com bornes de V e A.
- Esquema simples de DR comparando corrente de fase e neutro.
- Tabela comparando fusivel, disjuntor e DR.

## 14. Conexao VP
- Unidade VP: Integridade.
- Versiculo principal sugerido: Lucas 16:10.
- Personagem biblico: Daniel.
- Ponteiro especifico: um instrumento fiel altera minimamente aquilo que mede.
- Conexao tematica: fidelidade no pouco aparece no detalhe tecnico da medicao; uma ligacao errada produz diagnostico falso ou dano real.
- Pergunta formativa: "Em qual pequeno detalhe de estudo, agenda ou autoavaliacao voce precisa ser mais fiel para medir a realidade sem distorce-la?"

## 15. Criterios de aceite
O capitulo esta adequado se:
- explica corrente como grandeza medida em serie e tensao como grandeza medida em paralelo;
- usa `R_A \to 0` e `R_V \to \infty` corretamente;
- mostra consequencias de instalar instrumentos de modo invertido;
- diferencia medidor ideal e real;
- inclui Weston como ancora historica e diversidade por trajetoria de imigrante;
- calcula corrente de curto pelo modelo de gerador real;
- diferencia fusivel, disjuntor e DR;
- aborda choque eletrico por corrente no corpo, com `I = V/R`;
- nao antecipa magnetismo, inducao ou circuitos AC como conteudo central;
- mantem seguranca eletrica como aplicacao pedagogica, nao manual de intervencao.

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **identificará** a forma correta de instalar amperimetro e voltimetro em circuitos de corrente continua.
2. O aluno **explicará** por que medidores ideais usam os limites `R_A \to 0` e `R_V \to \infty`.
3. O aluno **calculará** corrente de curto-circuito e corrente de choque em modelos simples.
4. O aluno **diferenciará** fusivel, disjuntor e DR segundo o tipo de risco que cada um mitiga.
5. O aluno **avaliará** erros de medicao em esquemas de circuito, justificando a correcao tecnica.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Posiciona amperimetro em serie com o ramo medido.
- Posiciona voltimetro em paralelo com o trecho medido.

**Para o objetivo 2:**
- Justifica que `R_A` pequena evita queda adicional relevante.
- Justifica que `R_V` grande evita desvio de corrente relevante.

**Para o objetivo 3:**
- Usa `I_{\mathrm{curto}} = \varepsilon/r` em gerador real.
- Usa `I = V/R` para estimar corrente pelo corpo.
- Compara corrente calculada com limiares de protecao.

**Para o objetivo 4:**
- Reconhece fusivel como protecao descartavel contra sobrecorrente.
- Reconhece disjuntor como protecao rearmavel contra sobrecarga/curto.
- Reconhece DR como protecao contra fuga de corrente.

**Para o objetivo 5:**
- Identifica quando um instrumento esta instalado de forma perigosa.
- Corrige o esquema e explica a consequencia fisica do erro.

### Competencias consolidadas no capitulo
- Uso de instrumentos de medicao.
- Modelagem ideal x real.
- Analise de risco eletrico por corrente.
- Aplicacao de normas e dispositivos como engenharia de seguranca.

## 17. Referencias
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/3serie/unidade-4-geradores-e-circuitos.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13CNT301, EM13CNT309, EM13CNT203.
- Weston, Edward. Patente US 494,827, celula padrao Weston (1893).
- Halliday, Resnick & Walker. `Fundamentos de Fisica`, vol. 3.
- Tipler & Mosca. `Fisica para Cientistas e Engenheiros`, vol. 2.
- ABNT NBR 5410:2008.
- ABNT NBR 11839.
- ABNT NBR NM 60898:2004.
- IEC 60898-1.
- NR-10.
- Biblia: Lucas 16:10; Daniel 6:4.
