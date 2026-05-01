#!/usr/bin/env python3
from __future__ import annotations

from datetime import datetime
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
ARCHIVE = ROOT / "_legado" / "raiz-pos-organizacao-2026-05-01"
REPORT_DIR = ROOT / "_legado" / "relatorios-organizacao-2026-05-01"
REPORT = REPORT_DIR / "RELATORIO_ARQUIVAMENTO_LEGADO_RAIZ.md"

TARGETS = [
    "Blueprints",
    "Conteudos Prontos",
    "Unidade 3-",
    "autores-material",
    ".claude",
    ".claude-plugin",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def unique_destination(name: str) -> Path:
    destination = ARCHIVE / name
    if not destination.exists():
        return destination
    index = 2
    while True:
        candidate = ARCHIVE / f"{name}__{index}"
        if not candidate.exists():
            return candidate
        index += 1


def main() -> None:
    ARCHIVE.mkdir(parents=True, exist_ok=True)
    REPORT_DIR.mkdir(parents=True, exist_ok=True)

    moved: list[tuple[str, str]] = []
    missing: list[str] = []

    for name in TARGETS:
        source = ROOT / name
        if not source.exists():
            missing.append(name)
            continue
        destination = unique_destination(name)
        source.rename(destination)
        moved.append((name, rel(destination)))

    lines: list[str] = []
    lines.append("# Relatorio de Arquivamento do Legado da Raiz")
    lines.append("")
    lines.append(f"Gerado em: {datetime.now().isoformat(timespec='seconds')}")
    lines.append("")
    lines.append("## Itens arquivados")
    lines.append("")
    if moved:
        lines.append("| Origem | Destino |")
        lines.append("| --- | --- |")
        for source, destination in moved:
            lines.append(f"| {source} | {destination} |")
    else:
        lines.append("_Nenhum item arquivado._")
    lines.append("")
    lines.append("## Itens ausentes")
    lines.append("")
    if missing:
        lines.append("| Item |")
        lines.append("| --- |")
        for name in missing:
            lines.append(f"| {name} |")
    else:
        lines.append("_Nenhum item ausente._")
    lines.append("")
    lines.append("## Observacao")
    lines.append("")
    lines.append("Os itens foram movidos para legado, nao apagados. A raiz ativa fica reservada para disciplinas, scripts e documentos de controle.")

    REPORT.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"Itens arquivados: {len(moved)}")
    print(f"Relatorio gerado: {rel(REPORT)}")


if __name__ == "__main__":
    main()
