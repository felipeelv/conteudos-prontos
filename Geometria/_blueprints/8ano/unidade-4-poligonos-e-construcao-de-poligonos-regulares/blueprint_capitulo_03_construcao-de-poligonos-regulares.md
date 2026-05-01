# Blueprint Técnico — Capítulo 3: Construção de Polígonos Regulares

## 1. Identificação
- Disciplina: Geometria
- Ano/Série: 8º Ano EF II
- Bimestre: 2º
- Unidade: 4 — Polígonos e Construção de Polígonos Regulares
- Capítulo: 3 de 3
- Título: Construção de Polígonos Regulares
- Código BNCC: EF08MA09
- Profundidade geral: N3

## 2. Objetivo do capítulo
Ensinar o aluno a construir triângulo equilátero, quadrado e hexágono regular com régua e compasso, descrevendo os procedimentos como algoritmos e conferindo a regularidade obtida.

## 3. Pergunta-problema
*"Como construir uma figura regular sem depender do olho?"*

## 4. Tensão narrativa
Um desenho aproximado pode parecer correto, mas uma construção geométrica precisa garantir medidas e relações. A tensão do capítulo é aparência visual × procedimento exato: o compasso preserva distâncias, a régua conecta pontos e o algoritmo impede atalhos.

## 5. Sequência conceitual obrigatória
1. Retomar regularidade: lados congruentes e ângulos congruentes.
2. Retomar régua como instrumento para traçar segmentos.
3. Retomar compasso como instrumento para transportar distâncias e traçar circunferências.
4. Construir triângulo equilátero a partir de um segmento.
5. Construir quadrado a partir de um lado dado, com perpendiculares e transferência de medida.
6. Apresentar circunferência como base para construção de polígonos inscritos.
7. Mostrar que, no hexágono regular inscrito, o lado tem a mesma medida do raio.
8. Construir hexágono regular com compasso mantendo a abertura do raio.
9. Registrar a construção do hexágono em algoritmo e fluxograma.
10. Fechar com critérios de conferência: lados congruentes, vértices na circunferência e fechamento correto.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Instrumentos e critérios de regularidade | 15% | N2 | Retomar régua, compasso, distância e conferência. |
| Construção de triângulo equilátero e quadrado | 25% | N3 | Reapresentar procedimentos já conhecidos com rigor de 8º Ano. |
| Construção do hexágono regular | 35% | N3 | Usar circunferência e abertura igual ao raio para marcar seis vértices. |
| Algoritmo e fluxograma | 25% | N3 | Descrever passos, decisões e conferências sem virar programação formal. |

## 7. Conceitos obrigatórios
- Régua
- Compasso
- Segmento dado
- Raio
- Circunferência
- Centro
- Arco
- Interseção
- Vértice
- Hexágono regular
- Polígono inscrito
- Ângulo central
- Algoritmo
- Fluxograma
- Conferência geométrica

## 8. Termos a explicar com explicação curta
- **Construção geométrica:** desenho feito por passos exatos com instrumentos.
- **Segmento dado:** medida inicial usada como referência.
- **Raio:** distância do centro da circunferência até qualquer ponto dela.
- **Arco:** parte da circunferência traçada pelo compasso.
- **Interseção:** ponto onde dois traços se encontram.
- **Algoritmo:** sequência ordenada de passos.
- **Fluxograma:** representação visual de um algoritmo.
- **Conferência:** verificação de que a figura construída obedece às propriedades esperadas.

## 9. Procedimentos obrigatórios
Algoritmo para triângulo equilátero com lado $$l$$:
1. Traçar $$\overline{AB}$$ de medida $$l$$.
2. Abrir o compasso com a medida $$l$$.
3. Com centro em $$A$$, traçar um arco.
4. Com centro em $$B$$, traçar outro arco.
5. Marcar uma interseção dos arcos como $$C$$.
6. Traçar $$\overline{AC}$$ e $$\overline{BC}$$.

Conferência:

$$\overline{AB} = \overline{BC} = \overline{CA}$$

Algoritmo para quadrado com lado $$l$$:
1. Traçar $$\overline{AB}$$ de medida $$l$$.
2. Construir retas perpendiculares por $$A$$ e por $$B$$.
3. Abrir o compasso com a medida $$l$$.
4. Marcar $$D$$ na perpendicular por $$A$$.
5. Marcar $$C$$ na perpendicular por $$B$$.
6. Traçar $$\overline{CD}$$.
7. Conferir lados congruentes e ângulos retos.

Algoritmo para hexágono regular inscrito:
1. Traçar uma circunferência de centro $$O$$.
2. Escolher um ponto $$A$$ sobre a circunferência.
3. Manter o compasso aberto com a medida do raio.
4. Com centro em $$A$$, marcar o próximo ponto sobre a circunferência.
5. Repetir a marcação até obter 6 pontos.
6. Ligar os pontos consecutivos com régua.
7. Conferir se o último ponto fecha no ponto inicial.

Relação central:

$$lado = raio$$

Para o hexágono regular inscrito:

$$a_c = \frac{360^\circ}{6}$$

