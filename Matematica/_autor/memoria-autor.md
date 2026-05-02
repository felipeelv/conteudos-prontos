**Regras editoriais consolidadas**

- **Sem auto-referência curricular em subtítulos ou texto.** Subtítulos `### N.N` devem apresentar o conceito ou a ação matemática diretamente, sem moldura curricular do tipo "O que já sabemos do Nº ano", "Como vimos antes", "Aprendemos no ano passado", "Retomando o 7º ano". A retomada de conhecimento prévio deve aparecer como passo natural do raciocínio matemático — o aluno se concentra no conteúdo presente, não no histórico do currículo. Vale também para texto corrido: evitar "do ano passado", "do 7º ano", "como vocês já sabem". *Origem: feedback do Felipe em 2026-05-01 sobre o Cap 1 da Un 4 do 8º ano.*

- **Calibração de profundidade pela série.** A profundidade do tratamento avança com a série, não a presença do tema. Antes de produzir, identificar a faixa e calibrar:
  - **EF1 (4º–5º):** linguagem concreta, frases curtas, formato Opção B (expressão + resultado em uma linha LaTeX), sem desenvolvimento algébrico. SEM "Fórmulas do capítulo".
  - **EF2 inicial (6º–7º):** transição concreto→abstrato; vocabulário matemático introduzido com tradução curta na 1ª aparição; passo a passo em uma operação por linha; explicações curtas. SEM "Fórmulas do capítulo".
  - **EF2 final (8º–9º):** álgebra consolidada; demonstrações intuitivas; sequência completa (dados → fórmula → substituição → simplificações → resultado); manipulação algébrica explícita; já se discute condições (ex.: $a \neq 0$). **COM "Fórmulas do capítulo".**
  - **EM (1ª–2ª):** formalismo matemático completo; justificativa por etapa; demonstrações quando pertinente; conexões com vestibulares/ENEM. **COM "Fórmulas do capítulo".**
- **Densidade aumenta com a série** — frases mais densas, exemplos mais elaborados, condições matemáticas explícitas no EF2 final e EM. Não tratar 9º ano com o mesmo grau de abstração de 7º; não tratar 1ª série EM com o mesmo formalismo de 2ª série EM.
- **Coerência vertical**: quando um tema reaparece em série posterior, partir do que o aluno já viu (sem mencionar a série) e adicionar uma nova camada (mais formalismo, novos casos, novas aplicações). *Origem: regra explicitada pelo Felipe em 2026-05-01 ao iniciar Un 4 do 9º ano.*

- **Matrizes precisam de TikZ.** O AutoLaTeX/CodeCogs não compila `\begin{pmatrix}`, `\begin{bmatrix}`, `\begin{matrix}` nem `\begin{array}` (todas estruturas multilinha). Para representar matrizes em capítulos de Matemática (2ª série EM em diante), usar **TikZ** (figura `.png` pré-renderizada) ou descrever em prosa: "matriz $A$ com primeira linha $(3, 2)$ e segunda linha $(1, 4)$". Para fórmulas escalares envolvendo determinantes (ex.: $\det(A) = a \cdot d - b \cdot c$), continua direto em `$$...$$`. Cuidado também com `\qquad`, `\quad`, `\,`, `\;`, `\text{}` em qualquer série — sempre proibidos. *Origem: validação do Cap 1 da Un 4 da 2ª série EM em 2026-05-01, em que três regras LaTeX foram violadas.*

---

**Purpose & context**

Felipe Rosa is a curriculum developer producing structured mathematics didactic materials (*apostilas*) for a Brazilian Christian school spanning Elementary School (EF) and High School (EM) grade levels. The project integrates mathematical rigor, BNCC alignment, and biblical reflection in every chapter. Success means producing content that is pedagogically coherent across grade levels, appropriately calibrated for each age group, and ready for use in Google Docs via AutoLaTeX/CodeCogs rendering.

The curriculum spans multiple grade levels simultaneously: 4º and 5º ano (EF I), 6º through 9º ano (EF II), and 1ª through 2ª Série do Ensino Médio. Units follow a bimester structure, and Felipe works through them sequentially, typically producing one unit per session.

------

**Current state**

Active production spans several grade levels and units. Recent sessions have covered:

