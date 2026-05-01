# Capítulo 3 — Análise Crítica de Gráficos

## Como um gráfico pode enganar sem falsificar o número?

Um anúncio mostra duas marcas de celular lado a lado: a marca A aparece com 35% de preferência e a marca B com 32%. No gráfico, a barra da marca A parece quase três vezes mais alta que a da marca B. Os números no rótulo estão certos. A imagem, porém, está mentindo. O capítulo todo nasce desse incômodo: gráfico pode ser fiel ao número e infiel ao olho.

> 💭 **Pense um pouco:**  
> Você já acreditou em uma imagem antes de conferir a escala?

---

## 1. Quando o desenho mente

Mentira gráfica não precisa de número falso — basta um desenho que distorce a comparação.

### 1.1 Diferença real e diferença visual

Um gráfico honesto faz com que a diferença que o olho vê seja parecida com a diferença que os números mostram. Quando isso não acontece, o leitor é conduzido a uma conclusão que os dados não sustentam.

> A diferença real entre as duas marcas é 3 pontos percentuais (35 − 32). Se a barra de uma aparece três vezes maior que a da outra, a diferença visual ficou cerca de dez vezes maior que a diferença real.

### 1.2 Gráficos 3D, ícones e proporções

Gráfico em **3D** parece moderno, mas costuma confundir. A perspectiva muda o tamanho aparente das colunas, e o olho compara áreas em vez de alturas. O resultado é leitura imprecisa.

**Pictograma** — gráfico com ícones — funciona bem quando todos os ícones têm o mesmo tamanho, e a quantidade de ícones representa a quantidade de dado. O problema aparece quando o tamanho do ícone cresce junto com o valor.

Veja: para representar "consumo dobrou", se o ícone tem o dobro da altura **e** o dobro da largura, a área dele fica quatro vezes maior. O olho compara a área, não a altura, e lê quatro em vez de dois.

> 💡 **Você sabia?**  
> Edward Tufte chama de **integridade gráfica** o compromisso de o desenho contar a mesma história que os números.

---

## 2. Escalas que mudam a história

A escala é o lugar onde a maior parte das distorções acontece — e onde a auditoria começa.

### 2.1 Escala cortada

**Escala cortada** é o eixo vertical que começa acima de zero. Em gráfico de barras, isso amplia visualmente diferenças pequenas.

Compare estes dois gráficos do mesmo dado de IDEB do Brasil para os anos finais do Ensino Fundamental:

| Ano | IDEB (anos finais EF) |
|---:|---:|
| 2019 | 4,9 |
| 2021 | 5,1 |

Com eixo de 0 a 6, a diferença entre 4,9 e 5,1 aparece como uma sobra discreta no topo das barras. Com eixo cortado começando em 4,8, a barra de 2021 parece o triplo da de 2019. O número é o mesmo; o desenho não.

A regra prática: em barras, o eixo vertical começa em 0, e ponto. Quando o gráfico precisar mostrar variação muito pequena, há outras formas honestas — dizer claramente "diferença em pontos percentuais", por exemplo, em vez de cortar a escala sem aviso.

### 2.2 Escala irregular e eixo invertido

**Escala irregular** é aquela em que o passo entre marcas muda no meio do eixo. Um eixo com 0, 10, 20, 50, 100 não é escala — é confusão. O olho lê posições iguais como diferenças iguais, e o eixo irregular quebra essa leitura.

**Eixo invertido** é raro, mas existe: o eixo vertical aparece de cima para baixo, ou o eixo horizontal aparece da direita para a esquerda. Sem aviso visível, o leitor lê tudo trocado.

> 📊 **Nos Números:**  
> Um eixo com marcas em 0, 5, 10, 30, 50 não é escala — é falha de construção que distorce qualquer comparação.

---

## 3. Fonte e método

Mesmo um gráfico bem desenhado pode estar errado se a origem do dado for frágil.

### 3.1 Quem produziu o gráfico?

**Fonte primária** é quem produziu o dado original, como IBGE, INEP, Banco Central, OMS ou Ministério da Saúde. **Fonte secundária** é quem republica o dado, como jornal, revista ou rede social.

