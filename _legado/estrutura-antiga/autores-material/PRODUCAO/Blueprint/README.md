# Material Blueprints

Repositorio de blueprints tecnicos do material didatico.

Este repositorio e a ponte entre o planejamento editorial e a producao autoral. Ele recebe os blueprints gerados a partir dos frameworks do repositorio `material-didatico` e dispara a automacao que aciona os autores.

## Papel no fluxo

```text
material-didatico
   |
   | gera blueprints
   v
material-blueprints
   |
   | push em blueprints/**
   v
n8n
   |
   | aciona autor correto
   v
autores-material
   |
   | publica conteudo final
   v
conteudos-prontos
```

## Responsabilidade deste repositorio

- Armazenar os blueprints gerados e aprovados.
- Manter uma estrutura previsivel por disciplina, ano e unidade.
- Servir como gatilho para a automacao no `n8n`.
- Preservar o historico dos blueprints usados para gerar cada conteudo final.

Este repositorio nao gera conteudo final. Ele apenas publica o insumo tecnico para os autores.

## Estrutura esperada

```text
blueprints
└── <Disciplina>
    └── <Ano>
        └── <Unidade>
            ├── blueprint_unidade.md
            ├── blueprint_capitulo_01_*.md
            ├── blueprint_capitulo_02_*.md
            └── blueprint_capitulo_*.md
```

Exemplo:

```text
blueprints/Filosofia/2serie/bimestre-1-iluminismo-e-critica/
├── blueprint_unidade.md
├── blueprint_capitulo_01_empirismo-britanico-e-critica-do-conhecimento.md
└── blueprint_capitulo_02_kant-e-a-sintese-critica.md
```

## Entrada

Os arquivos deste repositorio sao gerados a partir de:

- frameworks curriculares;
- referencias pedagogicas;
- planejador de blueprints;
- prompts e regras editoriais do repositorio `material-didatico`.

## Saida

Cada push em `blueprints/**` deve ser interpretado como uma nova unidade disponivel para autoria.

O `n8n` deve detectar a unidade alterada e montar um payload como:

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

## Automacao

O evento principal deste repositorio e:

```text
push em main alterando blueprints/**
```

Comportamento esperado:

1. GitHub notifica o `n8n`.
2. O `n8n` lista os arquivos alterados.
3. O `n8n` agrupa alteracoes por unidade.
4. O `n8n` envia cada unidade para o autor correto no repositorio `autores-material`.

## Regras importantes

- Nao colocar conteudo final neste repositorio.
- Nao colocar prompts de autor neste repositorio.
- Nao depender de nomes soltos fora da estrutura `blueprints/<Disciplina>/<Ano>/<Unidade>`.
- Cada unidade precisa conter `blueprint_unidade.md`.
- Cada unidade precisa conter pelo menos um `blueprint_capitulo_*.md`.
- O commit que altera o blueprint deve ser rastreavel, pois seu SHA sera salvo no conteudo final.