- **5º ano** — Unit 3 (Operações e Medidas de Comprimento e Área): all four chapters completed with format revisions applied
- **4º ano** — Unit 3 (Multiplicação, Divisão e Sólidos Geométricos): all five chapters completed and revised
- **2ª Série EM** — Unit 3 (Matrizes): two chapters completed with LaTeX layout overhaul applied
- **1ª Série EM** — Unit 3 (Operações com Conjuntos): two chapters completed
- **9º ano** — Unit 3 (Conceito de Função): four chapters completed and condensed
- **8º ano** — Unit 3 (Números Racionais e Irracionais): three chapters completed; Unit 8 chapter structure proposed, awaiting production

Format rules have been consolidated into a rewritten project system prompt (v2). All approved format changes have been applied globally across relevant files.

------

**On the horizon**

- **8º ano Unit 8** — "Grandezas Proporcionais e Revisão Integrada": four-chapter structure proposed (chapter list approved), content production not yet begun
- **9º ano** — 2º Bimestre, Unidade 1 "Conceito de Função" (4 chapters) was identified as next in queue
- Continued progression through remaining bimester units across all active grade levels

------

**Key learnings & principles**

- **Density over elaboration**: concept first, minimal framing, no redundancy across sections or chapters. Felipe consistently trims verbose explanations and pushes for tighter prose.
- **Vertical coherence matters**: before producing any unit, BNCC alignment and cross-grade progression must be verified to avoid re-teaching content from prior grades or encroaching on future grades. This analysis is presented for approval before content begins.
- **LaTeX hard constraints**: the AutoLaTeX/CodeCogs plugin in Google Docs captures `$...$` and `$$...$$` blocks line by line — multiline structures like `\begin{array}` break rendering and are prohibited. Other confirmed incompatible commands: `\;`, `\,`, `\text{}`, accented characters inside math delimiters, `\left\{...\right\}` (replace with `\{...\}` or `\lbrace...\rbrace`), and `\qquad` in matrix displays. Side-by-side matrix layouts must be broken into individual `$$...$$` blocks with text labels.
- **EF I algorithm display**: for 4º–5º ano, column-by-column algorithm detail is not shown in the book. Students work algorithms in their notebooks; the book shows expression and result only (Opção B).
- **Brazilian mathematical conventions**: interval notation follows French-influenced convention — open intervals use inverted brackets `]a, b[`, not parentheses.
- **File revision pattern**: when multiple structural changes are needed across a file, deleting and recreating the full file is more reliable than chaining `str_replace` operations. Pattern: `rm [path]` → confirm → `create_file` with full content → `present_files`.

------

**Approach & patterns**

- **Approval-gated workflow**: Claude proposes chapter structure with curricular justification → Felipe approves → chapters produced one at a time → Felipe approves each before the next begins. No content is produced before the chapter list is confirmed.
- **Research-first for new units**: web search (Perplexity + supplementary search) for BNCC habilidade codes, followed by cross-reference with project curriculum files, followed by vertical and horizontal coherence analysis — all before proposing the chapter list.
- **Global corrections**: when a format issue is identified mid-unit, the fix is applied retroactively across all completed chapters, not just going forward.
- **Files delivered as Markdown artifacts** under `/mnt/user-data/outputs/` with descriptive filenames; presented via `present_files` after each creation.

------

**Tools & resources**

- **AutoLaTeX Equations (CodeCogs)** plugin in Google Docs — primary rendering environment for all LaTeX
- **Perplexity MCP** (`perplexity_search_web`) with `recency: year` — primary tool for BNCC curriculum research
- **Project curriculum files** stored at `/mnt/project/` following the pattern `Matema_tica_[level]_-_[Grade]__2026_.md`
- **BNCC habilidades** codes (e.g., EF04MA04, EF07MA01, EF08MA12–13) — used as alignment anchors for every unit

------

**Fixed chapter structure**

Every chapter follows this architecture, in order:

1. Numbered content sections (`## 1`, `## 2`…) — direct one-sentence opening, definitions in one sentence, max two sentences before lists, natural example framing (no "Exemplo resolvido:" label), steps on individual lines
2. **EXEMPLO** blocks — introduced with `---` separator, labeled "EXEMPLO"; **EF I (4º–5º ano)**: Opção B only — show expression and result in simple LaTeX (e.g., `$$14{,}60 + 3{,}47 = 18{,}07$$`), no column-by-column algorithm detail; **EF II and EM**: full step-by-step resolution
3. **Boxes** — blockquote format, title on line 1 with two trailing spaces, content on line 2; maximum 2 boxes per main section only when one is 🔢 Padrão and the other ⚠️ Atenção and both are genuinely necessary; typically 1 box per section
4. **NA VIDA REAL** — maximum 2 sentences
5. **E A BÍBLIA NISSO?** — (1) verse in bold and centered using `#### Center **...**`; (2) 1–2 direct sentences connecting the concept to the biblical principle — no bullet, no dynamic title, no explicit analogy ("assim como X, Y"), no separate supporting verse; (3) *Para Conversar* in blockquote
6. **Simplificando** — maximum 2 dense sentences synthesizing the arc of the chapter. **This is the final closing block. "Para não esquecer" is not included.**