Citar fonte secundária sem indicar a primária deixa o leitor sem rastreabilidade. Se o jornal disser apenas "segundo nossa apuração", o leitor não consegue conferir a coleta original.

### 3.2 Quando, como e sobre quem os dados foram coletados?

Quatro perguntas terminam de avaliar o dado: **quando** foi coletado, **como** foi coletado, **sobre quem**, e **para quê**.

A data importa porque a realidade muda. Um dado de 2010 sobre uso de redes sociais não descreve 2026. O método importa porque pesquisa por internet costuma alcançar público diferente de pesquisa presencial. A população importa porque dado de uma capital não fala por todo o país. A finalidade importa porque pesquisa encomendada por uma marca pode ter recortes que favorecem essa marca.

A **metodologia** é o lugar do gráfico em que essas respostas aparecem. Quando ela não aparece, o leitor responsável fica em alerta.

---

## 4. Vocabulário da crítica

Crítica visual usa palavras técnicas — vale conhecê-las.

### 4.1 Chartjunk e data-ink ratio

**Chartjunk** é o nome que Tufte deu a tudo o que ocupa espaço no gráfico sem informar: sombra, fundo decorado, moldura, ilustração lateral, brilho.

A ideia oposta é o **data-ink ratio**: quanto da tinta do gráfico carrega dado real. Quanto mais alto, mais limpo é o gráfico. Quanto mais baixo, mais decoração disputa atenção com a informação.

Para o aluno do 7º ano, a tradução é simples: gráfico com excesso visual atrapalha a leitura, mesmo que o dado esteja certo.

### 4.2 Lie factor como alerta de proporção

**Lie factor** é o nome que Tufte deu a um alerta: a diferença visual deve acompanhar a diferença numérica. Quando o tamanho da barra parece muito maior do que a diferença real entre os números, o gráfico está distorcendo.

> No exemplo das marcas com 35% e 32%, a diferença real é 3 pontos. Se a barra parece três vezes maior, a diferença visual está cerca de dez vezes amplificada. Esse descompasso é o sinal de alerta.

A regra para usar agora: olhe a diferença numérica, olhe a diferença visual, e pergunte se as duas combinam. Se não combinam, suspeite do gráfico mesmo que os números estejam corretos.

> 🕵️ **Caso Real:**  
> Em propagandas eleitorais de candidatos com diferença de 1 ponto percentual, escala cortada já transformou empate técnico em "vitória esmagadora" no gráfico.

---

## NA VIDA REAL

Em redes sociais, gráficos circulam recortados, sem fonte e com escala cortada — e ganham mais compartilhamentos do que gráficos honestos do IBGE ou do Banco Central. A análise crítica é a única ferramenta do leitor para não passar adiante uma imagem que conduz ao engano.

---

## E A BIBLIA NISSO?

> "Por isso, deixando a mentira, fale cada um a verdade ao seu próximo, pois somos membros uns dos outros." (Efésios 4:25)

Falar a verdade ao próximo é também escolher representações que não enganam. Um gráfico com escala cortada, ícones desproporcionais ou fonte oculta pode usar números corretos e ainda assim conduzir o leitor à conclusão errada.

- **Honestidade visual é parte da honestidade da palavra:** quando alguém compartilha um gráfico, está afirmando algo. Se o desenho distorce o dado, a afirmação distorce a verdade — mesmo que a intenção não fosse mentir (Provérbios 12:22).

> 💬 **Para Conversar:**  
> Antes de compartilhar uma imagem com gráfico, você costuma conferir eixo, escala e fonte?

---

## Simplificando

Análise crítica é olhar o gráfico procurando descompasso entre dado e desenho, escala e proporção, fonte e método. Gráfico enganoso nem sempre tem número falso; muitas vezes tem desenho infiel ao número.

---

## Para nao esquecer

- **Escala:** confira início e passo do eixo — escala cortada e marcas irregulares costumam distorcer.
- **Proporção:** diferença visual deve acompanhar diferença numérica; quando não acompanha, há lie factor.
- **Fonte e método:** sem origem do dado, data e descrição da coleta, o gráfico não está completo.
