# Regras da Skill do Autor — Biologia

Estas regras complementam `prompt-autor.md` e `CLAUDE.md`. Elas devem ser lidas antes de produzir capítulos de Biologia e aplicadas junto com o blueprint da unidade.

## 1. Pesquisa antes de escrever

- Antes de escrever cada capítulo, pesquisar o tema com Perplexity/web e cruzar com o blueprint.
- Priorizar fontes científicas e educacionais confiáveis: livros didáticos reconhecidos, universidades, museus, institutos de pesquisa, sociedades científicas, bases como NCBI/NIH, materiais curriculares oficiais e referências didáticas consolidadas.
- Validar especialmente nomes próprios, datas, mecanismos biológicos, relações causa-efeito, cálculos genéticos, termos técnicos e distinções conceituais.
- Não citar Perplexity nem URLs no corpo do capítulo; usar a pesquisa para corrigir e calibrar o conteúdo antes de salvar.

## 2. Validação técnica via Perplexity

Ao terminar um capítulo, fazer uma checagem técnica objetiva:

- Consultar Perplexity/web com uma pergunta curta sobre os pontos de maior risco do capítulo.
- Confirmar se as afirmações centrais estão corretas e se não há simplificação enganosa.
- Conferir pares conceituais que costumam gerar erro: mitose x meiose, gene x alelo, genótipo x fenótipo, transcrição x tradução, mutação x recombinação, evolução populacional x adaptação individual, dominância x frequência.
- Em genética, verificar proporções, probabilidades, cruzamentos e leituras de heredogramas.
- Em bioquímica, verificar nomes de moléculas, estrutura, função e papel de enzimas/proteínas.
- Em biotecnologia, verificar fluxo do processo, aplicação real e limitações.
- Se a validação apontar erro, corrigir o Markdown e a figura antes de considerar o capítulo pronto.

## 3. Regras para imagens e TikZ

Toda imagem deve ensinar uma relação, processo ou estrutura. Não usar imagem apenas decorativa.

- Pesquisar primeiro o padrão visual do diagrama que será criado ou redesenhado.
- Usar fonte sans-serif em todos os TikZ.
- Manter acentuação correta em todos os rótulos em português.
- Usar labels curtos, hierarquia visual clara e leitura em uma direção principal.
- Evitar setas cruzadas, caixas sobrepostas, texto sobre desenho e linhas que atravessem rótulos.
- Usar cores funcionais: destacar categorias, fases ou fluxo; não transformar o diagrama em paleta decorativa.
- Renderizar o PNG e revisar visualmente antes de inserir no capítulo.
- No Markdown, usar somente link bruto `raw.githubusercontent.com`; nunca caminho relativo nem `blob/main`.

## 4. Padrões visuais por tipo de conteúdo

- **Heredogramas:** usar símbolos padronizados, gerações alinhadas, legenda curta e setas apenas quando ajudarem a leitura.
- **Quadros de Punnett:** manter matriz limpa, gametas nas bordas, genótipos no centro e probabilidades em texto curto separado.
- **Cromossomos e meiose:** separar fases visualmente, usar pares homólogos com cores distintas e evitar excesso de labels.
- **DNA, RNA e proteína:** fluxo linear `DNA -> RNA -> proteína`; explicar onde ocorre cada etapa quando for relevante.
- **Enzimas:** representar substrato, sítio ativo, complexo enzima-substrato e produto com formas simples; diferenciar chave-fechadura de ajuste induzido quando aparecer.
- **Regulação gênica:** usar blocos funcionais e setas de ativação/inibição com legenda.
- **Epigenética:** separar DNA, histonas e marca química; evitar sugerir que a sequência do DNA mudou quando o conceito for regulação.
- **Mutações:** mostrar antes/depois com destaque mínimo no ponto alterado; nomear substituição, inserção ou deleção quando couber.
- **PCR/biotecnologia:** usar fluxograma por etapas, com verbos curtos e sem texto longo dentro das caixas.
- **Origem da vida:** distinguir hipótese, evidência e limite do modelo; usar linha do tempo ou fluxo causal quando ajudar.

## 5. Critério de pronto

Um capítulo de Biologia só está pronto quando:

- segue a estrutura fixa do autor;
- passou por pesquisa inicial;
- passou por validação técnica via Perplexity/web;
- contém imagens onde a visualização melhora o aprendizado;
- todos os TikZ renderizados têm fonte sans-serif, acentuação correta e boa legibilidade;
- todos os links de imagem existem localmente e usam URL bruta do GitHub;
- não há imagem branca, cortada, embolada ou com texto sobreposto.
