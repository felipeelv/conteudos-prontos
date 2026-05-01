# Blueprint Técnico da Unidade — Unidade 4: Termodinâmica

## 1. Identificação
- Disciplina: Física
- Ano/Série: 2ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: Termodinâmica, com ênfase nas leis fundamentais que regem trocas de energia em sistemas térmicos, trabalho em transformações gasosas, máquinas térmicas, entropia e rendimento máximo de Carnot.
- Tipo da unidade: unidade conceitual-operacional de alta densidade matemática.
- Recorte geral: conduzir o aluno da conservação de energia em sistemas térmicos para a compreensão da irreversibilidade e dos limites de rendimento impostos pela 2ª Lei.
- Capítulos previstos: 2
- Códigos BNCC: EM13CNT102, EM13CNT201, EM13CNT301
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/2serie/unidade-4-termodinamica.md`
- Diretório obrigatório desta execução: `Gerador de Blueprint/saida/Fisica/2serie/unidade-4-termodinamica/`

## 2. Nível do aluno
- Faixa etária aproximada: 16-17 anos.
- Série/faixa: 2ª Série EM, já com estudo prévio de temperatura, calor, gases ideais e transformações gasosas.
- Conhecimento prévio esperado: conservação de energia, trabalho mecânico, calor como energia em trânsito, PV = nRT, transformações isobárica, isocórica e isotérmica, leitura de diagramas PV e uso de logaritmo natural.
- Linguagem esperada: técnica, rigorosa e acompanhada de ilustrações concretas para termos abstratos como função de estado, entropia, irreversibilidade e ciclo reversível.
- Grau de abstração: alto para Ensino Médio; o aluno deve articular fenômeno, modelo, lei e expressão matemática.
- Estratégia didática: partir de motores, pistões, geladeiras, café esfriando e diagramas PV para formalizar leis e limites.
- Abertura narrativa da unidade: a energia conserva sua contabilidade, mas a natureza impõe direção aos processos e custo às conversões.

## 3. Tom da unidade
- Investigativo, técnico e aplicado, com atenção a sinais, unidades e hipóteses do modelo.
- Tratar modelos ideais como ferramentas: gás ideal, sistema fechado, processo quase-estático, ciclo reversível e máquina térmica abstrata.
- Explicitar a diferença entre idealização e realidade: sem atrito e reversibilidade no modelo; perdas, rejeitos e irreversibilidade nos sistemas reais.
- Manter conexão com Engenharia, Química, sustentabilidade e Astrofísica sem extrapolar para formalismo universitário.
- Valorizar a cadeia histórica Clausius, Boltzmann e Chandrasekhar como construção de modelos e leis, não como biografia extensa.
- A conexão cristã deve emergir dos conceitos de contabilidade fechada, custo e integridade, sem substituir a Física.

## 4. Profundidade geral
- Nível predominante: N3, com momentos N4 conceituais na distinção função de estado versus função de caminho, na equivalência das formulações da 2ª Lei e no limite de Carnot.
- Núcleos N3 da unidade: cálculo de trabalho em transformações gasosas, aplicação de `\Delta U = Q - W`, rendimento de máquinas térmicas e rendimento de Carnot.
- Núcleos N4: ciclo com `\Delta U = 0`, impossibilidade de rendimento 100%, interpretação conceitual de `\Delta S \geq 0`.
- Referência operacional: `Gerador de Blueprint/niveis_profundidade.md`.
- Limite de densidade: não transformar a unidade em termodinâmica universitária, mecânica estatística formal ou estudo detalhado de motores reais.

## 5. Regras gerais transversais
- Adotar a convenção `Q > 0` quando o sistema recebe calor e `W > 0` quando o gás realiza trabalho.
- Usar sempre `\Delta U = Q - W`.
- Tratar `U` e `S` como funções de estado; tratar `Q` e `W` como grandezas dependentes do caminho.
- Apresentar trabalho do gás como área sob a curva no diagrama PV.
- Exigir temperatura em Kelvin para rendimento de Carnot.
- Apresentar entropia estatística apenas qualitativamente por `S = k \cdot \ln W`.
- Manter Carnot como limite teórico, não como descrição detalhada de todos os motores reais.
- Usar a VP Integridade como ponte: a 1ª Lei fecha a conta; a 2ª Lei revela o custo.

## 6. Escopo proibido geral (NÃO ANTECIPAR)
- Energia livre de Gibbs ou Helmholtz.
- Equilíbrio químico, Le Chatelier formal e termoquímica avançada.
- Mecânica estatística formal, ensembles, função de partição ou cálculo de probabilidade microscópica.
- Termodinâmica fora do equilíbrio, Onsager, Prigogine e estruturas dissipativas.
- Relação de Mayer, `c_p - c_v = R`, como eixo obrigatório.
- Transformação adiabática completa com `PV^\gamma = cte` como cálculo central.
- Motores Otto, Diesel, Stirling, Brayton e Rankine em detalhe.
- Cálculo formal de integrais termodinâmicas ou de `\Delta S = \int \delta Q/T`.
- Cosmologia da entropia, morte térmica do universo e paradoxo de Loschmidt como conteúdo principal.

## 7. Conexão VP da unidade
- Unidade VP: Integridade.
- Virtude: coerência entre pensamento, palavra e ação; responsabilidade pelas consequências; honestidade mesmo quando há custo.
- Personagem bíblico: Daniel.
- Versículos-âncora: Lucas 16:10 e Provérbios 10:9.
- Ideia central: a 1ª Lei mostra que a contabilidade da energia fecha; a 2ª Lei mostra que conversões reais sempre têm ônus. Integridade é assumir a conta e o custo das próprias escolhas.
- Ponte pedagógica: não há ganho gratuito em termodinâmica nem atalho íntegro na vida formativa.

## 8. Hierarquia de autoridade para o Autor
- Conteúdo, recorte, fórmulas, cientistas, VP e limites → framework da unidade e este blueprint.
- Profundidade dos tópicos → seção 4 deste blueprint + blueprint do capítulo correspondente.
- Objetivos e indicadores → `Gerador de Blueprint/objetivos_aprendizagem.md`.
- Expectativas de série → `Gerador de Blueprint/series.md`.
- Onde houver conflito entre modelo genérico e framework da unidade → vence o framework da unidade.
- Onde houver conflito entre intuição cotidiana e modelo físico → explicitar a idealização antes de resolver.

## 9. Distribuição dos capítulos

| Capítulo | Título | Coração conceitual | Cientistas-âncora | Conexão VP específica |
|---|---|---|---|---|
| 7 | Leis da Termodinâmica | trabalho do gás; energia interna; função de estado; `\Delta U = Q - W`; ciclo com `\Delta U = 0` | Rudolf Clausius | a contabilidade da energia fecha; fidelidade no pouco e no muito |
| 8 | Máquinas Térmicas | 2ª Lei; entropia; rendimento; Carnot; refrigerador como ciclo invertido | Rudolf Clausius, Ludwig Boltzmann, Subrahmanyan Chandrasekhar | toda conversão real tem custo; integridade reconhece o ônus |

## 10. Ganchos transversais
- Enquanto isso: Clausius formaliza a 1ª Lei em 1850, formula a 2ª Lei em 1854 e cunha entropia em 1865; Boltzmann interpreta entropia estatisticamente em 1877; Chandrasekhar aplica ideias estatísticas e termodinâmicas ao destino estelar em 1930.
- E para hoje: motores de carro, termoelétricas, geladeiras, ar-condicionado, eficiência energética e estrelas compactas dependem dos limites termodinâmicos.
- Aprendizados transversais:
  - A 1ª Lei é conservação de energia em sistemas térmicos.
  - O trabalho do gás depende do caminho e pode ser lido como área no diagrama PV.
  - Energia interna e entropia são funções de estado.
  - A 2ª Lei é uma proibição: calor não flui espontaneamente do frio para o quente e nenhuma máquina térmica converte 100% de calor em trabalho.
  - Carnot estabelece o máximo teórico, não o desempenho real.
  - Temperaturas em fórmulas de Carnot sempre devem estar em Kelvin.
  - Entropia dá linguagem física para irreversibilidade.
- Pergunta final da unidade: "Se a energia sempre fecha sua conta, por que nem toda energia recebida pode virar trabalho útil?"

## 11. Critérios de aceite da unidade
A unidade está adequada se:
- o arquivo de unidade está salvo exatamente como `Gerador de Blueprint/saida/Fisica/2serie/unidade-4-termodinamica/blueprint_unidade.md`;
- os capítulos individuais estão salvos no mesmo diretório como `blueprint_capitulo_07_leis-da-termodinamica.md` e `blueprint_capitulo_08_maquinas-termicas.md`;
- nenhum arquivo foi salvo em `blueprints/`, `PIPELINE_CONTEUDO/PLANEJADOR/`, `teste_unidade-3-coordenadas-e-solo/`, `Blueprint/` ou diretamente em `PLANEJAMENTO/`;
- o Capítulo 7 cobre trabalho em transformações gasosas, energia interna, função de estado, 1ª Lei e ciclos;
- o Capítulo 8 cobre 2ª Lei, entropia, máquinas térmicas, Carnot e refrigerador;
- as fórmulas usam notação LaTeX compatível com as regras do framework;
- a conexão VP Integridade aparece como ponte formativa ancorada no conceito;
- não há antecipação formal de energia livre, mecânica estatística universitária ou termodinâmica fora do equilíbrio;
- os objetivos e indicadores usam ações observáveis alinhadas a EM13CNT102, EM13CNT201 e EM13CNT301.

## 12. Referências
- Framework de unidade: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/2serie/unidade-4-termodinamica.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13CNT102, EM13CNT201, EM13CNT301.
- Clausius, Rudolf. `Über die bewegende Kraft der Wärme` (1850).
- Clausius, Rudolf. `Über verschiedene für die Anwendung bequeme Formen der Hauptgleichungen der mechanischen Wärmetheorie` (1865).
- Boltzmann, Ludwig. Interpretação estatística da entropia (1877).
- Chandrasekhar, Subrahmanyan. Trabalhos sobre o limite de massa de anãs brancas (1930-1931).
- Halliday, Resnick & Walker. `Fundamentos de Física`, vol. 2.
- Tipler & Mosca. `Física para Cientistas e Engenheiros`, vol. 1.
- Bíblia: Daniel 6:4; Lucas 16:10; Provérbios 10:9.
