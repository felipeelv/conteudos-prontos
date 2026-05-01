# Relatorio de Remocao de Escopo

Data: 2026-05-01

## Decisao

O projeto passa a manter conteudos apenas de `4ano` ate `3serie` do Ensino Medio.

## Removido

Foram removidas do projeto ativo e dos legados locais:

- pastas `1ano`;
- pastas `2ano`;
- pastas `3ano`;
- pasta/disciplina `Educacao Crista`;
- copias equivalentes em `_legado`.

## Preservado

Foram preservadas as series do Ensino Medio:

- `1serie`;
- `2serie`;
- `3serie`.

## Validacao

A auditoria `scripts/auditar_organizacao.py` agora verifica se pastas fora do escopo `4ano-3serie` voltam a aparecer.

