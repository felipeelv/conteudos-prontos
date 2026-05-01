# Autores Material

Repositorio dos autores especializados por disciplina.

Este repositorio transforma blueprints tecnicos em conteudo final. Ele e acionado pela automacao do `n8n` quando novos blueprints sao publicados no repositorio `material-blueprints`.

## Papel no fluxo

```text
material-blueprints
   |
   | push em blueprints/**
   v
n8n
   |
   | envia disciplina / ano / unidade
   v
autores-material
   |
   | executa autor especializado
   v
conteudos-prontos
```

## Responsabilidade deste repositorio

- Manter um autor especializado por disciplina ou area.
- Receber um payload com disciplina, ano, unidade e caminho do blueprint.
- Buscar os blueprints no repositorio `material-blueprints`.
- Gerar os capitulos finais seguindo as regras editoriais da disciplina.
- Publicar diretamente o resultado no repositorio `conteudos-prontos`.
- Registrar metadados de origem para rastreabilidade.

Este repositorio contem a logica editorial pesada. O `n8n` apenas registra que
existe blueprint novo e marca o conteudo como pendente; a geracao dos autores
tambem pode ser rodada manualmente/localmente neste repositorio, sem colocar
`n8n` ou GitHub Actions no caminho critico.

## Geracao local

Use o runner local para sincronizar `material-blueprints`, resolver a unidade
por prefixo e chamar o autor correto:

```bash
scripts/gerar_conteudo_local.sh \
  -d "Ciencias" \
  -a "8ano" \
  -u "unidade-5" \
  --executor codex
```

O comando resolve, por exemplo, `unidade-5` para o diretorio completo publicado
em `blueprints/<Disciplina>/<Ano>/...`, descobre o SHA atual de
`material-blueprints` e delega a geracao para
`scripts/run_autor_from_blueprint.sh`.

O executor e configuravel por parametro (`codex`, `claude`, `gemini` ou outro
comando compativel disponivel no `PATH`). O conteudo final fica em:

```text
PRODUCAO/CONTEUDOS PRONTOS/<Disciplina>/<Ano>/<Unidade>
```

Para validar o payload sem chamar o autor:

```bash
scripts/gerar_conteudo_local.sh -d "Ciencias" -a "8ano" -u "unidade-5" --executor codex --dry-run
```

## Entrada padrao

O executor deve receber um payload no seguinte formato:

```json
{
  "disciplina": "Filosofia",
  "ano": "2serie",
  "unidade": "bimestre-1-iluminismo-e-critica",
  "blueprint_path": "blueprints/Filosofia/2serie/bimestre-1-iluminismo-e-critica",
  "blueprint_sha": "SHA_DO_COMMIT",
  "source_repo": "felipeelv/material-blueprints",
  "target_repo": "felipeelv/conteudos-prontos"
}
```

## Roteamento de autores

| Disciplina | Autor |
|---|---|
| `Biologia` | `biologia` |
| `Ciencias` | `ciencias` |
| `Estudos Sociais` | `estudos-sociais` |
| `Historia` | `historia` |
| `Filosofia` | `filosofia` |
| `Sociologia` | `sociologia` |
| `Fisica` | `fisica` |
| `Geografia` | `geografia` |
| `Matematica` | `matematica` |
| `Geometria` | `geometria` |
| `Estatistica e Educacao Financeira` | `estatistica-e-educacao-financeira` |
| `Portugues 1` | `portugues-1` |
| `Portugues 2` | `portugues-2` |
| `Quimica` | `quimica` |

## Estrutura sugerida

```text
autores-material
├── autores
│   ├── filosofia
│   │   ├── CLAUDE.md
│   │   └── scripts
│   │       └── criar_capitulos.sh
│   ├── sociologia
│   ├── ciencias
│   ├── estudos-sociais
│   ├── historia
│   ├── geografia
│   ├── matematica
│   ├── geometria
│   ├── estatistica-e-educacao-financeira
│   ├── portugues-1
│   ├── portugues-2
│   ├── fisica
│   ├── biologia
│   └── quimica
└── scripts
    └── run_autor_from_blueprint.sh
```

## Executor principal

O script central recomendado e:

```text
scripts/run_autor_from_blueprint.sh
```

Responsabilidades:

1. Receber o payload do `n8n` ou de um workflow.
2. Validar `disciplina`, `ano`, `unidade`, `blueprint_path` e `blueprint_sha`.
3. Resolver o autor correto pela tabela de roteamento.
4. Baixar ou atualizar o repositorio `material-blueprints`.
5. Fazer checkout do SHA informado.
6. Executar o autor em modo nao interativo.
7. Gerar os capitulos finais.
8. Criar `metadata.json`.
9. Baixar ou atualizar o repositorio `conteudos-prontos`.
10. Copiar a saida para a pasta final.
11. Fazer commit e push direto no `conteudos-prontos`.

## Saida esperada

O autor deve gerar uma pasta no seguinte formato:

```text
<Disciplina>/<Ano>/<Unidade>
├── capitulo_01_*.md
├── capitulo_02_*.md
└── metadata.json
```

O arquivo `metadata.json` deve registrar a origem:

```json
{
  "disciplina": "Filosofia",
  "ano": "2serie",
  "unidade": "bimestre-1-iluminismo-e-critica",
  "blueprint_repo": "felipeelv/material-blueprints",
  "blueprint_sha": "SHA_DO_COMMIT",
  "blueprint_path": "blueprints/Filosofia/2serie/bimestre-1-iluminismo-e-critica",
  "autor": "filosofia",
  "generated_at": "2026-04-30T00:00:00-03:00"
}
```

## Publicacao

A publicacao inicial sera direta na branch principal do `conteudos-prontos`.

Mensagem de commit sugerida:

```text
Add conteudo Filosofia/2serie/bimestre-1-iluminismo-e-critica

Origem: felipeelv/material-blueprints@SHA_DO_COMMIT
Autor: filosofia
```

## Regras importantes

- O autor deve rodar em modo nao interativo quando acionado pela automacao.
- Falha em uma unidade nao deve impedir outras unidades do mesmo lote.
- Secrets de GitHub e chaves de IA devem ficar no ambiente do executor.
- O processo deve ser idempotente: reenviar o mesmo blueprint deve sobrescrever ou pular de forma previsivel.
- Logs precisam indicar disciplina, ano, unidade, autor usado e SHA do blueprint.
