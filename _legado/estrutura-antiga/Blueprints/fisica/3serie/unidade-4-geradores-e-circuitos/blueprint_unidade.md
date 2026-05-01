# Blueprint Tecnico da Unidade — Unidade 4: Geradores e Circuitos

## 1. Identificacao
- Disciplina: Fisica
- Ano/Serie: 3ª Serie — Ensino Medio
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: geradores reais, receptores, resistencia interna, Lei de Pouillet, leis de Kirchhoff, medidas eletricas e protecao contra curto-circuito.
- Tipo da unidade: unidade conceitual-operacional de alta densidade matematica, fechando a eletrodinamica do 2º bimestre.
- Recorte geral: sair do circuito com fonte ideal e resistores ideais para o modelo de gerador real, medidores reais e dispositivos de protecao.
- Capitulos previstos: 2
- Codigos BNCC: EM13CNT301, EM13CNT309, EM13CNT203
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/3serie/unidade-4-geradores-e-circuitos.md`
- Diretorio obrigatorio desta execucao: `Gerador de Blueprint/saida/Fisica/3serie/unidade-4-geradores-e-circuitos/`

## 2. Nivel do aluno
- Faixa etaria aproximada: 17-18 anos.
- Serie/faixa: 3ª Serie EM, com expectativa de linguagem cientifica formal, repertorio ENEM/vestibular e autonomia algebrica.
- Conhecimento previo esperado: corrente eletrica, diferenca de potencial, Lei de Ohm, potencia eletrica, efeito Joule, associacao de resistores em serie/paralelo/mistos, funcao afim e sistemas lineares 2x2.
- Linguagem esperada: tecnico-academica, com definicoes precisas de fem, resistencia interna, tensao terminal, receptor, KCL, KVL, amperimetro, voltimetro, curto-circuito, fusivel, disjuntor e DR.
- Grau de abstracao: alto para Ensino Medio; o aluno deve articular fenomeno, modelo, lei, grafico e expressao matematica.
- Estrategia didatica: partir de pilhas gastas, bateria de carro, multimetro, disjuntor e DR para formalizar modelos e calculos.
- Abertura narrativa da unidade: uma fonte promete uma fem, mas o circuito recebe apenas a tensao util que sobrevive as perdas internas e aos instrumentos reais.

## 3. Tom da unidade
- Investigativo, aplicado e rigoroso, com enfase em modelos de circuito real.
- Tratar gerador real como fem ideal em serie com resistencia interna, deixando claro que esse e um modelo com limites.
- Explicitar a diferenca entre fem `\varepsilon` e tensao terminal `U` em todos os problemas.
- Usar graficos `U` por `I` como ferramenta quantitativa, nao como ilustracao secundaria.
- Apresentar KCL e KVL como formalizacao explicita do que estava implicito na associacao de resistores.
- Conectar medidas e protecao a engenharia de seguranca, sem transformar o capitulo em manual tecnico de instalacoes eletricas.
- A conexao crista deve emergir da integridade interna do gerador e da fidelidade do instrumento de medida.

## 4. Profundidade geral
- Nivel predominante: N3, com momentos de consolidacao avancada em sistemas 2x2 via KCL + KVL.
- Nucleos N3 da unidade: equacao do gerador `U = \varepsilon - r \cdot I`, Lei de Pouillet, curva caracteristica `U` x `I`, instalacao correta de medidores e curto-circuito.
- Nucleos de aplicacao avancada: rendimento de geradores, leitura de coeficiente angular, corrente de curto, dimensionamento de protecao e circuitos de duas malhas em casos didaticos.
- Referencia operacional: `Gerador de Blueprint/niveis_profundidade.md`.
- Limite de densidade: nao transformar a unidade em analise nodal/matricial, teoria de Thevenin/Norton ou eletricidade predial normativa detalhada.

## 5. Regras gerais transversais
- Usar `\varepsilon` para fem em todos os arquivos.
- Usar multiplicacao explicita: `r \cdot I`, `U \cdot I`, `r \cdot I^2`.
- Usar subscritos compostos com `\mathrm`, como `I_{\mathrm{curto}}`, `P_{\mathrm{util}}` e `R_{\mathrm{eq}}`.
- Evitar comandos textuais dentro de blocos LaTeX.
- Tratar `U = \varepsilon - r \cdot I` como equacao do gerador e `U = \varepsilon' + r' \cdot I` como equacao do receptor.
- Explicar que a Lei de Pouillet e nomenclatura didatica consolidada na tradicao brasileira/francesa para a malha simples.
- Mostrar que KCL expressa conservacao da carga e KVL expressa conservacao da energia.
- Em medidas eletricas, fixar sempre: amperimetro em serie e voltimetro em paralelo.
- Em protecao eletrica, distinguir sobrecorrente, curto-circuito e corrente de fuga.

## 6. Escopo proibido geral (NAO ANTECIPAR)
- Teoremas de Thevenin e Norton.
- Analise nodal/matricial de circuitos.
- Circuitos AC com fasores, impedancia complexa e potencia reativa.
- Osciloscopio, ponte de Wheatstone e instrumentacao universitaria.
- Magnetismo formal, forca magnetica e lei de Faraday-Lenz como conteudo central.
- Eletroquimica detalhada de pilhas, equacao de Nernst e celulas combustiveis.
- Normas eletricas em nivel de projeto predial completo.

## 7. Conexao VP da unidade
- Unidade VP: Integridade.
- Virtude: coerencia entre o que se professa e o que se vive; fidelidade no pequeno; transparencia mensuravel.
- Personagem biblico: Daniel.
- Versiculos-ancora: Daniel 6:4 e Lucas 16:10.
- Ideia central: um gerador real perde parte da fem na resistencia interna; um instrumento real so mede com fidelidade quando perturba minimamente o sistema.
- Ponte pedagogica: integridade nao e abstração moral solta; e aquilo que permite que a tensao util chegue ao circuito e que a medida revele o real.

## 8. Hierarquia de autoridade para o Autor
- Conteudo, recorte, formulas, cientistas, VP e limites: framework da unidade e este blueprint.
- Profundidade dos topicos: secao 4 deste blueprint e blueprint do capitulo correspondente.
- Objetivos e indicadores: `Gerador de Blueprint/objetivos_aprendizagem.md`.
- Expectativas de serie: `Gerador de Blueprint/series.md`.
- Onde houver conflito entre modelo generico e framework da unidade, vence o framework.
- Onde houver conflito entre intuicao cotidiana e modelo fisico, explicitar a idealizacao antes de resolver.

## 9. Distribuicao dos capitulos

| Capitulo | Titulo | Coracao conceitual | Cientistas-ancora | Conexao VP especifica |
|---|---|---|---|---|
| 7 | Geradores e Receptores | fem, resistencia interna, `U = \varepsilon - r \cdot I`, curva caracteristica, Pouillet, KCL e KVL | Claude-Servais-Mathias Pouillet | integridade interna: menor `r`, maior tensao util |
| 8 | Medidas Eletricas | amperimetro, voltimetro, medidor ideal x real, curto-circuito, fusivel, disjuntor e DR | Edward Weston | fidelidade no instrumento: medir sem distorcer |

## 10. Ganchos transversais
- Enquanto isso: Pouillet confirma experimentalmente a Lei de Ohm em 1834; Kirchhoff formaliza leis de nos e malhas em 1845; Weston industrializa instrumentos de precisao no fim do seculo XIX.
- E para hoje: pilhas gastas, baterias automotivas, multimetros digitais, disjuntores residenciais e DRs dependem do mesmo raciocinio de circuito.
- Aprendizados transversais:
  - A fem nao e necessariamente a tensao util entregue ao circuito.
  - A resistencia interna explica quedas de tensao sob carga.
  - A curva `U` x `I` revela `\varepsilon`, `r` e `I_{\mathrm{curto}}`.
  - Medidores ideais sao limites: `R_A \to 0` e `R_V \to \infty`.
  - Curto-circuito e caso-limite de baixa resistencia externa, nao apenas "fio encostado".
  - Protecao eletrica tem camadas: fusivel/disjuntor contra sobrecorrente e DR contra fuga.
- Pergunta final da unidade: "Se uma fonte, um instrumento e um circuito nunca sao perfeitamente ideais, como medir e proteger sistemas reais com rigor?"

## 11. Criterios de aceite da unidade
A unidade esta adequada se:
- o arquivo de unidade esta salvo exatamente como `Gerador de Blueprint/saida/Fisica/3serie/unidade-4-geradores-e-circuitos/blueprint_unidade.md`;
- os capitulos individuais estao salvos no mesmo diretorio como `blueprint_capitulo_07_geradores-e-receptores.md` e `blueprint_capitulo_08_medidas-eletricas.md`;
- nenhum arquivo foi salvo em `blueprints/`, `PIPELINE_CONTEUDO/PLANEJADOR/`, `teste_unidade-3-coordenadas-e-solo/`, `Blueprint/` ou diretamente em `PLANEJAMENTO/`;
- o Capitulo 7 cobre fem, resistencia interna, receptor, equacao do gerador, curva caracteristica, Pouillet, rendimento, KCL e KVL;
- o Capitulo 8 cobre amperimetro, voltimetro, galvanometro/Weston, multimetro, medidor real, curto-circuito, fusivel, disjuntor e DR;
- as formulas usam notacao LaTeX compativel com as regras do framework;
- a conexao VP Integridade aparece como ponte formativa ancorada no conceito fisico;
- nao ha antecipacao formal de Thevenin/Norton, AC fasorial, analise nodal matricial, magnetismo ou inducao;
- os objetivos e indicadores usam acoes observaveis alinhadas a EM13CNT301, EM13CNT309 e EM13CNT203.

## 12. Referencias
- Framework de unidade: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/3serie/unidade-4-geradores-e-circuitos.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13CNT301, EM13CNT309, EM13CNT203.
- Pouillet, Claude-Servais-Mathias. `Elements de physique experimentale et de meteorologie` (1837).
- Kirchhoff, Gustav Robert. Trabalhos sobre leis de circuitos (1845-1847).
- Weston, Edward. Patente da celula padrao Weston (1893) e instrumentos de bobina movel.
- Halliday, Resnick & Walker. `Fundamentos de Fisica`, vol. 3.
- Tipler & Mosca. `Fisica para Cientistas e Engenheiros`, vol. 2.
- ABNT NBR 5410, ABNT NBR 11839, ABNT NBR NM 60898, IEC 60898-1 e NR-10.
- Biblia: Daniel 6:4; Lucas 16:10; Proverbios 10:9.
