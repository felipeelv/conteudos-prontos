# Blueprint Técnico da Unidade — Unidade 4: Cinemática Vetorial

## 1. Identificação
- Disciplina: Física
- Ano/Série: 1ª Série — Ensino Médio
- Bimestre: 2º
- Unidade: 4 de 8
- Tema central: Cinemática vetorial aplicada a movimentos compostos: princípio da independência dos movimentos, lançamento horizontal e lançamento oblíquo.
- Tipo da unidade: unidade compacta, conceitual-operacional e quantitativa.
- Recorte geral: conduzir o aluno da decomposição vetorial para a análise simultânea de movimentos horizontal e vertical, tratando o projétil como ponto material em vácuo, com aceleração apenas vertical.
- Capítulos previstos: 1
- Códigos BNCC: EM13CNT204, EM13CNT301, EM13CNT302
- Framework de origem: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/1serie/unidade-4-cinematica-vetorial.md`
- Diretório obrigatório desta execução: `Gerador de Blueprint/saida/Fisica/1serie/unidade-4-cinematica-vetorial/`

## 2. Nível do aluno
- Faixa etária aproximada: 15-16 anos.
- Série/faixa: 1ª Série EM, já com contato anterior com MU, MUV, queda livre e decomposição de vetores.
- Conhecimento prévio esperado: vetores em componentes x e y, uso de seno e cosseno com calculadora, queda livre como MUV vertical, movimento uniforme horizontal e interpretação básica de gráficos/equações.
- Linguagem esperada: técnica e clara, com fórmulas apresentadas depois do fenômeno e sempre acompanhadas de interpretação física.
- Grau de abstração: médio-alto para início do EM; o aluno deve tratar dois movimentos simultâneos independentes e articular equações em duas direções.
- Estratégia didática: partir de situações visíveis, como bolas lançadas, salto em distância, mangueira e pacote lançado de avião, para formalizar componentes, tempo de voo, altura máxima e alcance.
- Abertura narrativa: duas bolas saem da mesma altura, uma solta e outra lançada horizontalmente; a pergunta central é por que chegam juntas ao chão.

## 3. Tom da unidade
- Investigativo, matemático e aplicado, sem perder a ligação com fenômenos cotidianos.
- Tratar o modelo ideal como ferramenta: ponto material, vácuo e aceleração gravitacional vertical.
- Explicitar que resistência do ar e correções balísticas reais existem, mas ficam fora do escopo da 1ª Série.
- Manter rigor em notação vetorial, subscritos e funções trigonométricas.
- Valorizar a história da ciência com Niccolò Tartaglia e Galileu sem transformar o capítulo em biografia extensa.
- A conexão cristã deve iluminar o tema da integridade das componentes, não substituir a Física.

## 4. Profundidade geral
- Nível predominante: N3, com blocos N2 para contexto histórico, princípio conceitual e alcance máximo.
- Núcleos N3 da unidade: decomposição de `v_0`, lançamento horizontal, lançamento oblíquo, tempo de voo, altura máxima e alcance.
- Núcleos N2: princípio da independência, trajetória parabólica, alcance máximo em 45° e contexto de Tartaglia.
- Soma esperada dos conteúdos N3 no capítulo: entre 70% e 80%.
- Referência operacional: `Gerador de Blueprint/niveis_profundidade.md`.
- Limite de densidade: não transformar a unidade em estudo universitário de balística, resistência do ar, equações diferenciais ou movimento orbital.

## 5. Regras gerais transversais
- Usar o princípio da independência dos movimentos como eixo conceitual da unidade.
- Sempre separar componente horizontal e vertical antes de aplicar fórmulas compactas.
- Usar `\vec{v}`, `V_{0x}`, `V_{0y}`, `H_{max}`, `T_{voo}`, `\sin` e `\cos` corretamente em LaTeX.
- Explicar que, no lançamento horizontal, o tempo de queda depende da altura, não da velocidade horizontal.
- Explicar que, no lançamento oblíquo padrão, lançamento e queda ocorrem no mesmo nível.
- Apresentar alcance máximo em 45° como consequência de `\sin(2\theta)`, não como regra decorada.
- Inserir Tartaglia como físico/matemático-âncora da balística quantitativa, com mitigação cultural citando pólvora chinesa e tradição árabe.
- Manter a VP Integridade como ponte: componentes independentes conservam suas leis, e o resultado total depende da coerência das partes.
- Usar Lucas 16:10 como versículo-âncora, com aplicação formativa discreta.

## 6. Escopo proibido geral (NÃO ANTECIPAR)
- Resistência do ar formal e força de arrasto `F_d = 1/2 \rho v^2 C_d A`.
- Correções atmosféricas, curvatura terrestre e balística militar avançada.
- Efeito Coriolis em projéteis longos.
- Movimento orbital com cálculo formal de energia, momento angular ou velocidade de escape.
- Lançamento a partir de plataforma móvel com composição adicional.
- Equações diferenciais, cálculo vetorial universitário ou simulações numéricas avançadas.
- Tratamento detalhado de biomecânica esportiva além do exemplo de salto em distância.

## 7. Conexão VP da unidade
- Unidade VP: Integridade.
- Virtude: coerência entre partes, honestidade e responsabilidade.
- Personagem bíblico: Daniel, apresentado como exemplo de coerência em ambientes diferentes.
- Versículo-âncora: Lucas 16:10.
- Ideia central: no movimento composto, a componente horizontal e a componente vertical mantêm suas leis próprias; o movimento total só é compreendido quando cada parte é tratada com fidelidade ao que ela é.
- Ponte pedagógica: a integridade física das componentes oferece uma metáfora formativa para coerência no estudo, nas relações, na fé e nas escolhas cotidianas.

## 8. Hierarquia de autoridade para o Autor
- Conteúdo, recorte, fórmulas, personagem científico, VP e limites → framework da unidade e este blueprint.
- Profundidade dos tópicos → seção 4 deste blueprint + blueprint do capítulo.
- Objetivos e indicadores → `Gerador de Blueprint/objetivos_aprendizagem.md`.
- Expectativas de série → `Gerador de Blueprint/series.md`.
- Onde houver conflito entre modelo genérico e framework da unidade → vence o framework da unidade.
- Onde houver conflito entre intuição cotidiana e modelo ideal → explicitar a idealização antes de resolver.

## 9. Distribuição dos capítulos

| Capítulo | Título | Coração conceitual | Físico-âncora | Conexão VP específica |
|---|---|---|---|---|
| 7 | Movimentos Compostos | princípio da independência; lançamento horizontal; lançamento oblíquo; alcance, altura máxima e tempo de voo | Niccolò Tartaglia | componentes independentes mantêm suas leis; integridade dimensional |

## 10. Ganchos transversais
- Enquanto isso: Tartaglia inaugura a balística matemática em 1537; Galileu formaliza a independência dos movimentos no século XVII.
- E para hoje: uma bola arremessada horizontalmente e outra solta do mesmo ponto chegam juntas ao chão quando a resistência do ar é desprezada.
- Aprendizados transversais:
  - Movimento composto não é mistura confusa, mas soma organizada de componentes.
  - O eixo horizontal pode ser tratado como MU quando não há força horizontal no modelo ideal.
  - O eixo vertical é MUV sob ação da gravidade.
  - Decompor `v_0` em `V_{0x}` e `V_{0y}` é a operação central da unidade.
  - A trajetória parabólica nasce da combinação entre MU horizontal e MUV vertical.
  - `T_{voo}`, `H_{max}` e alcance devem ser interpretados fisicamente, não apenas calculados.
  - O alcance máximo em 45° vale para o modelo ideal com lançamento e queda no mesmo nível.
  - A integridade das partes ajuda a compreender o todo.
- Pergunta final da unidade: "Se o movimento total depende da fidelidade de cada componente à sua própria lei, que erros aparecem quando misturamos componentes que deveriam ser analisadas separadamente?"

## 11. Critérios de aceite da unidade
A unidade está adequada se:
- o arquivo de unidade está salvo exatamente como `Gerador de Blueprint/saida/Fisica/1serie/unidade-4-cinematica-vetorial/blueprint_unidade.md`;
- o capítulo individual está salvo no mesmo diretório como `blueprint_capitulo_07_movimentos-compostos.md`;
- nenhum arquivo foi salvo em `blueprints/`, `PIPELINE_CONTEUDO/PLANEJADOR/`, `teste_unidade-3-coordenadas-e-solo/`, `Blueprint/` ou diretamente em `PLANEJAMENTO/`;
- o capítulo cobre princípio da independência, lançamento horizontal, decomposição de `v_0`, lançamento oblíquo, tempo de voo, altura máxima, alcance e alcance máximo;
- as fórmulas usam notação LaTeX correta para subscritos e funções trigonométricas;
- Tartaglia é preservado como físico/matemático-âncora e Galileu aparece como referência ao princípio de independência;
- a conexão VP Integridade e Lucas 16:10 aparecem como ponte formativa;
- não há antecipação formal de resistência do ar, Coriolis, movimento orbital ou balística avançada;
- os objetivos e indicadores usam ações observáveis alinhadas a EM13CNT204, EM13CNT301 e EM13CNT302.

## 12. Referências
- Framework de unidade: `PLANEJAMENTO/FRAMEWORKS/FRAMEWORKS POR UNIDADE/Fisica/1serie/unidade-4-cinematica-vetorial.md`
- `Gerador de Blueprint/series.md`
- `Gerador de Blueprint/niveis_profundidade.md`
- `Gerador de Blueprint/objetivos_aprendizagem.md`
- BNCC: EM13CNT204, EM13CNT301, EM13CNT302.
- Tartaglia, Niccolò. `Nova Scientia` (1537).
- Galilei, Galileo. `Discorsi e Dimostrazioni Matematiche` (1638).
- Halliday, Resnick & Walker. `Fundamentos de Física`, vol. 1.
- Hay, J. G. `The Biomechanics of Sports Techniques` (1985).
- Bíblia: Daniel 6:4; Lucas 16:10.
