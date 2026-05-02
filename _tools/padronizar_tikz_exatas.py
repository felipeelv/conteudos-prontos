#!/usr/bin/env python3
"""Padroniza fontes e acentos em TikZ standalone de Exatas."""

from __future__ import annotations

import re
from pathlib import Path


ROOTS = [Path("Geometria"), Path("Quimica"), Path("Fisica")]

REPLACEMENTS = {
    "ativacao": "ativação",
    "colisao": "colisão",
    "concentracao": "concentração",
    "direcao": "direção",
    "distancia": "distância",
    "eficacia": "eficácia",
    "facil": "fácil",
    "frequencia": "frequência",
    "moleculas": "moléculas",
    "molecula": "molécula",
    "nao": "não",
    "orientacao": "orientação",
    "particulas": "partículas",
    "posicao": "posição",
    "reacao": "reação",
    "superficie": "superfície",
    "media": "média",
    "atomica": "atômica",
    "quimica": "química",
    "eletrica": "elétrica",
    "eletricas": "elétricas",
    "termica": "térmica",
    "termicas": "térmicas",
    "classificacao": "classificação",
    "triangulos": "triângulos",
    "angulos": "ângulos",
    "poligonos": "polígonos",
    "geometrica": "geométrica",
    "grafico": "gráfico",
    "funcao": "função",
    "relacao": "relação",
    "formula": "fórmula",
    "organica": "orgânica",
    "hidrogenio": "hidrogênio",
    "oxigenio": "oxigênio",
    "potencia": "potência",
    "tensao": "tensão",
    "resistencia": "resistência",
    "mecanica": "mecânica",
    "maquinas": "máquinas",
    "mudancas": "mudanças",
    "geracao": "geração",
    "gravitacao": "gravitação",
    "evolucao": "evolução",
    "combustao": "combustão",
    "funcoes": "funções",
    "reacoes": "reações",
    "construcao": "construção",
    "areas": "áreas",
    "vertices": "vértices",
    "projecao": "projeção",
    "area": "área",
    "atomo": "átomo",
    "atomos": "átomos",
    "circunferencia": "circunferência",
    "equilibrio": "equilíbrio",
    "fisico": "físico",
    "inicio": "início",
    "maquina": "máquina",
    "previsao": "previsão",
    "quimico": "químico",
    "termico": "térmico",
    "triangulo": "triângulo",
    "vertice": "vértice",
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