$$a_c = 60^\circ$$

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- que régua traça segmentos e compasso transfere distâncias;
- que construção geométrica não depende de "olhômetro";
- que triângulo equilátero usa dois arcos de mesma abertura;
- que quadrado exige lado transferido e ângulos retos;
- que o hexágono regular pode ser construído marcando o raio na circunferência;
- que o lado do hexágono regular inscrito tem a medida do raio;
- que o procedimento pode ser representado em fluxograma;
- que a conferência final faz parte da construção.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- ensinar construção detalhada de pentágono regular;
- ensinar construção de polígono de 17 lados;
- discutir polígonos não construtíveis;
- usar trigonometria;
- formalizar apótema ou área;
- transformar fluxograma em aula de programação;
- apresentar arquitetura de Wren como biografia longa sem conexão com geometria construtiva.

## 12. Linguagem esperada
- Usar verbos de procedimento: trace, abra, marque, mantenha, ligue, confira.
- Separar cada construção em passos curtos.
- Explicar o motivo de manter a abertura do compasso.
- Repetir a diferença entre construir e desenhar aproximadamente.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 3 — Construção de Polígonos Regulares`
- Pergunta-problema: `## Como transformar regularidade em procedimento?`
- Abertura narrativa: Christopher Wren e a geometria que sustenta construções arquitetônicas.
- Para Conversar de intro: "O que acontece se a abertura do compasso muda no meio da construção?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Instrumentos e Conferência
    - `### 1.1 O que a régua garante`
    - `### 1.2 O que o compasso mantém`
  - Bloco 2 — Construções Conhecidas
    - `### 2.1 Triângulo equilátero`
    - `### 2.2 Quadrado`
  - Bloco 3 — Hexágono Regular
    - `### 3.1 Por que o lado é igual ao raio`
    - `### 3.2 Marcando seis pontos na circunferência`
  - Bloco 4 — Algoritmo e Fluxograma
    - `### 4.1 Escrevendo os passos`
    - `### 4.2 Conferindo o resultado`
- Sua Parte: construir um hexágono regular inscrito e registrar o procedimento em fluxograma.
- Curiosidade da Ciência: Christopher Wren e a geometria circular em arquitetura.
- Enquanto isso...: Daniel 6:4 como ponte para coerência entre processo e resultado.
- E para hoje...: observar uma construção, cúpula, janela ou mosaico e identificar padrões regulares.
- Esse foi o "cara": Christopher Wren.
- Você já pensou nisso?: por que um pequeno erro no primeiro passo altera toda a figura?
- Simplificando: construção regular é algoritmo geométrico; cada passo preserva uma medida ou relação.
- Para não esquecer: 5 bullets sobre régua, compasso, triângulo equilátero, quadrado e hexágono.

## 14. Âncoras visuais/concretas
- Segmento inicial $$\overline{AB}$$.
- Dois arcos formando o triângulo equilátero.
- Quadrado com perpendiculares nos extremos do lado.
- Circunferência com centro $$O$$ e raio marcado.
- Hexágono regular inscrito com seis vértices.
- Fluxograma simples: início, traçar circunferência, marcar pontos, ligar vértices, conferir.
- Catedral de St Paul, vitrais, cúpulas e mosaicos como referências visuais.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Daniel 6:4.
- Ponteiro específico: procedimento íntegro produz resultado íntegro.
- Conexão temática: o hexágono regular não nasce de improviso. Ele depende de manter a mesma abertura, repetir o passo correto e conferir o fechamento. A integridade aparece na fidelidade ao processo.

## 16. Critérios de aceite
O capítulo está adequado se:
- ensina construção de triângulo equilátero com dois arcos;
- ensina construção de quadrado a partir de lado dado;
- ensina construção de hexágono regular inscrito;
- explica que, no hexágono regular inscrito, o lado tem a medida do raio;
- inclui algoritmo ou fluxograma do hexágono;
- diferencia construção exata de desenho aproximado;
- inclui critérios de conferência;
- não antecipa pentágono regular, área, apótema, trigonometria ou polígonos não construtíveis.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **construirá** triângulo equilátero com régua e compasso.
2. O aluno **construirá** quadrado a partir de um lado dado.
3. O aluno **construirá** hexágono regular inscrito em circunferência.
4. O aluno **representará** a construção do hexágono em algoritmo ou fluxograma.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Usa o segmento inicial como lado.
- Mantém a abertura do compasso.
- Marca corretamente a interseção dos arcos.

**Para o objetivo 2:**
- Usa perpendiculares pelos extremos do lado.
- Transfere a medida do lado com compasso.
- Confere lados congruentes e ângulos retos.

**Para o objetivo 3:**
- Traça uma circunferência com centro identificado.
- Mantém a abertura do compasso igual ao raio.
- Marca seis pontos consecutivos sobre a circunferência.
- Liga os pontos em ordem e fecha a figura.

**Para o objetivo 4:**
- Ordena os passos sem omitir ações essenciais.
- Usa verbos claros.
- Inclui etapa de conferência no final.

### Habilidade BNCC consolidada no capítulo
- **EF08MA09**, ao resolver e elaborar construções geométricas básicas com régua e compasso, incluindo polígonos regulares.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/8ano/unidade-4-poligonos-e-construcao-de-poligonos-regulares.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- BNCC: EF08MA09
- Christopher Wren; Catedral de St Paul.
