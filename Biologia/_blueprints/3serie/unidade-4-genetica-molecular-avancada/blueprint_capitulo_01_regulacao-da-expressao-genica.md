# Blueprint Técnico — Capítulo 1: Regulação da Expressão Gênica

## 1. Identificação
- Disciplina: Biologia
- Ano/Série: 3ª Série EM
- Bimestre: 2º
- Unidade: 4 — Genética Molecular Avançada
- Capítulo: 1 de 4
- Título: Regulação da Expressão Gênica
- Códigos BNCC: EM13CNT201; EM13CNT207
- Profundidade geral: N3

## 2. Objetivo do capítulo
Explicar como células controlam a expressão de genes em procariotos e eucariotos, comparando o óperon lac com níveis eucarióticos de regulação e relacionando cromatina à ativação ou silenciamento gênico.

## 3. Pergunta-problema
*"Se todas as células do seu corpo têm o mesmo DNA, por que célula do fígado é diferente de neurônio?"*

## 4. Tensão narrativa
O DNA não funciona como uma lista que a célula lê inteira o tempo todo. Uma bactéria só produz enzimas para metabolizar lactose quando a lactose está disponível; um neurônio e uma célula hepática carregam o mesmo genoma, mas expressam conjuntos diferentes de genes. A pergunta decisiva não é apenas "que genes existem?", mas "quais genes estão ativos, em que intensidade, em que momento e em que tipo celular?".

## 5. Sequência conceitual obrigatória
1. Retomar DNA, RNA, transcrição e tradução como pré-requisitos breves.
2. Definir expressão gênica como uso da informação do gene para produzir RNA/proteína funcional.
3. Apresentar regulação como economia, resposta ambiental e diferenciação celular.
4. Desenvolver o óperon lac: gene regulador, promotor, operador, genes estruturais, repressor e lactose/alolactose.
5. Comparar condição sem lactose e com lactose.
6. Apresentar regulação eucariótica por múltiplos níveis: transcricional, processamento de RNA, traducional e pós-traducional.
7. Explicar cromatina: eucromatina, heterocromatina, acetilação e metilação de histonas.
8. Fechar com síntese comparativa procariotos × eucariotos.

## 6. Pesos internos
| Subtópico | Peso | Nível | Orientação |
|---|---|---|---|
| **Óperon Lac (Jacob & Monod, 1961)** | **40%** | **N3** | **Coração 1.** Estrutura + funcionamento + regulação negativa por indução. |
| **Regulação eucariótica (4 níveis)** | **40%** | **N3** | **Coração 2.** Transcricional, processamento, traducional e pós-traducional. |
| Cromatina ativa × inativa | 20% | N2-N3 | Eucromatina × heterocromatina; acetilação × metilação histônica. |

## 7. Conceitos obrigatórios
- Expressão gênica
- Regulação gênica
- Óperon
- Óperon lac
- Promotor
- Operador
- Genes estruturais
- Gene regulador
- Repressor
- Indução
- Regulação negativa
- Fator de transcrição
- Enhancer
- Silencer
- Splicing alternativo
- miRNA
- Regulação pós-traducional
- Cromatina
- Eucromatina
- Heterocromatina
- Acetilação de histonas
- Metilação de histonas

## 8. Termos a explicar com tradução curta
- **Expressão gênica:** processo pelo qual a informação de um gene é usada para formar RNA ou proteína funcional.
- **Óperon:** conjunto de genes e sequências reguladoras controlados como unidade em procariotos.
- **Promotor:** região do DNA onde a RNA polimerase se liga para iniciar a transcrição.
- **Operador:** região reguladora onde o repressor pode se ligar e bloquear a transcrição.
- **Repressor:** proteína reguladora que impede a expressão de genes em certas condições.
- **Indução:** ativação da expressão quando uma molécula sinalizadora remove ou inativa o bloqueio.
- **Enhancer/silencer:** regiões reguladoras eucarióticas que aumentam ou reduzem a transcrição.
- **Eucromatina:** cromatina menos compactada, geralmente associada a genes ativos.
- **Heterocromatina:** cromatina condensada, geralmente associada a genes silenciados.

