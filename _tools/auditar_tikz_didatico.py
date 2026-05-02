#!/usr/bin/env python3
"""Auditoria leve de padrões visuais em fontes TikZ ativas.

Este script não substitui revisão visual do PNG. Ele apenas encontra sinais
rápidos de risco antes da revisão humana: falta de fonte sans-serif e palavras
comuns em português sem acento em rótulos didáticos.
"""

from __future__ import annotations

from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]

PALAVRAS_SEM_ACENTO = {
    "ativacao": "ativação",
    "colisao": "colisão",
    "concentracao": "concentração",
    "direcao": "direção",
    "distancia": "distância",
    "eficacia": "eficácia",
    "facil": "fácil",
    "frequencia": "frequência",
    "moleculas": "moléculas",
    "nao": "não",
    "orientacao": "orientação",
    "particulas": "partículas",
    "posicao": "posição",
    "reacao": "reação",
    "superficie": "superfície",
}


def fontes_tikz() -> list[Path]:
    return sorted(
        p
        for p in ROOT.glob("**/figuras_cap*.tex")
        if "_legado" not in p.parts
    )


def tem_fonte_sans(texto: str) -> bool:
    marcadores = ("\\sffamily", "helvet", "sfdefault", "font=\\sffamily", "every node/.style={font=\\sffamily")
    return any(m in texto for m in marcadores)


def main() -> int:
    problemas = 0
    for path in fontes_tikz():
        texto = path.read_text(encoding="utf-8", errors="replace")
        achados: list[str] = []

        if not tem_fonte_sans(texto):
            achados.append("fonte-sans-ausente")

        lower = texto.lower()
        sem_acento = [
            f"{sem}->{com}"
            for sem, com in PALAVRAS_SEM_ACENTO.items()
            if sem in lower and com not in lower
        ]
        if sem_acento:
            achados.append("possivel-acento: " + ", ".join(sem_acento))

        if achados:
            problemas += 1
            rel = path.relative_to(ROOT)
            print(f"{rel}: {'; '.join(achados)}")

    print(f"\nfontes analisadas: {len(fontes_tikz())}")
    print(f"fontes com alerta: {problemas}")
    return 1 if problemas else 0


if __name__ == "__main__":
    raise SystemExit(main())