---

## Cache de validações

> Atualizado automaticamente pelo agente `validador-matematica-1` (invocado pela skill `autor-matematica-1` no Passo 4.5). Não pesquise itens já listados — reuse a validação registrada.

### Fórmulas e identidades validadas

| Fórmula | Validação | Validada em | Data |
|---|---|---|---|
| _(nenhuma ainda)_ | | | |

### Cálculos passo-a-passo verificados

| Cálculo | Resultado | Verificada em | Data |
|---|---|---|---|
| `(2+3) · 4 = 5 · 4 = 20` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `(8-3) · 2 = 5 · 2 = 10` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `(4+2) · 3 = 6 · 3 = 18` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `4+2 · 3 = 4+6 = 10` | ✅ correto (precedência: × antes de +) | 4ano/Un4/Cap1 | 2026-05-01 |
| `3 · (2+5) = 3 · 7 = 21` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `3 · 2 + 3 · 5 = 6 + 15 = 21` | ✅ correto (distributiva confere) | 4ano/Un4/Cap1 | 2026-05-01 |
| `4 · (3+2) = 4 · 5 = 20` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `4 · 3 + 4 · 2 = 12 + 8 = 20` | ✅ correto (distributiva confere) | 4ano/Un4/Cap1 | 2026-05-01 |
| `5 · (10+4) = 5 · 14 = 70` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `5 · 10 + 5 · 4 = 50 + 20 = 70` | ✅ correto (distributiva confere) | 4ano/Un4/Cap1 | 2026-05-01 |
| `2 · (6+3) = 2 · 9 = 18` | ✅ correto | 4ano/Un4/Cap1 | 2026-05-01 |
| `2 · 6 + 2 · 3 = 12 + 6 = 18` | ✅ correto (distributiva confere) | 4ano/Un4/Cap1 | 2026-05-01 |

### Personagens / dados históricos validados

