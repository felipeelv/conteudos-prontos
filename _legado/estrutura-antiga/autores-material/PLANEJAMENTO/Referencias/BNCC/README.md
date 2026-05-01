---
name: BNCC — Base Nacional Comum Curricular
description: Extração oficial do MEC estruturada por área do conhecimento × etapa (pós-limpeza de OCR)
fonte: https://basenacionalcomum.mec.gov.br/images/BNCC_EI_EF_110518_versaofinal_site.pdf
data_extracao: 2026-04-21
ferramenta: Firecrawl CLI v1.15.2 + scripts/limpar_bncc.py
---

# BNCC — referência local estruturada

Extração do PDF oficial homologado, passada por pipeline de limpeza e estruturação em `scripts/limpar_bncc.py`.
Usada como fonte externa para validação curricular — **não** é a fonte-verdade dos códigos do Eleve (essa é `Conteudos Anuais/[Disciplina]/[Disciplina]-validacao.md`).

## Arquivos por área

| Arquivo | Etapa | Componentes | Habilidades | Competências |
|---|---|---|---:|---:|
| `bncc-linguagens-ef.md` | EF 1-9 | Língua Portuguesa, Arte, Educação Física, Língua Inglesa | 526 | 6 |
| `bncc-matematica-ef.md` | EF 1-9 | Matemática | 213 | 7 |
| `bncc-ciencias-natureza-ef.md` | EF 1-9 | Ciências | 111 | 7 |
| `bncc-ciencias-humanas-ef.md` | EF 1-9 | Geografia, História | 214 | 14 (7+7 por componente) |
| `bncc-linguagens-em.md` | EM | Linguagens e suas Tecnologias (LGG + LP) | 63 | 6 |
| `bncc-matematica-em.md` | EM | Matemática e suas Tecnologias (MAT) | 56 | 5 |
| `bncc-ciencias-natureza-em.md` | EM | Ciências da Natureza e suas Tecnologias (CNT) | 19 | 2 |
| `bncc-ciencias-humanas-sociais-em.md` | EM | Ciências Humanas e Sociais Aplicadas (CHS) | 22 | 5 (falta comp. 4) |
| **Total** |  |  | **1.224** | **52** |

**Arquivos raw (backup):**
- `_bncc-ei-ef-raw.md` — extração Firecrawl do PDF completo (1 MB, ruído de OCR)
- `_bncc-em-raw.md` — backup do PDF do EM (redundante)

## Estrutura interna de cada arquivo

```markdown
# BNCC — [Área] — [Etapa]

**Fonte:** ...
**Extração:** ...

---

## Competências específicas de [Área] para o [Etapa]

1. [Texto da competência 1]
2. [Texto da competência 2]
...

## Habilidades (N códigos)

### [Componente, se houver múltiplos]

#### [Ano ou etapa]

- **`(CÓDIGO)`** Texto da habilidade completo.
- **`(CÓDIGO)`** ...
```

## Mapeamento disciplinas Eleve → arquivo BNCC

| Disciplina Eleve | Arquivo de referência |
|---|---|
| Ciências (1-9ano) | `bncc-ciencias-natureza-ef.md` |
| Biologia (EM) | `bncc-ciencias-natureza-em.md` |
| Física (EF 6-9) | `bncc-ciencias-natureza-ef.md` |
| Física (EM) | `bncc-ciencias-natureza-em.md` |
| Química (9ano) | `bncc-ciencias-natureza-ef.md` |
| Química (EM) | `bncc-ciencias-natureza-em.md` |
| Matemática 1 (EF) | `bncc-matematica-ef.md` |
| Matemática 1 (EM) | `bncc-matematica-em.md` |
| Geometria (EF+EM) | `bncc-matematica-ef.md` + `bncc-matematica-em.md` |
| Estatística e Ed. Financeira (EF+EM) | `bncc-matematica-ef.md` + `bncc-matematica-em.md` |
| Estudos Sociais (1-9ano) | `bncc-ciencias-humanas-ef.md` |
| História (EM) | `bncc-ciencias-humanas-sociais-em.md` |
| Geografia (EM) | `bncc-ciencias-humanas-sociais-em.md` |
| Filosofia (EM) | `bncc-ciencias-humanas-sociais-em.md` |
| Sociologia (EM) | `bncc-ciencias-humanas-sociais-em.md` |
| Português 1 (EF) | `bncc-linguagens-ef.md` |
| Português 1 (EM) | `bncc-linguagens-em.md` |
| Português 2 (EM) | `bncc-linguagens-em.md` |

## Qualidade da extração

**Pipeline** (ver `scripts/limpar_bncc.py`):
1. Extração do PDF via Firecrawl scrape
2. Fixes sistemáticos de OCR (`CI`→`C1`, `Sociales`→`Sociais`, etc.)
3. Remoção de loops de OCR (texto repetido em ciclo)
4. Remoção de headers, separadores `* * *` e números de página
5. Classificação de cada habilidade pelo prefixo do código BNCC (ex: `EF06MA` → Matemática EF 6º ano)
6. Extração de competências via regex dual (formato EF "COMPETÊNCIAS ESPECÍFICAS DE X" + formato EM "COMPETÊNCIA ESPECÍFICA N")
7. Cortes defensivos no texto das competências (para evitar vazamento de ficha técnica e habilidades)

**Cobertura**: 1.224 habilidades extraídas de ~1.430 esperadas (85%). As perdas são de OCR do PDF original que perdeu alguns códigos em padrões que o regex não reconhece.

**Limitações conhecidas:**
- CHS EM: competência 4 foi perdida pelo OCR da Firecrawl no PDF (não tem conserto via regex). A numeração preserva o gap (1, 2, 3, 5, 6) para ser honesta com o estado real do documento.
- Erros residuais de acentuação no texto das habilidades ("funcão", "matria", "e/eou" etc.) — não afetam códigos nem significado.
- Algumas habilidades EF agregadas (EF15LP, EF35LP, EF67LP, etc.) ficam agrupadas em "1º–5º ano" em vez de repetidas em cada ano individual — isso reflete como a BNCC organiza.

**Para uso:**
- ✅ Busca por código BNCC conhecido funciona bem
- ✅ Busca por tema/conceito funciona (texto legível)
- ✅ LLM pode usar como contexto sem desperdício de tokens (arquivos enxutos, estruturados)
- ❌ Não citar literalmente sem conferir PDF oficial (alguns erros de OCR no texto)

## Re-executar o pipeline

```bash
# Re-gerar os 8 arquivos a partir do raw (sem refetch)
python3 scripts/limpar_bncc.py

# Re-baixar o PDF e re-processar (consome ~10 créditos Firecrawl)
cd _referencias/bncc/
firecrawl scrape "https://basenacionalcomum.mec.gov.br/images/BNCC_EI_EF_110518_versaofinal_site.pdf" -o _bncc-ei-ef-raw.md
cd ../../
python3 scripts/limpar_bncc.py
```
