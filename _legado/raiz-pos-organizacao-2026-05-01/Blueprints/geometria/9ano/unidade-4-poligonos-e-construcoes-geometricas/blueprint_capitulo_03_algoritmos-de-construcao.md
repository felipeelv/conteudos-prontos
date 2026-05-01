# Blueprint Técnico — Capítulo 3: Algoritmos de Construção

## 1. Identificação
- Disciplina: Geometria
- Ano/Série: 9º Ano EF II
- Bimestre: 2º
- Unidade: 4 — Polígonos e Construções Geométricas
- Capítulo: 3 de 4
- Título: Algoritmos de Construção
- Código BNCC: apoio a EF08MA09
- Profundidade geral: N3

## 2. Objetivo do capítulo
Levar o aluno a transformar uma construção geométrica em algoritmo escrito, fluxograma e sequência executável em software de geometria dinâmica.

## 3. Pergunta-problema
*"Como escrever uma construção para que outra pessoa, ou um computador, chegue exatamente à mesma figura?"*

## 4. Tensão narrativa
Saber fazer com as mãos não garante saber explicar. A tensão do capítulo é fazer × descrever como fazer: um algoritmo exige ordem, precisão e ausência de ambiguidades.

## 5. Sequência conceitual obrigatória
1. Retomar uma construção do Capítulo 2.
2. Definir algoritmo como sequência finita e ordenada de passos.
3. Identificar entrada, passos e saída.
4. Escrever um algoritmo em linguagem natural.
5. Revisar ambiguidades: pontos sem nome, instrumento sem ação, ordem invertida.
6. Transformar a sequência em fluxograma simples.
7. Relacionar cada passo com comandos de GeoGebra.
8. Executar mentalmente ou digitalmente o algoritmo.
9. Conferir se a saída corresponde à figura esperada.
10. Reescrever passos quando houver ambiguidade.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---:|---|---|
| Descrição por escrito de algoritmos | 40% | N3 | Coração 1. Sequência numerada com entrada, passos e saída. |
| Fluxograma de construção | 25% | N2 | Representar dependências por setas, sem programação formal. |
| Uso de softwares de geometria dinâmica | 35% | N3 | Coração 2. Relacionar comandos do GeoGebra aos passos geométricos. |

## 7. Conceitos obrigatórios
- Algoritmo
- Entrada
- Passo
- Saída
- Ordem
- Ambiguidade
- Fluxograma
- Comando
- Software de geometria dinâmica
- GeoGebra
- Pensamento computacional

## 8. Termos a explicar com explicação curta
- **Algoritmo:** sequência ordenada e finita de passos que produz um resultado específico.
- **Entrada:** informação inicial necessária para começar, como centro, raio ou segmento.
- **Saída:** figura final produzida pelo procedimento.
- **Ambiguidade:** instrução que permite mais de uma interpretação.
- **Fluxograma:** representação visual dos passos por caixas e setas.
- **Software de geometria dinâmica:** programa que constrói e permite manipular figuras geométricas a partir de comandos.

## 9. Procedimentos obrigatórios
Estrutura típica:

$$\mathrm{Entrada} \rightarrow \mathrm{Passo\ 1} \rightarrow \mathrm{Passo\ 2} \rightarrow \mathrm{Saida}$$

Algoritmo mínimo para hexágono regular:
1. Entrada: centro $$O$$ e raio $$r$$.
2. Traçar circunferência de centro $$O$$ e raio $$r$$.
3. Marcar ponto $$A$$ na circunferência.
4. Com abertura $$r$$, marcar pontos sucessivos sobre a circunferência.
5. Repetir até obter seis pontos.
6. Ligar pontos consecutivos.
7. Saída: hexágono regular inscrito.

Fluxograma esperado:
- Entrada → traçar circunferência → marcar ponto inicial → repetir marcação de arco → ligar pontos → conferir saída.

## 10. Escopo obrigatório
O capítulo DEVE explicar:
- por que uma construção pode ser descrita como algoritmo;
- como nomear entrada e saída;
- como escrever passos sem ambiguidade;
- como representar a sequência em fluxograma;
- como o GeoGebra executa comandos correspondentes a passos geométricos;
- que corrigir o algoritmo é parte do processo quando a figura final não corresponde à esperada.