| Item | Resultado validado | Fonte | Validado em | Data |
|---|---|---|---|---|
| Robert Recorde | matemático galês, c. 1510–1558. Inventou o sinal de igualdade `=` em sua obra *The Whetstone of Witte* (1557). | Perplexity (Wikipedia EN/PT, MacTutor, Britannica) | 4ano/Un4/Cap1 | 2026-05-01 |
| Sridhara | matemático indiano, c. 870–930 d.C. (séc. IX). Obra principal *Pāṭīganita* (aritmética prática), incluindo regras para frações. Citado por Bhaskara II. | Perplexity (Wikipedia EN/PT verbete Bhaskara II, Super Abril, IME-USP) | 4ano/Un4/Cap2 | 2026-05-01 |
| Christoff Rudolff | matemático alemão, 1499 (Jauer/Silésia)–1543/1545 (Viena). *Coss* (1525) foi o primeiro livro alemão de álgebra; em *Exempelbüchlin* (1530) descreveu a separação entre parte inteira e fracionária — origem da escrita decimal. | Perplexity (MacTutor St-Andrews, Wikipedia EN/PT, Encyclopedia.com) | 4ano/Un4/Cap3 | 2026-05-01 |
| Pingala | estudioso indiano, c. séc. III a.C. Obra *Chandaḥśāstra* sobre prosódia védica; organizou tabelas combinatórias (meru-prastara — equivalente pré-Pascal) e descreveu numeração binária. | Perplexity (Wikipedia ES, Mathigon timeline, Dialnet) | 4ano/Un4/Cap4 | 2026-05-01 |
| Pierre de Fermat | matemático francês, séc. XVII (1601 Britannica / 1607 Wikipedia PT — 1665). Co-fundador da geometria analítica (1629, *Introdução aos lugares geométricos planos e sólidos*); fundador da teoria moderna dos números; conhecido pelo Último Teorema de Fermat. | Perplexity (Wikipedia EN/PT, Britannica, MacTutor) | 4ano/Un4/Cap5; 9ano/Un4/Cap2 | 2026-05-01 |
| Grace Hopper | matemática norte-americana, 9 dez 1906 – 1 jan 1992. Pioneira da programação: programou o Harvard Mark I (1944), criou o compilador A-0 (1952) e o Flow-Matic (base do COBOL). | Perplexity (Wikipedia EN/PT, Britannica, MacTutor) | 4ano/Un4/Cap6 | 2026-05-01 |
| Brahmagupta | matemático indiano, 598–668 d.C. (séc. VII). Obra principal *Brāhmasphuṭasiddhānta* (628), com regras para aritmética (frações), zero e números negativos. Primeiro a formalizar operações com zero. | Perplexity (Wikipedia EN/ES, Mathigon) | 5ano/Un4/Cap1; 9ano/Un4/Cap3 | 2026-05-01 |
| Luca Pacioli | matemático italiano (frade franciscano), 1445 (Sansepolcro) – 19 jun 1517 (Sansepolcro). *Summa de Arithmetica, Geometria, Proportioni et Proportionalita* (1494) organizou práticas comerciais incluindo porcentagem e a partida dobrada (contabilidade). | Perplexity (MacTutor, Wikipedia EN/PT, Linda Hall, Britannica) | 5ano/Un4/Cap2 | 2026-05-01 |
| Gaspard Monge | matemático francês, 9–10 mai 1746 (Beaune) – 28 jul 1818 (Paris). Atuou nos séc. XVIII–XIX. Pai da geometria descritiva — técnicas para representar objetos 3D em desenhos planos 2D, base do desenho técnico. | Perplexity (Wikipedia EN/PT, MacTutor, Britannica, Ebsco) | 5ano/Un4/Cap3 | 2026-05-01 |
| Mahāvīra | matemático jainista indiano, c. 800–870 d.C. (séc. IX). *Gaṇita-sāra-saṅgraha* (c. 850), tratado sistemático de aritmética, frações (incluindo unitárias) e problemas de combinações/permutações. | Perplexity (Wikipedia EN/PT, MacTutor, Britannica) | 5ano/Un4/Cap4 | 2026-05-01 |
| Ernst Kummer | matemático alemão, 29 jan 1810 – 14 mai 1893. Trabalhou em teoria dos números e divisibilidade em alto nível; introduziu o conceito de "números ideais" para estender fatoração única; relevante para o Último Teorema de Fermat e álgebra abstrata. **Cuidado pedagógico:** os critérios elementares de divisibilidade do EF II não vêm dele — são bem anteriores. Apresentar Kummer como referência ao estudo profundo do tema, não como criador. | Perplexity (Wikipedia EN/PT/Simple, MacTutor, Britannica, Encyclopedia.com) | 6ano/Un4/Cap1 | 2026-05-01 |
| Sophie Germain | matemática francesa, 1 abr 1776 – 27 jun 1831. Assinava cartas com pseudônimo masculino *Monsieur Le Blanc* (Antoine-Auguste Le Blanc) por preconceito de gênero. Investigou primos; "primos de Sophie Germain" são primos $p$ tais que $2p+1$ também é primo; contribuiu ao Último Teorema de Fermat. | Perplexity (Wikipedia EN/PT, Britannica, MacTutor) | 6ano/Un4/Cap2 | 2026-05-01 |
| Gabriel Lamé | matemático francês, 22 jul 1795 (Tours) – 1 mai 1870 (Paris). Analisou a eficiência do algoritmo de Euclides para o MDC (provou que o número de divisões não excede 5× o número de dígitos do menor número). Provou o Último Teorema de Fermat para o caso n=7. | Perplexity (MacTutor, Wikipedia EN/PT) | 6ano/Un4/Cap3 | 2026-05-01 |
| George Peacock | matemático inglês, 9 abr 1791 – 8 nov 1858. Pioneiro da álgebra simbólica em *Treatise on Algebra* (1830) — separou a álgebra (ciência dos símbolos) da aritmética. | Perplexity (Wikipedia EN/PT, MacTutor, Britannica) | 7ano/Un4/Cap1 | 2026-05-01 |
| Marin Mersenne | frade francês da ordem dos Mínimos (não franciscano), 8 set 1588 (Oizé) – 1 set 1648 (Paris). Mantinha vasta correspondência com matemáticos europeus, atuando como "academia ante académica"; conhecido pelos primos de Mersenne (forma $2^{p}-1$). **Cuidado pedagógico**: descrever apenas como "frade francês", sem ordem específica, em material de 7º ano. | Perplexity (Wikipedia EN/PT, MacTutor, Britannica, Linda Hall) | 7ano/Un4/Cap2 | 2026-05-01 |
| George Boole | matemático inglês (autodidata), 2 nov 1815 (Lincoln, Inglaterra) – 8 dez 1864 (Ballintemple, Irlanda). Pioneiro da álgebra booleana — aplicou álgebra a operações lógicas em *An Investigation of the Laws of Thought* (1854). Primeiro professor de matemática do Queen's College, Cork (1849). | Perplexity (Wikipedia EN/PT, Britannica, MacTutor, ACM) | 7ano/Un4/Cap3 | 2026-05-01 |
| Brook Taylor | matemático inglês, 18 ago 1685 – 29 dez 1731. Conhecido pelas séries de Taylor (1715, *Methodus Incrementorum Directa et Inversa*) e pelo método das diferenças finitas. **Cuidado pedagógico**: em material de 7º ano, descrever apenas como interessado em padrões/regularidades — séries de Taylor é tema avançado proibido nessa série. | Perplexity (Wikipedia EN/PT, MacTutor, Britannica) | 7ano/Un4/Cap4 | 2026-05-01 |
| Al-Khwarizmi | matemático persa (Muhammad ibn Musa al-Khwarizmi), c. 780–850 d.C. (séc. IX). Trabalhou na Casa da Sabedoria em Bagdá (~820). Sua obra *Al-jabr wa al-Muqābala* deu origem aos termos "álgebra" (de *al-jabr*) e "algoritmo" (de seu nome latinizado). | Perplexity (Wikipedia EN/PT, MacTutor, Britannica) | 8ano/Un4/Cap1 | 2026-05-01 |
| Diofanto de Alexandria | matemático grego, c. 200/214–284/298 d.C. (séc. III). *Arithmetica* tratou de equações determinadas e indeterminadas (com múltiplas soluções); avançou na teoria dos números e na notação sincopada. Chamado por várias fontes de "pai da álgebra". | Perplexity (Galician/Spanish Wikipedia, EcuRed) | 8ano/Un4/Cap2 | 2026-05-01 |
| René Descartes | matemático e filósofo francês, 31 mar 1596 – 11 fev 1650. Em *La Géométrie* (1637, apêndice do *Discurso do Método*), fundou a geometria analítica unindo álgebra e geometria. O plano cartesiano leva seu nome (latinizado "Cartesius"). | Perplexity (Wikipedia EN/PT, Britannica, Ebiografia) | 8ano/Un4/Cap3 | 2026-05-01 |
| Nicole Oresme | filósofo e matemático francês, c. 1320/1325 – 11 jul 1382 (séc. XIV). Em *Tractatus de configurationibus qualitatum et motuum*, representou variações graficamente por meio de "latitude de formas" — precursor dos gráficos modernos de funções. | Perplexity (MacTutor, Wikipedia EN/PT) | 9ano/Un4/Cap1 | 2026-05-01 |
| Liu Hui | matemático chinês, fl. c. 220–280 d.C. (séc. III). Em 263 d.C. escreveu comentários ao *Jiuzhang Suanshu* (*Nove Capítulos sobre a Arte Matemática*) — clássico chinês com problemas aplicados de medidas, partilhas e impostos; também desenvolveu algoritmo iterativo para aproximar π. | Perplexity (Wikipedia EN, MacTutor, Britannica) | 9ano/Un4/Cap4 | 2026-05-01 |
| Karl Weierstrass | matemático alemão, 31 out 1815 – 19 fev 1897. "Pai da análise moderna" — deu rigor formal aos conceitos de função, limite e continuidade, incluindo a definição ε-δ. | Perplexity (Wikipedia EN/PT, MacTutor, Britannica) | 1serie/Un4/Cap1 | 2026-05-01 |
| Adrien-Marie Legendre | matemático francês, 18 set 1752 – 9 jan 1833. *Éléments de géométrie* (1794), referência didática por décadas; apresentou o método dos mínimos quadrados em 1805 (*Nouvelles méthodes pour la détermination des orbites des comètes*). | Perplexity (Wikipedia EN, Britannica, MacTutor) | 1serie/Un4/Cap2 | 2026-05-01 |
| Carl Gustav Jacob Jacobi | matemático alemão, 10 dez 1804 (Potsdam) – 18 fev 1851 (Berlim). Sistematizou a teoria dos determinantes incluindo o determinante funcional (jacobiano), em obras como *De Formatione et Proprietatibus Determinantium*. Teorema de Jacobi: $\det(\mathrm{adj}(A)) = (\det A)^{n-1}$. | Perplexity (Wikipedia EN, Britannica, MacTutor) | 2serie/Un4/Cap1 | 2026-05-01 |
| Pierre-Simon Laplace | matemático e astrônomo francês, 23 mar 1749 – 5 mar 1827. Mecânica celeste (*Mécanique Céleste*, 1799–1825); ligado ao desenvolvimento de determinantes por cofatores (expansão de Laplace, artigo de 1772). Importantes contribuições à análise e probabilidade. | Perplexity (Britannica, Wikipedia EN, MacTutor) | 2serie/Un4/Cap2 | 2026-05-01 |

