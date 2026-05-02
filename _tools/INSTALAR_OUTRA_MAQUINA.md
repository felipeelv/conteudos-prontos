# Tutorial — Instalar pipeline TikZ em outra máquina (macOS)

> **Audiência:** Claude Code rodando numa máquina nova do Felipe (Colégio Eleve).
> **Tempo total:** ~15–20 min (dominado pelo download do BasicTeX, ~100 MB).
> **Resultado:** repositório `conteudos-prontos` clonado e capaz de renderizar qualquer fonte `.tex` em `_tikz/` para PNG via `./_tools/tikz-render.sh`.

Este tutorial é **idempotente**: pode ser rodado em qualquer ordem e reexecutado sem quebrar nada. Cada passo tem um comando de verificação no final — **só avance quando o check passar**.

---

## Pré-condições

- macOS (testado em Apple Silicon, mas funciona em Intel)
- Acesso `sudo` da conta do Felipe
- Conexão à internet
- Conta GitHub do Felipe (`felipeelv`) já autenticada via `gh auth login` ou SSH key configurada — se não estiver, peça ao Felipe pra autenticar

---

## Passo 1 — Verificar/instalar Homebrew

```bash
command -v brew
```

**Se retornar caminho** (ex.: `/opt/homebrew/bin/brew`): pule para o Passo 2.

**Se não retornar nada**, instale:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

No fim, o instalador imprime 2–3 linhas para adicionar o Homebrew ao `PATH` no `.zprofile`. **Execute essas linhas exatamente como o instalador mostrou** (varia entre Apple Silicon e Intel).

**Verificação:**
```bash
brew --version
# Esperado: Homebrew 4.x.x
```

---

## Passo 2 — Instalar BasicTeX (pdflatex + TikZ + PGF)

> ⚠️ BasicTeX é ~100 MB. Não use a distribuição completa MacTeX (4+ GB) — desperdício para esse uso.

```bash
brew install --cask basictex
```

O instalador roda um `.pkg` que **só instala depois de aceitar uma senha sudo gráfica** (ou pode ser instalado via `sudo installer` se rodar headless). Se aparecer um popup pedindo senha, é normal.

Após a instalação, **abra um novo terminal** ou rode:

```bash
eval "$(/usr/libexec/path_helper)"
export PATH="/Library/TeX/texbin:$PATH"
```

**Verificação:**
```bash
which pdflatex
# Esperado: /Library/TeX/texbin/pdflatex

pdflatex --version | head -1
# Esperado: pdfTeX 3.x ...
```

Se `which pdflatex` não retornar nada mesmo após abrir terminal novo, adicione manualmente ao `~/.zshrc`:

```bash
echo 'export PATH="/Library/TeX/texbin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

---

## Passo 3 — Instalar poppler (pdftoppm para conversão PDF→PNG)

```bash
brew install poppler
```

**Verificação:**
```bash
which pdftoppm
# Esperado: /opt/homebrew/bin/pdftoppm (Apple Silicon) ou /usr/local/bin/pdftoppm (Intel)
```

---

## Passo 4 — Atualizar tlmgr e instalar pacotes CTAN

BasicTeX vem com TikZ e PGF básicos, mas precisamos de bibliotecas adicionais usadas pelas várias disciplinas (Física, Química, História etc.).

**Primeiro, atualize o tlmgr** (importante — versões antigas falham nos passos seguintes):

```bash
sudo /Library/TeX/texbin/tlmgr update --self
```

**Depois, instale os pacotes do preâmbulo** num único comando:

```bash
sudo /Library/TeX/texbin/tlmgr install \
  standalone \
  dvisvgm \
  pgfplots \
  tikz-cd \
  circuitikz \
  tikz-3dplot \
  chemfig \
  mhchem \
  modiagram \
  forest \
  bussproofs \
  chronosys \
  chronology \
  xstring \
  varwidth \
  currfile \
  collection-fontsrecommended
```

> Se aparecer `tlmgr: package repository ... is older than ...`, rode primeiro:
> ```bash
> sudo /Library/TeX/texbin/tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet
> sudo /Library/TeX/texbin/tlmgr update --self --all
> ```
> e tente novamente.

**Verificação:**
```bash
/Library/TeX/texbin/tlmgr info --only-installed --data name 2>/dev/null \
  | grep -iE "^(pgf|pgfplots|tikz-cd|circuitikz|chemfig|mhchem|forest|bussproofs|chronosys|standalone)$" \
  | sort
