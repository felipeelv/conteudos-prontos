#!/usr/bin/env python3
"""Renderiza os TikZ standalone de Geometria, Química e Física."""

from __future__ import annotations

import re
import subprocess
import tempfile
from pathlib import Path


ROOTS = [Path("Geometria"), Path("Quimica"), Path("Fisica")]
CAP_RE = re.compile(r"(cap\d+)")


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


def cap_prefix(path: Path) -> str:
    match = CAP_RE.search(path.stem)
    if not match:
        raise ValueError(f"Não foi possível inferir o capítulo em {path}")
    return f"{match.group(1)}_tikz"


def expected_pages(path: Path) -> list[int]:
    prefix = cap_prefix(path)
    out_dir = path.parent / "figuras"
    tracked = subprocess.check_output(
        ["git", "ls-files", "--", str(out_dir / f"{prefix}-*.png")],
        text=True,
    ).splitlines()
    pages: list[int] = []
    page_re = re.compile(rf"{re.escape(prefix)}-(\d+)\.png$")
    for item in tracked:
        match = page_re.search(item)
        if match:
            pages.append(int(match.group(1)))
    return sorted(set(pages))


def render(path: Path) -> None:
    out_dir = path.parent / "figuras"
    out_dir.mkdir(exist_ok=True)
    pages = expected_pages(path)
    with tempfile.TemporaryDirectory(prefix="tikz-exatas-") as tmp:
        tmp_path = Path(tmp)
        subprocess.run(
            [
                "pdflatex",
                "-interaction=nonstopmode",
                "-halt-on-error",
                f"-output-directory={tmp_path}",
                str(path),
            ],
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
        )
        pdf = tmp_path / f"{path.stem}.pdf"
        if not pages:
            raise ValueError(f"Nenhum PNG rastreado encontrado para {path}")
        for page in pages:
            subprocess.run(
                [
                    "pdftoppm",
                    "-png",
                    "-singlefile",
                    "-f",
                    str(page),
                    "-l",
                    str(page),
                    "-r",
                    "220",
                    str(pdf),
                    str(out_dir / f"{cap_prefix(path)}-{page}"),
                ],
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                text=True,
            )


def main() -> int:
    failures: list[tuple[Path, str]] = []
    rendered = 0
    for path in iter_sources():
        try:
            render(path)
            rendered += 1
            print(f"OK {path}")
        except subprocess.CalledProcessError as exc:
            failures.append((path, exc.stdout or str(exc)))
            print(f"ERRO {path}")

    print(f"\nfontes renderizadas: {rendered}")
    print(f"falhas: {len(failures)}")
    for path, output in failures:
        print(f"\n--- {path} ---")
        print(output[-3000:])
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