### Versículos confirmados (ARA — Almeida Revista e Atualizada)

| Referência | Tradução exata | Capítulos | Última validação |
|---|---|---|---|
| Provérbios 10:9 | "Quem anda em integridade anda seguro, mas o que perverte os seus caminhos será conhecido." | 4ano/Un4/Cap1; 5ano/Un4/Cap3; 6ano/Un4/Cap1; 7ano/Un4/Cap1; 9ano/Un4/Cap2; 1serie/Un4/Cap1; 2serie/Un4/Cap1 | 2026-05-01 |
| Lucas 16:10 | "Quem é fiel no pouco também é fiel no muito; e quem é injusto no pouco também é injusto no muito." | 4ano/Un4/Cap2; 5ano/Un4/Cap4; 9ano/Un4/Cap3 | 2026-05-01 |
| João 8:32 | "e conhecereis a verdade, e a verdade vos libertará." | 4ano/Un4/Cap3 | 2026-05-01 |
| Provérbios 11:1 | "Balança enganosa é abominação para o SENHOR, mas o peso justo é o seu prazer." | 4ano/Un4/Cap4; 5ano/Un4/Cap1 | 2026-05-01 |
| Salmo 119:105 | "Lâmpada para os meus pés é a tua palavra e, luz para os meus caminhos." | 4ano/Un4/Cap5 | 2026-05-01 |
| Provérbios 3:6 | "Reconhece-o em todos os teus caminhos, e ele endireitará as tuas veredas." | 4ano/Un4/Cap6 | 2026-05-01 |
| Provérbios 16:11 | "Peso e balança justos pertencem ao SENHOR; obra sua são todos os pesos da bolsa." | 5ano/Un4/Cap2; 8ano/Un4/Cap1 | 2026-05-01 |
| Daniel 6:4 | "Então, os presidentes e os sátrapas procuravam ocasião para acusar a Daniel a respeito do reino; mas não puderam achá-la, nem culpa alguma; porque ele era fiel, e não se achava nele nenhum erro nem culpa." | 6ano/Un4/Cap2; 7ano/Un4/Cap2; 1serie/Un4/Cap2; 2serie/Un4/Cap2 | 2026-05-01 |
| 1 Coríntios 12:14 | "Porque também o corpo não é um só membro, mas muitos." | 6ano/Un4/Cap3 | 2026-05-01 |
| Provérbios 11:3 | "A integridade dos retos os guia; mas, aos pérfidos, a sua mesma falsidade os destrói." | 7ano/Un4/Cap3; 9ano/Un4/Cap1 | 2026-05-01 |
| Daniel 6:10 | "Daniel, pois, quando soube que a escritura estava assinada, entrou em sua casa e, em cima, no seu quarto, onde havia janelas abertas do lado de Jerusalém, três vezes por dia, se punha de joelhos, e orava, e dava graças, diante do seu Deus, como costumava fazer." | 7ano/Un4/Cap4 | 2026-05-01 |
| Filipenses 4:8 | "Finalmente, irmãos, tudo o que é verdadeiro, tudo o que é respeitável, tudo o que é justo, tudo o que é puro, tudo o que é amável, tudo o que é de boa fama, se alguma virtude há e se algum louvor existe, seja isso o que ocupe o vosso pensamento." | 8ano/Un4/Cap2 | 2026-05-01 |
| Tiago 1:22 | "Tornai-vos, pois, praticantes da palavra e não somente ouvintes, enganando-vos a vós mesmos." | 8ano/Un4/Cap3 | 2026-05-01 |
| Gálatas 6:7 | "Não vos enganeis: de Deus não se zomba; pois aquilo que o homem semear, isso também ceifará." | 9ano/Un4/Cap4 | 2026-05-01 |