```

Esperado (pelo menos esses 10):
```
bussproofs
chemfig
chronosys
circuitikz
forest
mhchem
pgf
pgfplots
standalone
tikz-cd
```

---

## Passo 5 — Clonar o repositório `conteudos-prontos`

Decida onde clonar. Convenção do Felipe: direto no home.

```bash
cd ~
git clone https://github.com/felipeelv/conteudos-prontos.git
cd conteudos-prontos
```

> Se der `Permission denied (publickey)` ou pedir senha de HTTPS:
> - Para HTTPS: rode `gh auth login` (escolha GitHub.com → HTTPS → Login with a web browser).
> - Para SSH: troque a URL com `git remote set-url origin git@github.com:felipeelv/conteudos-prontos.git` (precisa SSH key configurada).

**Verificação:**
```bash
ls _tools/
# Esperado: CONVENCAO_TIKZ.md  INSTALAR_OUTRA_MAQUINA.md  README.md  tikz-preamble.tex  tikz-render.sh
```

---

## Passo 6 — Configurar identidade git (se primeira vez na máquina)

```bash
git config --global user.name "felipeelv"
git config --global user.email "felipe.rosa@colegioeleve.com.br"
```

---

## Passo 7 — Garantir que o hook pre-commit está executável

O hook fica em `.git/hooks/pre-commit` e é parte do clone, mas o bit de execução pode não vir.

```bash
chmod +x .git/hooks/pre-commit
ls -l .git/hooks/pre-commit
# Esperado: começa com -rwxr-xr-x
```

---

## Passo 8 — Teste final: renderizar tudo e validar

Este é o "olho no peixe" — se passar, o pipeline está 100% pronto.

```bash
./_tools/tikz-render.sh --check
```

**Resultado esperado** (todos os PNGs já estão commitados, então não deve haver pendências):
```
✅ Tudo renderizado e atualizado.
```

Para **forçar uma re-renderização completa** e provar que o pdflatex compila tudo do zero:

```bash
./_tools/tikz-render.sh --all 2>&1 | tail -20
```

Deve aparecer uma série de linhas `✅ <Disciplina>/_tikz/<ano>/.../<slug>.tex → <Disciplina>/_tikz/build/<ano>/.../<slug>.png`. Se aparecer `❌ Falha ao compilar`, leia o erro do pdflatex (mostra as últimas 20 linhas do log) — provavelmente é um pacote tlmgr faltando: `sudo /Library/TeX/texbin/tlmgr install <nome-do-pacote>`.

---

## Passo 9 (opcional) — Hook do Claude Code para auto-render

Se quiser que **toda vez que o Claude editar/criar um `.tex` em `_tikz/` o render rode automaticamente** (sem precisar lembrar de chamar o script antes do commit), adicione ao `~/.claude/settings.json` (cria se não existir):

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

Requer `jq` instalado: `brew install jq`.

Sem esse hook, o pipeline funciona igual — só exige rodar `./_tools/tikz-render.sh` manualmente antes de commitar (e o hook do git já avisa se você esquecer).

---

## Passo 10 — Sincronizar credenciais e memória (se for máquina nova de verdade)

Esses não fazem parte do pipeline TikZ, mas se a máquina é virgem o Claude vai precisar:

- `~/.claude/` — pasta de configuração do Claude Code (skills, agents, settings, memory).
  Existe um repo de backup do Felipe em `~/backupclaude` (ver `MEMORY.md` → `project_backupclaude_repo.md`). **Cuidado:** o histórico desse repo já teve secrets vazados — use o working tree, não publique commits antigos.
- `~/CLAUDE.md` — instruções globais multi-projeto.
- Variáveis de ambiente sensíveis (Supabase keys, Google Drive Service Account etc.) ficam em `~/Desktop/credenciais/` na máquina principal — copiar manualmente.

Se o foco é **só rodar o pipeline TikZ**, o Passo 10 é dispensável.

---

## Resumo em 7 linhas (para referência rápida)

```bash
# Pré-requisitos: Homebrew instalado.
brew install --cask basictex && brew install poppler
export PATH="/Library/TeX/texbin:$PATH"
sudo /Library/TeX/texbin/tlmgr update --self
sudo /Library/TeX/texbin/tlmgr install standalone dvisvgm pgfplots tikz-cd circuitikz tikz-3dplot chemfig mhchem modiagram forest bussproofs chronosys chronology xstring varwidth currfile collection-fontsrecommended
git clone https://github.com/felipeelv/conteudos-prontos.git ~/conteudos-prontos
cd ~/conteudos-prontos && chmod +x .git/hooks/pre-commit && ./_tools/tikz-render.sh --check
```

Se a última linha imprimir `✅ Tudo renderizado e atualizado.`, está pronto.