## 9. Escopo obrigatório
O capítulo DEVE explicar:
- por que a célula precisa regular genes em vez de expressar tudo;
- o óperon lac como modelo clássico de Jacob e Monod;
- o estado do óperon lac sem lactose e com lactose;
- por que o óperon lac é exemplo de regulação negativa por indução;
- que eucariotos regulam genes em vários níveis, não apenas no início da transcrição;
- como splicing alternativo amplia possibilidades de proteína;
- como miRNAs podem reduzir tradução;
- como modificações pós-traducionais alteram atividade de proteínas;
- a relação entre cromatina aberta/fechada e expressão gênica;
- uma comparação final entre rapidez procariota e complexidade eucariota.

## 10. Escopo proibido (NÃO ANTECIPAR)
O capítulo NÃO DEVE:
- desenvolver epigenética ambiental em profundidade, que é capítulo 2;
- transformar metilação de histonas em lista universitária de marcas específicas;
- explicar CRISPR, clonagem, terapia gênica ou edição genômica;
- aprofundar biologia molecular de fatores de transcrição além do necessário;
- tratar óperon lac como modelo válido para células humanas;
- substituir o mecanismo molecular por metáforas de integridade.

## 11. Linguagem esperada
- Referência operacional: `Referencias/series.md` — seção **3ª Série EM**.
- Vocabulário técnico-acadêmico, com definição de termos novos na primeira ocorrência.
- Abertura com contraste entre mesmo DNA e identidades celulares diferentes.
- Exemplos aceitáveis: bactéria em meio com/sem lactose, neurônio × hepatócito, hemoglobina em hemácias, enzimas digestivas, proteínas de membrana.
- O texto deve construir síntese, não apenas listar controles.

## 12. Estrutura do capítulo (slots a preencher)
- Título: `# Capítulo 1 — Regulação da Expressão Gênica`
- Pergunta-problema: `## Se todas as células do seu corpo têm o mesmo DNA, por que célula do fígado é diferente de neurônio?`
- Abertura narrativa: cena de uma célula que possui milhares de genes, mas precisa escolher quais usar; contraste bactéria com lactose e corpo humano multicelular; chamada com 💭.
- Para Conversar de intro: "O que aconteceria se uma célula expressasse todos os seus genes ao mesmo tempo?"
- Desenvolvimento em 4 blocos numerados:
  - Bloco 1 — Expressar Não É Ter: retomar DNA/RNA/proteína e definir expressão gênica.
    - `### 1.1 O gene como possibilidade`
    - `### 1.2 A expressão como decisão celular`
  - Bloco 2 — Óperon Lac: Um Interruptor Molecular: desenvolver Jacob & Monod, componentes e estados sem/com lactose.
    - `### 2.1 Quando a lactose está ausente`
    - `### 2.2 Quando a lactose aparece`
  - Bloco 3 — Regulação Eucariótica: Muitas Camadas de Controle: cobrir transcrição, processamento, tradução e pós-tradução.
    - `### 3.1 Controlar antes, durante e depois do RNA`
    - `### 3.2 Um gene, mais de uma possibilidade`
  - Bloco 4 — Cromatina: O DNA Que Abre e Fecha: cobrir eucromatina, heterocromatina, acetilação e metilação.
    - `### 4.1 Eucromatina e heterocromatina`
    - `### 4.2 Histonas como controle de acesso`
- Sua Parte: interpretar três esquemas: óperon sem lactose, óperon com lactose e gene eucariótico com enhancer ativo.
- Curiosidade da Biologia: Jacob e Monod publicaram em 1961 um modelo que se tornou referência para entender controle gênico.
- Enquanto isso...: Ec 3:1 como paralelo cultural para "tempo" de expressão; usar como ponte, não como prova biológica.
- E para hoje...: Provérbios 10:9; integridade como expressão com critério.
- Esse foi o "cara": Jacques Monod (1910–1976), bioquímico francês, Instituto Pasteur, Nobel de 1965.
- Você já pensou nisso?: duas células com mesmo DNA podem ser radicalmente diferentes porque expressam genes diferentes.
- Simplificando: ter um gene não significa usá-lo; procariotos podem regular genes em bloco; eucariotos regulam em múltiplas camadas; cromatina aberta favorece expressão.
- Para não esquecer: 4 bullets sobre óperon lac, regulação eucariótica, cromatina e diferença DNA/expressão.

