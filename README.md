# Conteudos Prontos

Repositorio final dos conteudos gerados pelos autores.

Este repositorio armazena os capitulos prontos para revisao editorial final, diagramacao, publicacao ou uso nos proximos fluxos de producao.

## Papel no fluxo

```text
material-didatico
   |
   | gera blueprints
   v
material-blueprints
   |
   | dispara n8n
   v
autores-material
   |
   | gera e publica
   v
conteudos-prontos
```

## Responsabilidade deste repositorio

- Armazenar o conteudo final gerado pelos autores.
- Manter organizacao por disciplina, ano e unidade.
- Preservar rastreabilidade entre conteudo final e blueprint de origem.
- Servir como ponto de revisao final da linha editorial.

Este repositorio nao deve conter frameworks, prompts de autor ou blueprints tecnicos como fonte primaria.

## Estrutura esperada

```text
<Disciplina>
└── <Ano>
    └── <Unidade>
        ├── capitulo_01_*.md
        ├── capitulo_02_*.md
        └── metadata.json
```

Exemplo:

```text
Filosofia
└── 2serie
    └── bimestre-1-iluminismo-e-critica
        ├── capitulo_01_empirismo-britanico-e-critica-do-conhecimento.md
        ├── capitulo_02_kant-e-a-sintese-critica.md
        └── metadata.json
```

## Entrada

Este repositorio recebe publicacoes diretas do pipeline de autoria no repositorio `autores-material`.

Cada publicacao deve vir de um blueprint existente no repositorio `material-blueprints`.

## Saida

A saida deste repositorio e o conteudo final organizado.

Ele pode ser usado para:

- revisao editorial final;
- ajustes pontuais de texto;
- diagramacao;
- empacotamento para material didatico;
- auditoria de producao por disciplina, ano e unidade.

## Rastreabilidade

Cada unidade deve conter um `metadata.json`:

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

Esse arquivo permite responder:

- qual blueprint gerou o conteudo;
- qual autor foi usado;
- quando a unidade foi gerada;
- qual caminho de origem deve ser consultado em caso de revisao.

## Publicacao

Nesta fase, a publicacao e direta na branch principal.

Motivo: os autores ainda estao sendo afinados, e a revisao editorial fina acontece no final da linha, sobre o conteudo ja gerado.

Mensagem de commit sugerida:

```text
Add conteudo Filosofia/2serie/bimestre-1-iluminismo-e-critica

Origem: felipeelv/material-blueprints@SHA_DO_COMMIT
Autor: filosofia
```

## Regras importantes

- Nao apagar manualmente `metadata.json`.
- Nao misturar conteudos de unidades diferentes na mesma pasta.
- Evitar commits manuais que nao indiquem a origem da alteracao.
- Ajustes editoriais finais podem ser feitos neste repositorio, mas devem preservar a estrutura da unidade.
- Quando houver reprocessamento automatico, o novo commit deve apontar para o novo SHA do blueprint.

