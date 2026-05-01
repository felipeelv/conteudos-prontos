# Plugin Autor Eleve

Plugin do Claude Code / Claude Cowork que **gera capitulos didaticos finais** a partir de blueprints aprovados, seguindo as regras editoriais especificas de cada disciplina do Colegio Eleve.

## O que esta no MVP (v0.1.0)

- **Skill `autor-estatistica`** — gera capitulos de Matematica 3 (Estatistica e Educacao Financeira) do 6 ano EF II ate 3 serie EM. Aplica todas as regras editoriais (LaTeX/AutoLaTeX, dados reais, etapas de calculo em linhas separadas, blocos pos-conteudo enxutos).
- **Comando `/autor-eleve:gerar-capitulo`** — orquestra o fluxo: localiza o blueprint, roteia para a skill do autor da disciplina, gera capitulo a capitulo aguardando aprovacao, atualiza `metadata.json`.
- **Subagent `revisor-editorial`** — revisor automatico que reporta violacoes em JSON estruturado, sem corrigir.
- **Hook PostToolUse** — apos cada `Write`/`Edit` em `Conteudos Prontos/.../capitulo_*.md`, roda `bin/validar-capitulo` que aplica as 10 validacoes da disciplina e bloqueia em caso de falha.
- **CLI `bin/validar-capitulo`** — validador shell standalone, usavel tambem fora do plugin.

## Estrutura no repo conteudos-prontos

```
conteudos-prontos/
├── .claude/
│   └── settings.json                          ← auto-habilita o plugin neste projeto
├── .claude-plugin/
│   └── marketplace.json                       ← marketplace do repo
└── plugins/
    └── autor-eleve/                           ← este plugin
        ├── .claude-plugin/plugin.json
        ├── skills/autor-estatistica/SKILL.md
        ├── commands/gerar-capitulo.md
        ├── agents/revisor-editorial.md
        ├── hooks/hooks.json
        ├── bin/validar-capitulo
        └── README.md
```

## Disciplinas previstas

| Disciplina | Skill | Status |
|---|---|---|
| Estatistica e Educacao Financeira | `autor-estatistica` | ✅ v0.1.0 |
| Biologia | `autor-biologia` | ⏳ |
| Ciencias | `autor-ciencias` | ⏳ |
| Estudos Sociais | `autor-estudos-sociais` | ⏳ |
| Filosofia | `autor-filosofia` | ⏳ |
| Fisica | `autor-fisica` | ⏳ |
| Geografia | `autor-geografia` | ⏳ |
| Geometria | `autor-geometria` | ⏳ |
| Historia | `autor-historia` | ⏳ |
| Matematica | `autor-matematica` | ⏳ |
| Portugues 1 | `autor-portugues-1` | ⏳ |
| Portugues 2 | `autor-portugues-2` | ⏳ |
| Quimica | `autor-quimica` | ⏳ |
| Sociologia | `autor-sociologia` | ⏳ |

## Como o plugin e carregado

### Local (Claude Code no Mac/Macbook)

O `.claude/settings.json` no repo declara o marketplace local (caminho `.`) e habilita `autor-eleve@conteudos-prontos`. Basta abrir Claude Code dentro de `/Users/feliperosamini/conteudos-prontos/` que o plugin carrega automaticamente.

### Cowork (cloud)

Quando voce abrir o repo `felipeelv/conteudos-prontos` no Claude Cowork, o `.claude/settings.json` e lido pela sessao remota e o plugin e habilitado da mesma forma. Cowork le os arquivos do repo, encontra `.claude-plugin/marketplace.json`, e instala o plugin de `./plugins/autor-eleve`.

## Como usar

```
/autor-eleve:gerar-capitulo "Estatistica e Educacao Financeira" "6ano" "unidade-4-media-aritmetica-e-probabilidade"
```

Ou simplesmente peca em linguagem natural ("gere o capitulo X de estatistica do 6 ano") — o Claude invoca `autor-eleve:autor-estatistica` automaticamente.

## Como o validador funciona

O hook `PostToolUse` dispara apos cada `Write` ou `Edit`. Recebe via stdin um JSON com `tool_input.file_path`. O script `bin/validar-capitulo`:

1. Filtra: so age em arquivos cujo caminho contem `Conteudos Prontos/` E nome bate `capitulo_NN_*.md`.
2. Detecta disciplina e ano pelo caminho.
3. Aplica as regras da disciplina (Estatistica tem 10; outras tem regras gerais por enquanto).
4. Saida:
   - `exit 0` + log "OK" — capitulo valido, segue.
   - `exit 2` + violacoes em stderr — Claude Code recebe o feedback e o capitulo deve ser corrigido.

## Como adicionar uma nova disciplina

1. Criar `plugins/autor-eleve/skills/autor-<disciplina>/SKILL.md` baseado no padrao de `autor-estatistica`. Combinar `CLAUDE.md` + `prompt-autor.md` da pasta `autores-material/autores/autor_<disciplina>/`.
2. Adicionar regras especificas no `bin/validar-capitulo` em um bloco `if [[ "$disciplina" == "<Nome>" ]]; then ... fi`.
3. Atualizar a tabela em `commands/gerar-capitulo.md` com o roteamento.
4. Bump de versao em `.claude-plugin/plugin.json`.

## Atualizar versao

Apos mudancas no plugin:

1. Bump de `version` em `plugins/autor-eleve/.claude-plugin/plugin.json` (ex: `0.1.0` -> `0.1.1`).
2. Em sessao Claude ativa: `/reload-plugins` (fonte direta, ja pega).
3. Em outras maquinas/Cowork: pull do git e o `.claude/settings.json` cuida do resto.

## Diferenca entre o plugin e os autores em `autores-material/`

| `autores-material/autores/autor_<X>/` | `plugins/autor-eleve/skills/autor-<X>/` |
|---|---|
| Fonte de verdade editorial — mantida e versionada por disciplina | Empacotamento da fonte como skill instalavel no Claude |
| Inclui scripts shell, logs, memoria de execucao, libs compartilhadas | So a parte declarativa (instrucoes em Markdown) que o Claude usa |
| Pode ser editado manualmente sem afetar o plugin | Atualizado a cada release nova do plugin |
| Roda via `scripts/run_autor_from_blueprint.sh` (fluxo n8n/CLI) | Roda dentro do Claude Code/Cowork via `/autor-eleve:gerar-capitulo` |

A intencao e: **fluxo CLI (autores-material) e fluxo Claude (plugin) coexistem** e leem os mesmos blueprints. Quando uma regra editorial muda, atualiza nos dois lugares (ou refatora para ler de uma fonte unica).