## 13. Âncoras visuais/concretas
- Diagrama do óperon lac com promotor, operador, genes estruturais e repressor.
- Quadro comparativo "sem lactose" × "com lactose".
- Fluxograma dos níveis de regulação eucariótica: DNA → pré-mRNA → mRNA → proteína → proteína modificada.
- Esquema eucromatina × heterocromatina.

## 14. Conexão VP
- Unidade VP: Integridade
- Versículo principal sugerido: Provérbios 10:9
- Ponteiro específico: o óperon lac expressa genes apenas quando há critério metabólico; integridade não é fazer tudo o tempo todo, mas agir de modo coerente com contexto e propósito.
- Conexão temática: Daniel manteve valores constantes em contextos diferentes; a célula também precisa responder ao ambiente sem perder sua organização interna.

## 15. Critérios de aceite
O capítulo está adequado se:
- preserva a pergunta-problema literal;
- explica os componentes do óperon lac e seus dois estados funcionais;
- distingue regulação procariótica e eucariótica;
- inclui os quatro níveis de regulação eucariótica indicados no framework;
- explica eucromatina, heterocromatina, acetilação e metilação de histonas;
- não antecipa epigenética ambiental, CRISPR ou terapia gênica;
- apresenta Monod como personagem histórico do capítulo;
- inclui aplicação, limite e síntese comparativa.

## 16. Objetivos e Indicadores de Aprendizagem

### Objetivos de aprendizagem
1. O aluno **explicará** o funcionamento do óperon lac em ausência e presença de lactose, identificando corretamente pelo menos 4 componentes do sistema.
2. O aluno **comparará** regulação gênica em procariotos e eucariotos, citando pelo menos 3 diferenças funcionais.
3. O aluno **relacionará** cromatina, histonas e expressão gênica, justificando por que cromatina condensada tende a reduzir transcrição.
4. O aluno **analisará** um esquema de regulação gênica e inferirá se o gene tende a estar ativo ou reprimido, com justificativa molecular.

### Indicadores de aprendizagem
**Para o objetivo 1:**
- Identifica promotor, operador, genes estruturais e repressor.
- Descreve o bloqueio na ausência de lactose.
- Descreve a indução quando lactose/alolactose inativa o repressor.

**Para o objetivo 2:**
- Reconhece óperon como organização típica de procariotos.
- Lista níveis eucarióticos de controle: transcricional, processamento, traducional e pós-traducional.
- Explica por que eucariotos têm regulação mais distribuída.

**Para o objetivo 3:**
- Diferencia eucromatina de heterocromatina.
- Relaciona acetilação de histonas a cromatina mais aberta.
- Reconhece que metilação de histonas pode ativar ou reprimir conforme o contexto.

**Para o objetivo 4:**
- Interpreta posição de repressor ou fator de transcrição em esquema.
- Infere consequência para transcrição.
- Justifica a inferência usando vocabulário molecular correto.

### Habilidades BNCC consolidadas no capítulo
- **EM13CNT201:** analisar modelos científicos relacionados à vida, usando óperon e regulação eucariótica como modelos de expressão gênica.
- **EM13CNT207:** discutir aplicações e implicações de ciência e tecnologia, preparando base para biotecnologia e bioética molecular.

## 17. Referências
- Framework de origem: `unidade-4-genetica-molecular-avancada.md`
- Blueprint da unidade: `blueprint_unidade.md`
- `Referencias/series.md`
- `Referencias/niveis_profundidade.md`
- `Referencias/objetivos_aprendizagem.md`
- Jacob, F. & Monod, J. (1961). *Journal of Molecular Biology*
- Alberts et al., *Molecular Biology of the Cell*
