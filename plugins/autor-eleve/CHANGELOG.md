# Changelog — autor-eleve

Todas as mudancas notaveis no plugin sao registradas aqui. Versionamento segue [SemVer](https://semver.org/lang/pt-BR/): `MAJOR.MINOR.PATCH`.

## [0.7.0] — 2026-05-01

### Added
- **Skill `autor-geografia`** — gera capitulos de Geografia do Ensino Medio (1ª, 2ª e 3ª series) a partir dos blueprints aprovados. Cobre apenas EM; Geografia do EF (1º-9º ano) continua coberta por `autor-estudos-sociais`.
- **9 regras GEO1–GEO9** no `bin/validar-capitulo` e na secao Geografia do `agents/revisor-editorial.md`:
  - GEO1: Sem topico numerado >= 5 (max 4 topicos numerados)
  - GEO2: Sem emoji em heading `##`/`###`, exceto `## 🤝 Sua Parte` (H2) e `#### 📚 Curiosidade Geográfica` (H4)
  - GEO3: 8 headings pos-conteudo na ordem fixa (`## 🤝 Sua Parte` → `#### 📚 Curiosidade Geográfica` → `## Em outros lugares do mundo...` → `## E para hoje...` → `## Esse foi o "cara"` → `## Você já pensou nisso?` → `## Simplificando` → `## Para não esquecer`)
  - GEO4: `## Para não esquecer` com 3-4 bullets
  - GEO5: `## E para hoje...` contem `> 💬 **Para Conversar:**`
  - GEO6: Introducao contem `> 💬 **Para Conversar:**` antes de `## Explorando os Conceitos`
  - GEO7: `## Esse foi o "cara"` contem `🏛️ **Legado:**`
  - GEO8: `## Em outros lugares do mundo...` contem `Diferenças relevantes:`
  - GEO9: Pelo menos 1 box de ancoragem espacial (`📍 No Mapa`, `🌍 Em Escala` ou `📊 Em Números`)
- **Roteamento `Geografia` → `autor-eleve:autor-geografia`** no `commands/gerar-capitulo.md`
- **Tabela de status no README** atualizada — 3 skills ativas (Estatistica, Estudos Sociais, Geografia)

### Differences vs Estudos Sociais (intentional design choices)
Em Geografia, ao contrario de Estudos Sociais:
- `## Explorando os Conceitos` e **obrigatorio** (heading entre intro e `## 1.`)
- `## Você já pensou nisso?` permanece como heading H2 (nao virou box `> 🤔`)
- `#### 📚 Curiosidade Geográfica` e H4 (nao virou box `> 📚`)
- Tabelas pontuais sao permitidas (biomas, climas, blocos economicos, indicadores) sem teto rigido
- Bloco "paralelo" e `## Em outros lugares do mundo...` (em vez de `## Enquanto isso...`)
- Boxes especiais sao de ancoragem espacial: `📍 No Mapa`, `🌍 Em Escala`, `📊 Em Números` (≥1 obrigatorio)

### Fixed
- **GEO2 / R2 — emoji em heading**: o BSD grep do macOS nao suporta `-P` (PCRE). A R2 do Estatistica usa `grep -nP '\x{1F300}-...'` que falha silenciosamente sob `LC_ALL=en_US.UTF-8` (exit 2 com `2>/dev/null`). Em GEO2 usei `LC_ALL=C awk` com range de bytes UTF-8 (`[\xE2\xF0]`) + whitelist literal por comparacao de string. **R2 do Estatistica continua com bug latente** — abrir tarefa separada para consertar.

## [0.6.0] — anteriormente
- `#### 📚 Curiosidade dos Estudos Sociais` virou box `> 📚 **Curiosidade:**`
- +ES13 / ES14
- Nova diretriz inviolavel: subtopico `###` com max. 50 palavras de prosa em EF2 (40 em EF1)

## [0.5.1] — anteriormente
- `## Você já pensou nisso?` virou box `> 🤔 **Você já pensou nisso?**`
- +ES11 (box obrigatorio), +ES12 (heading proibido)

## [0.5.0] — anteriormente
- Adicionou skill `autor-estudos-sociais`
- +10 regras ES1–ES10 no hook

## [0.4.0] — anteriormente
- Primeiro commit do plugin v0.4.0
- Corrigiu bug LC_ALL (multibyte)
- Detec~ao de caminho relativo

## [0.3.0] — anteriormente
- Validador detecta layout novo `<Disciplina>/<ano>/<unidade>/` e legado

## [0.2.0] — anteriormente
- Sincronizou SKILL standalone
- Inverteu R10 do validador

## [0.1.0] — anteriormente
- MVP com Estatistica
