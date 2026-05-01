#!/usr/bin/env python3
from __future__ import annotations

import hashlib
from datetime import datetime
from pathlib import Path

import auditar_organizacao as audit


ROOT = audit.ROOT
REPORT_DIR = ROOT / "_legado" / "relatorios-organizacao-2026-05-01"
EXEC_REPORT = REPORT_DIR / "RELATORIO_ORGANIZACAO_EXECUCAO.md"

SKIP_NAMES = {
    ".DS_Store",
}


def sha1(path: Path) -> str:
    digest = hashlib.sha1()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def remove_empty_dirs(start_dirs: set[Path]) -> list[str]:
    removed: list[str] = []
    for start in sorted(start_dirs, key=lambda item: len(item.parts), reverse=True):
        current = start
        while current != ROOT and current.exists():
            try:
                current.rmdir()
            except OSError:
                break
            removed.append(audit.rel(current))
            current = current.parent
    return removed


def main() -> None:
    REPORT_DIR.mkdir(parents=True, exist_ok=True)

    moved: list[tuple[str, str]] = []
    skipped_identical: list[tuple[str, str]] = []
    skipped_operational: list[str] = []
    conflicts: list[tuple[str, str]] = []
    touched_parents: set[Path] = set()

    for source in audit.iter_files():
        destination_rel = audit.proposed_destination(source)
        if not destination_rel:
            continue

        if source.name in SKIP_NAMES:
            skipped_operational.append(audit.rel(source))
            continue

        destination = ROOT / destination_rel
        if destination.exists():
            if sha1(source) == sha1(destination):
                skipped_identical.append((audit.rel(source), destination_rel))
                continue
            conflicts.append((audit.rel(source), destination_rel))
            continue

        destination.parent.mkdir(parents=True, exist_ok=True)
        touched_parents.add(source.parent)
        source.rename(destination)
        moved.append((audit.rel(destination), destination_rel))

    removed_dirs = remove_empty_dirs(touched_parents)

    lines: list[str] = []
    lines.append("# Relatorio de Execucao da Organizacao")
    lines.append("")
    lines.append(f"Gerado em: {datetime.now().isoformat(timespec='seconds')}")
    lines.append("")
    lines.append("## Resumo")
    lines.append("")
    lines.append(f"- Arquivos movidos para destino oficial: `{len(moved)}`")
    lines.append(f"- Duplicados identicos preservados para limpeza posterior: `{len(skipped_identical)}`")
    lines.append(f"- Arquivos operacionais ignorados: `{len(skipped_operational)}`")
    lines.append(f"- Conflitos encontrados: `{len(conflicts)}`")
    lines.append(f"- Diretorios vazios removidos apos movimentacao: `{len(removed_dirs)}`")
    lines.append("")

    lines.append("## Arquivos movidos")
    lines.append("")
    if moved:
        lines.append("| Destino final |")
        lines.append("| --- |")
        for final_path, _ in moved:
            lines.append(f"| {final_path} |")
    else:
        lines.append("_Nenhum arquivo movido._")
    lines.append("")

    lines.append("## Duplicados identicos preservados")
    lines.append("")
    if skipped_identical:
        lines.append("| Origem antiga | Destino oficial existente |")
        lines.append("| --- | --- |")
        for source, destination in skipped_identical[:200]:
            lines.append(f"| {source} | {destination} |")
        if len(skipped_identical) > 200:
            lines.append("")
            lines.append(f"_Mais {len(skipped_identical) - 200} itens omitidos nesta visualizacao._")
    else:
        lines.append("_Nenhum duplicado identico preservado._")
    lines.append("")

    lines.append("## Arquivos operacionais ignorados")
    lines.append("")
    if skipped_operational:
        lines.append("| Arquivo |")
        lines.append("| --- |")
        for source in skipped_operational:
            lines.append(f"| {source} |")
    else:
        lines.append("_Nenhum arquivo operacional ignorado._")
    lines.append("")

    lines.append("## Conflitos")
    lines.append("")
    if conflicts:
        lines.append("| Origem | Destino |")
        lines.append("| --- | --- |")
        for source, destination in conflicts:
            lines.append(f"| {source} | {destination} |")
    else:
        lines.append("_Nenhum conflito encontrado._")
    lines.append("")

    lines.append("## Diretorios vazios removidos")
    lines.append("")
    if removed_dirs:
        lines.append("| Diretorio |")
        lines.append("| --- |")
        for directory in removed_dirs:
            lines.append(f"| {directory} |")
    else:
        lines.append("_Nenhum diretorio vazio removido._")
    lines.append("")

    lines.append("## Observacao")
    lines.append("")
    lines.append("Esta execucao nao removeu duplicados identicos nem pastas legadas inteiras. Essa limpeza deve ser feita em uma segunda etapa, depois de revisar este relatorio.")

    EXEC_REPORT.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"Arquivos movidos: {len(moved)}")
    print(f"Conflitos: {len(conflicts)}")
    print(f"Relatorio gerado: {audit.rel(EXEC_REPORT)}")


if __name__ == "__main__":
    main()
