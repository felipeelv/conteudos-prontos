# `_tools/` — Pipeline de TikZ para conteúdo didático

Pipeline universal para renderizar fontes **TikZ/PGF/pgfplots** em PNG, usadas como imagens nos capítulos `.md` que vão para o Google Docs (via copy-paste de imagem).

---

## Por que existe

O plugin **AutoLaTeX/Auto-Latex Equations** do Google Docs usa o renderizador **CodeCogs**, que aceita apenas expressões matemáticas (`$...$` e `$$...$$`). Ele **não compila** ambientes que exigem `pdflatex` completo:

- ❌ `\begin{tikzpicture}...\end{tikzpicture}` — não renderiza
- ❌ `\usepackage{pgfplots}` — não carrega
- ❌ `\begin{circuitikz}` — não compila

Como queremos gráficos, eixos, circuitos, estruturas químicas, árvores sintáticas e linhas do tempo no material, este pipeline pré-compila TikZ → PNG localmente. As fontes `.tex` ficam versionadas no repo; os `.png` também (commitados), de modo que outras máquinas e o próprio Google Docs consigam ver o material sem precisar instalar LaTeX.

---

## Estrutura

```
conteudos-prontos/
├── _tools/
│   ├── README.md                     ← este arquivo
│   ├── CONVENCAO_TIKZ.md             ← regras editoriais (convenções de uso)
│   ├── tikz-render.sh                ← script único de renderização
│   └── tikz-preamble.tex             ← preâmbulo padrão (todas as bibliotecas)
└── <Disciplina>/
    └── _tikz/
        ├── <ano>/<unidade>/
        │   └── <slug>.tex            ← fonte TikZ (apenas o conteúdo)
        └── build/
            └── <ano>/<unidade>/
                ├── <slug>.png        ← saída renderizada (commitada)
                └── <slug>.pdf        ← intermediário (gitignored)
```

---

## Dependências (instaladas globalmente — uma vez por máquina)

| Ferramenta | Instalação | Para quê |
|---|---|---|
| **BasicTeX** | `brew install --cask basictex` + `sudo /usr/sbin/installer -pkg ... -target /` | `pdflatex` + TikZ + PGF |
| **Pacotes CTAN** | `sudo tlmgr install standalone dvisvgm pgfplots tikz-cd circuitikz tikz-3dplot chemfig mhchem modiagram forest bussproofs chronosys chronology xstring varwidth currfile collection-fontsrecommended` | Bibliotecas específicas das disciplinas |
| **poppler** | `brew install poppler` | `pdftoppm` (PDF → PNG 300 DPI) |

A instalação foi feita na máquina do Felipe em **2026-05-01** durante a sessão Claude Code "renderização TikZ universal". Vale para todas as disciplinas, não precisa reinstalar.

---

## Uso

### Renderizar tudo que está desatualizado

```bash
./_tools/tikz-render.sh
```

### Filtrar por disciplina

```bash
./_tools/tikz-render.sh Matematica
./_tools/tikz-render.sh Fisica
```

### Forçar re-renderização de tudo

```bash
./_tools/tikz-render.sh --all
```

### Apenas verificar se há pendências (não renderiza)

```bash
./_tools/tikz-render.sh --check
```

(usado pelo hook git pre-commit; sai com código 1 se houver `.tex` sem `.png` correspondente atualizado)

### Renderizar um arquivo específico

```bash
./_tools/tikz-render.sh Matematica/_tikz/4ano/.../meu-grafico.tex
```

---

## Hook git pre-commit (configurado)

Em `.git/hooks/pre-commit` há um hook que **bloqueia o commit** se houver fontes `.tex` sem `.png` correspondente atualizado. Mensagem do hook ensina como corrigir.

Para desabilitar (não recomendado): `chmod -x .git/hooks/pre-commit`.

---

## Hook Claude Code (opcional — você decide habilitar)

Para que **toda vez que o Claude editar/criar um `.tex` em `_tikz/` o render rode automaticamente**, adicione manualmente em `.claude/settings.json`:

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Write|Edit",
        "hooks": [
          {
            "type": "command",
            "command": "f=\"$(jq -r '.tool_input.file_path // empty' <<< \"$CLAUDE_HOOK_INPUT\")\"; if [[ \"$f\" == */_tikz/*.tex && \"$f\" != */_tikz/build/* && \"$f\" != */_tikz/_common/* ]]; then \"$CLAUDE_PROJECT_DIR/_tools/tikz-render.sh\" \"$f\" 2>&1; fi"
          }
        ]
      }
    ]
  }
}
```

(Esse hook não foi auto-criado porque o Claude Code bloqueia auto-instalação de hooks por segurança — você habilita manualmente se quiser.)

Sem esse hook, basta rodar `./_tools/tikz-render.sh` antes do commit (e o hook git pre-commit avisa se você esquecer).

---

## Adicionando pacotes para uma nova disciplina

Se uma disciplina nova precisar de um pacote LaTeX que não está instalado:

```bash
sudo /Library/TeX/texbin/tlmgr install <nome-do-pacote>
```

Adicione também ao `_tools/tikz-preamble.tex` se for de uso comum.

---

## Solução de problemas

| Sintoma | Solução |
|---|---|
| `pdflatex not found` ao rodar o script | Verifique `ls /Library/TeX/texbin/pdflatex` — se faltar, reinstale BasicTeX |
| `LaTeX Error: File 'X.sty' not found` | `sudo tlmgr install <X>` |
| PNG sai borrado no Docs | Aumente `DPI=300` no script para 600; ou use SVG (precisa adaptar o script) |
| Hook git rejeita o commit | Rode `./_tools/tikz-render.sh` e re-stage com `git add **/_tikz/build/` |
