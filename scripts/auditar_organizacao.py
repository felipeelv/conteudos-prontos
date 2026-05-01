#!/usr/bin/env python3
from __future__ import annotations

import hashlib
import json
import unicodedata
from collections import Counter, defaultdict
from datetime import datetime
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
REPORT_DIR = ROOT / "_legado" / "relatorios-organizacao-2026-05-01"
REPORT = REPORT_DIR / "RELATORIO_ORGANIZACAO_PROJETO.md"

IGNORED_PARTS = {
    ".git",
    ".claude",
    ".claude-plugin",
    "_legado",
    "plugins",
    "autores-material",
}

LEGACY_ROOTS = {
    "Conteudos Prontos",
    "Blueprints",
    "Unidade 3-",
}

OUT_OF_SCOPE_DIRS = {
    "1ano",
    "2ano",
    "3ano",
    "Educacao Crista",
    "educacao crista",
}

DISCIPLINES = {
    "Biologia",
    "Ciencias",
    "Educacao Crista",
    "Estatistica e Educacao Financeira",
    "Estudos Sociais",
    "Filosofia",
    "Fisica",
    "Geografia",
    "Geometria",
    "Historia",
    "Matematica",
    "Portugues 1",
    "Portugues 2",
    "Quimica",
    "Sociologia",
}

DISCIPLINE_ALIASES = {
    "biologia": "Biologia",
    "ciencias": "Ciencias",
    "educacao crista": "Educacao Crista",
    "estatistica e educacao financeira": "Estatistica e Educacao Financeira",
    "estudos sociais": "Estudos Sociais",
    "filosofia": "Filosofia",
    "fisica": "Fisica",
    "geografia": "Geografia",
    "geometria": "Geometria",
    "historia": "Historia",
    "matematica": "Matematica",
    "matematica 1": "Matematica",
    "matematica 2": "Geometria",
    "matematica 3": "Estatistica e Educacao Financeira",
    "portugues": "Portugues 1",
    "portugues 1": "Portugues 1",
    "portugues 2": "Portugues 2",
    "quimica": "Quimica",
    "sociologia": "Sociologia",
}


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def normalize(value: str) -> str:
    value = unicodedata.normalize("NFKD", value)
    value = "".join(ch for ch in value if not unicodedata.combining(ch))
    return value.lower().replace("física", "fisica").strip()


def iter_files(include_ignored: bool = False) -> list[Path]:
    files: list[Path] = []
    for path in ROOT.rglob("*"):
        if not path.is_file():
            continue
        parts = set(path.relative_to(ROOT).parts)
        if not include_ignored and parts & IGNORED_PARTS:
            continue
        files.append(path)
    return sorted(files)


def sha1(path: Path) -> str:
    digest = hashlib.sha1()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def proposed_destination(path: Path) -> str | None:
    parts = path.relative_to(ROOT).parts
    if not parts:
        return None

    if parts[0] == "Conteudos Prontos" and len(parts) >= 2:
        discipline = DISCIPLINE_ALIASES.get(normalize(parts[1]), parts[1])
        return str(Path(discipline, *parts[2:])).replace("\\", "/")

    if parts[0] == "Blueprints" and len(parts) >= 2:
        if not path.name.startswith("blueprint_") and path.name != ".gitkeep":
            return None
        discipline = DISCIPLINE_ALIASES.get(normalize(parts[1]), parts[1].title())
        return str(Path(discipline, "_blueprints", *parts[2:])).replace("\\", "/")

    # Google Docs/Unidade 3 fica temporariamente fora do plano ativo.
    if parts[0] == "Unidade 3-" or path.suffix == ".gdoc":
        return None

    return None


def table(rows: list[list[str]], headers: list[str], limit: int | None = None) -> list[str]:
    selected = rows if limit is None else rows[:limit]
    if not selected:
        return ["_Nenhum item encontrado._"]
    lines = [
        "| " + " | ".join(headers) + " |",
        "| " + " | ".join(["---"] * len(headers)) + " |",
    ]
    for row in selected:
        lines.append("| " + " | ".join(cell.replace("|", "\\|") for cell in row) + " |")
    if limit is not None and len(rows) > limit:
        lines.append("")
        lines.append(f"_Mais {len(rows) - limit} itens omitidos nesta visualizacao._")
    return lines


