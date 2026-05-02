#!/usr/bin/env python3
"""Padroniza fontes e acentos em TikZ standalone de Biologia."""

from __future__ import annotations

import re
from pathlib import Path


ROOTS = [Path("Biologia")]

REPLACEMENTS = {
    "ativacao": "ativação",
    "bioetica": "bioética",
    "biologica": "biológica",
    "biologicas": "biológicas",
    "biologico": "biológico",
    "biologicos": "biológicos",
    "celula": "célula",
    "celulas": "células",
    "colisao": "colisão",
    "concentracao": "concentração",
    "diagnostico": "diagnóstico",
    "direcao": "direção",
    "distancia": "distância",
    "evolucao": "evolução",
    "expressao": "expressão",
    "espontanea": "espontânea",
    "frequencia": "frequência",
    "genetica": "genética",
    "genetico": "genético",
    "geneticos": "genéticos",
    "hidrogenio": "hidrogênio",
    "molecula": "molécula",
    "moleculas": "moléculas",
    "mutacao": "mutação",
    "mutacoes": "mutações",
    "nao": "não",
    "orientacao": "orientação",
    "padrao": "padrão",
    "padroes": "padrões",
    "particulas": "partículas",
    "pescoco": "pescoço",
    "posicao": "posição",
    "primaria": "primária",
    "producao": "produção",
    "proposito": "propósito",
    "proteina": "proteína",
    "proteinas": "proteínas",
    "quimica": "química",
    "quaternaria": "quaternária",
    "reacao": "reação",
    "reacoes": "reações",
    "regulacao": "regulação",
    "regulatorios": "regulatórios",
    "replicacao": "replicação",
    "secundaria": "secundária",
    "sequencia": "sequência",
    "sequenciamento": "sequenciamento",
    "sitio": "sítio",
    "superficie": "superfície",
    "tecnica": "técnica",
    "teologica": "teológica",
    "terciaria": "terciária",
    "transcricao": "transcrição",
    "traducao": "tradução",
    "variacao": "variação",
    "variações": "variações",
}


WORD_RE = re.compile(
    r"(?<![\\A-Za-z])(?P<w>"
    + "|".join(map(re.escape, sorted(REPLACEMENTS, key=len, reverse=True)))
    + r")(?![A-Za-z])"
)


def iter_sources() -> list[Path]:
    paths: list[Path] = []
    for root in ROOTS:
        paths.extend(
            sorted(
                path
                for path in root.rglob("figuras_cap*.tex")
                if "_legado" not in path.parts
            )
        )
    return sorted(paths)


def insert_after(lines: list[str], marker: str, new_line: str) -> list[str]:
    if new_line in lines:
        return lines
    for index, line in enumerate(lines):
        if line.startswith(marker):
            lines.insert(index + 1, new_line)
            return lines
    lines.insert(0, new_line)
    return lines


def standardize(text: str) -> str:
    final_newline = text.endswith("\n")
    lines = text.splitlines()

    if r"\usepackage[utf8]{inputenc}" not in text:
        lines = insert_after(lines, r"\documentclass", r"\usepackage[utf8]{inputenc}")
    if r"\usepackage[T1]{fontenc}" not in "\n".join(lines):
        lines = insert_after(
            lines, r"\usepackage[utf8]{inputenc}", r"\usepackage[T1]{fontenc}"
        )
    if r"\usepackage{helvet}" not in "\n".join(lines):
        lines = insert_after(lines, r"\usepackage[T1]{fontenc}", r"\usepackage{helvet}")
    if r"\renewcommand{\familydefault}{\sfdefault}" not in "\n".join(lines):
        lines = insert_after(
            lines,
            r"\usepackage{helvet}",
            r"\renewcommand{\familydefault}{\sfdefault}",
        )

    text = "\n".join(lines)
    tikz_font = r"\tikzset{every node/.append style={font=\sffamily\small}}"
    if tikz_font not in text:
        text = text.replace(r"\begin{document}", r"\begin{document}" + "\n\n" + tikz_font, 1)

    text = WORD_RE.sub(lambda match: REPLACEMENTS[match.group("w")], text)
    for raw, accented in REPLACEMENTS.items():
        text = text.replace(rf"\\{raw}", rf"\\{accented}")
    text = text.replace("funcao", "função")
    text = text.replace("colageno", "colágeno")
    text = text.replace("hipoteses", "hipóteses")
    text = text.replace("polimeros", "polímeros")
    text = text.replace("protocelulas", "protocélulas")
    text = text.replace("organizacao", "organização")
    text = text.replace("geracao", "geração")
    text = text.replace("insercao", "inserção")
    text = text.replace("delecao", "deleção")
    text = text.replace("metilacao", "metilação")
    text = text.replace("criterio", "critério")
    text = text.replace("não e o mesmo", "não é o mesmo")
    text = text.replace("proposito e uma pergunta", "propósito é uma pergunta")

    if final_newline:
        text += "\n"
    return text


def main() -> int:
    changed: list[Path] = []
    for path in iter_sources():
        original = path.read_text(encoding="utf-8")
        updated = standardize(original)
        if updated != original:
            path.write_text(updated, encoding="utf-8")
            changed.append(path)

    print(f"arquivos alterados: {len(changed)}")
    for path in changed:
        print(path)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