## 11. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- ensinar Python, Scratch ou outra linguagem de programação;
- ensinar `if`, `else`, `while` ou `for` como estruturas formais;
- discutir prova de correção ou terminação;
- apresentar algoritmos numéricos avançados;
- introduzir geometria analítica do Capítulo 4;
- transformar Al-Khwarizmi em biografia longa.

## 12. Linguagem esperada
- Usar instruções curtas e numeradas.
- Dar preferência a verbos executáveis: trace, marque, mantenha, ligue, confira.
- Evitar "faça a figura" sem detalhar como.
- Mostrar exemplos de passo ruim e passo melhor quando útil.
- Usar "GeoGebra" como ferramenta, não como substituto do raciocínio geométrico.
- Não iniciar com "Neste capítulo vamos estudar...".

## 13. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 3 — Algoritmos de Construção`
- Pergunta-problema: `## Como transformar uma construção em instruções?`
- Abertura narrativa: ensinar alguém a construir um hexágono sem desenho, apenas por escrito, ou Al-Khwarizmi e a origem da ideia de algoritmo.
- Para Conversar de intro: "Qual instrução do cotidiano falha quando falta um passo?"
- Desenvolvimento em 3 blocos numerados:
  - Bloco 1 — Do Fazer ao Descrever
    - `### 1.1 Entrada, passos e saída`
    - `### 1.2 Onde mora a ambiguidade`
  - Bloco 2 — Fluxograma
    - `### 2.1 Caixas, setas e dependências`
    - `### 2.2 Conferindo a ordem dos passos`
  - Bloco 3 — GeoGebra
    - `### 3.1 Cada comando como um passo`
    - `### 3.2 Testar, observar e corrigir`
- Sua Parte: escrever e revisar um algoritmo para construir hexágono regular.
- Curiosidade da Ciência: Al-Khwarizmi e a origem da palavra algoritmo.
- Enquanto isso...: Lucas 14:28 como ponte para planejar antes de construir.
- E para hoje...: instruções de montagem, receitas, mapas e comandos digitais.
- Esse foi o "cara": Al-Khwarizmi.
- Você já pensou nisso?: um algoritmo pode estar correto se duas pessoas chegam a figuras diferentes?
- Simplificando: algoritmo é geometria escrita em passos finitos e sem ambiguidade.
- Para não esquecer: 5 bullets sobre entrada, passos, saída, ordem e conferência.

## 14. Âncoras visuais/concretas
- Sequência numerada de construção do hexágono.
- Fluxograma simples com setas.
- Tela ou comandos do GeoGebra.
- Comparação entre instrução ambígua e instrução precisa.
- Receita ou manual de montagem como analogia controlada.

## 15. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Lucas 14:28.
- Ponteiro específico: calcular antes de construir e seguir cada passo.
- Conexão temática: integridade aparece como fidelidade ao processo; pular uma etapa muda o resultado final.

## 16. Critérios de aceite
O capítulo está adequado se:
- define algoritmo com entrada, passos e saída;
- transforma uma construção do Capítulo 2 em sequência escrita;
- inclui fluxograma simples;
- relaciona passos com GeoGebra ou geometria dinâmica;
- apresenta correção de ambiguidade;
- não ensina linguagem de programação nem estruturas de controle formais.

## 17. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **identificará** entrada, passos e saída em uma construção geométrica.
2. O aluno **escreverá** algoritmos de construção sem ambiguidade.
3. O aluno **representará** uma construção por fluxograma.
4. O aluno **relacionará** comandos de geometria dinâmica a passos geométricos.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Nomeia os dados iniciais.
- Ordena ações dependentes.
- Declara a figura final esperada.

**Para o objetivo 2:**
- Usa passos numerados.
- Nomeia pontos e instrumentos.
- Evita instruções vagas.

**Para o objetivo 3:**
- Usa caixas e setas em sequência coerente.
- Mostra dependências entre passos.
- Mantém início e saída reconhecíveis.

**Para o objetivo 4:**
- Associa comando a ação geométrica.
- Reconhece erro quando a saída não corresponde.
- Ajusta a instrução para reduzir ambiguidade.

### Habilidade BNCC apoiada no capítulo
- **EF08MA09**, ao descrever e executar construções com instrumentos ou softwares de geometria dinâmica.

## 18. Referências
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Geometria/9ano/unidade-4-poligonos-e-construcoes-geometricas.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- BNCC: EF08MA09
- Al-Khwarizmi e a tradição algorítmica.