def main() -> None:
    REPORT_DIR.mkdir(parents=True, exist_ok=True)

    files = iter_files()
    all_files = iter_files(include_ignored=True)

    by_ext = Counter(path.suffix or "<sem extensao>" for path in files)
    top_roots = Counter(path.relative_to(ROOT).parts[0] for path in files)

    chapter_files = [path for path in files if path.name.startswith("capitulo_") and path.suffix == ".md"]
    metadata_files = [path for path in files if path.name == "metadata.json"]
    blueprint_files = [path for path in files if path.name.startswith("blueprint_") and path.suffix == ".md"]
    gdoc_files = [path for path in files if path.suffix == ".gdoc"]
    ds_store_files = [path for path in all_files if path.name == ".DS_Store"]
    gitkeep_files = [path for path in all_files if path.name == ".gitkeep"]

    content_hashes: dict[str, list[Path]] = defaultdict(list)
    for path in files:
        if path.name.startswith("capitulo_") or path.suffix == ".gdoc":
            content_hashes[sha1(path)].append(path)
    duplicate_groups = {key: value for key, value in content_hashes.items() if len(value) > 1}

    chapter_dirs = sorted({path.parent for path in chapter_files})
    chapter_dirs_without_metadata = [
        directory for directory in chapter_dirs if not (directory / "metadata.json").exists()
    ]

    misplaced_blueprints = [
        path for path in blueprint_files if "_blueprints" not in path.relative_to(ROOT).parts
    ]
    misplaced_chapters = [
        path for path in chapter_files if "_blueprints" in path.relative_to(ROOT).parts
    ]

    root_dirs = sorted(path.name for path in ROOT.iterdir() if path.is_dir())
    active_legacy_roots = [name for name in root_dirs if name in LEGACY_ROOTS]
    out_of_scope_dirs = [
        path for path in sorted(ROOT.rglob("*"))
        if path.is_dir()
        and ".git" not in path.relative_to(ROOT).parts
        and path.name in OUT_OF_SCOPE_DIRS
    ]

    proposed_moves: list[list[str]] = []
    conflicts: list[list[str]] = []
    for path in files:
        dest = proposed_destination(path)
        if not dest:
            continue
        dest_path = ROOT / dest
        status = "novo destino"
        if dest_path.exists():
            status = "identico" if sha1(path) == sha1(dest_path) else "conflito"
        row = [rel(path), dest, status]
        if status == "conflito":
            conflicts.append(row)
        proposed_moves.append(row)

    lines: list[str] = []
    lines.append("# Relatorio de Organizacao do Projeto")
    lines.append("")
    lines.append(f"Gerado em: {datetime.now().isoformat(timespec='seconds')}")
    lines.append("")
    lines.append("## Resumo")
    lines.append("")
    lines.extend(table([
        ["Arquivos ativos analisados", str(len(files))],
        ["Arquivos totais incluindo areas ignoradas", str(len(all_files))],
        ["Capitulos markdown ativos", str(len(chapter_files))],
        ["Metadata ativos", str(len(metadata_files))],
        ["Blueprints ativos", str(len(blueprint_files))],
        ["Google Docs ativos", str(len(gdoc_files))],
        ["Arquivos .DS_Store totais", str(len(ds_store_files))],
        ["Arquivos .gitkeep totais", str(len(gitkeep_files))],
        ["Grupos de duplicados exatos ativos", str(len(duplicate_groups))],
        ["Diretorios com capitulos sem metadata", str(len(chapter_dirs_without_metadata))],
        ["Propostas de movimentacao", str(len(proposed_moves))],
        ["Conflitos de destino", str(len(conflicts))],
        ["Pastas fora do escopo 4ano-3serie", str(len(out_of_scope_dirs))],
    ], ["Metrica", "Valor"]))

    lines.append("")
    lines.append("## Pastas legadas ainda ativas na raiz")
    lines.append("")
    lines.extend(table([[name] for name in active_legacy_roots], ["Pasta"]))

    lines.append("")
    lines.append("## Pastas fora do escopo 4ano-3serie")
    lines.append("")
    lines.extend(table([[rel(path)] for path in out_of_scope_dirs], ["Pasta"], limit=120))

    lines.append("")
    lines.append("## Distribuicao por pasta raiz")
    lines.append("")
    lines.extend(table([[name, str(count)] for name, count in top_roots.most_common()], ["Raiz", "Arquivos"]))

    lines.append("")
    lines.append("## Tipos de arquivo")
    lines.append("")
    lines.extend(table([[name, str(count)] for name, count in by_ext.most_common()], ["Tipo", "Arquivos"]))

    lines.append("")
    lines.append("## Capitulos sem metadata")
    lines.append("")
    lines.extend(table([[rel(path)] for path in chapter_dirs_without_metadata], ["Diretorio"], limit=80))

    lines.append("")
    lines.append("## Blueprints fora de _blueprints")
    lines.append("")
    lines.extend(table([[rel(path)] for path in misplaced_blueprints], ["Arquivo"], limit=80))

    lines.append("")
    lines.append("## Capitulos dentro de _blueprints")
    lines.append("")
    lines.extend(table([[rel(path)] for path in misplaced_chapters], ["Arquivo"], limit=80))

    lines.append("")
    lines.append("## Propostas de movimentacao")
    lines.append("")
    lines.append("Status `identico` indica que o destino ja existe com o mesmo conteudo. Status `conflito` exige comparacao manual.")
    lines.append("")
    lines.extend(table(proposed_moves, ["Origem", "Destino proposto", "Status"], limit=160))

    lines.append("")
    lines.append("## Conflitos que exigem decisao manual")
    lines.append("")
    lines.extend(table(conflicts, ["Origem", "Destino proposto", "Status"], limit=160))

    lines.append("")
    lines.append("## Duplicados exatos ativos")
    lines.append("")
    duplicate_rows: list[list[str]] = []
    for digest, paths in sorted(duplicate_groups.items(), key=lambda item: rel(item[1][0])):
        duplicate_rows.append([digest[:12], "<br>".join(rel(path) for path in paths)])
    lines.extend(table(duplicate_rows, ["Hash", "Arquivos"], limit=120))

    lines.append("")
    lines.append("## Arquivos .DS_Store")
    lines.append("")
    lines.extend(table([[rel(path)] for path in ds_store_files], ["Arquivo"], limit=120))

    lines.append("")
    lines.append("## Recomendacao operacional")
    lines.append("")
    lines.append("1. Resolver primeiro os conflitos listados acima.")
    lines.append("2. Migrar apenas os itens com status `novo destino`.")
    lines.append("3. Remover ou arquivar os itens com status `identico` depois de confirmar que a copia oficial esta correta.")
    lines.append("4. Tratar `.gdoc` como referencia em `_referencias/google-docs/` ou manter somente em `_legado`.")
    lines.append("5. Remover `.DS_Store` e `.gitkeep` de pastas que ja possuem arquivos reais.")

    REPORT.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"Relatorio gerado: {rel(REPORT)}")


if __name__ == "__main__":
    main()
