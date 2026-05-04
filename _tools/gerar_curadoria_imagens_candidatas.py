#!/usr/bin/env python3
"""Gera arquivos de curadoria de imagens candidatas por disciplina/unidade.

O script pesquisa imagens na Wikimedia Commons, registra dois candidatos por
conceito quando possível e nunca altera os capítulos.
"""

from __future__ import annotations

import argparse
import json
import re
import time
import unicodedata
import urllib.parse
import urllib.request
from dataclasses import dataclass
from html import unescape
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
API = "https://commons.wikimedia.org/w/api.php"
USER_AGENT = "conteudos-prontos-image-curation/1.0"

SKIP_HEADINGS = {
    "pergunta-problema",
    "na vida real",
    "e a biblia nisso",
    "e a bíblia nisso",
    "simplificando",
    "para nao esquecer",
    "para não esquecer",
    "formulas do capitulo",
    "fórmulas do capítulo",
    "sua parte",
}

TERM_HINTS = {
    "velocidade": "velocity physics diagram",
    "calor": "heat transfer physics diagram",
    "temperatura": "temperature heat diagram",
    "equilibrio termico": "thermal equilibrium diagram",
    "equilíbrio térmico": "thermal equilibrium diagram",
    "conducao termica": "thermal conduction diagram",
    "condução térmica": "thermal conduction diagram",
    "conveccao": "convection diagram",
    "convecção": "convection diagram",
    "radiacao termica": "thermal radiation diagram",
    "radiação térmica": "thermal radiation diagram",
    "mudancas de estado": "phase change states of matter diagram",
    "mudanças de estado": "phase change states of matter diagram",
    "fusao": "melting phase change diagram",
    "fusão": "melting phase change diagram",
    "vaporizacao": "vaporization phase change diagram",
    "vaporização": "vaporization phase change diagram",
    "condensacao": "condensation phase change diagram",
    "condensação": "condensation phase change diagram",
    "solidificacao": "solidification phase change diagram",
    "solidificação": "solidification phase change diagram",
    "energia": "energy transformation diagram",
    "fontes de energia": "energy sources diagram",
    "usina": "power plant diagram",
    "hidreletrica": "hydroelectric power plant diagram",
    "hidrelétrica": "hydroelectric power plant diagram",
    "solar": "solar power diagram",
    "eolica": "wind power diagram",
    "eólica": "wind power diagram",
    "nuclear": "nuclear power plant diagram",
    "gravitacao": "universal gravitation diagram",
    "gravitação": "universal gravitation diagram",
    "kepler": "Kepler laws diagram",
    "sistema solar": "solar system diagram",
    "sol": "life cycle of the sun diagram",
    "estrela": "stellar evolution diagram",
    "circuito": "electric circuit diagram",
    "gerador": "electric generator circuit diagram",
    "receptor": "electric motor circuit diagram",
    "amperimetro": "ammeter circuit diagram",
    "amperímetro": "ammeter circuit diagram",
    "voltimetro": "voltmeter circuit diagram",
    "voltímetro": "voltmeter circuit diagram",
    "curto-circuito": "short circuit diagram",
    "choque eletrico": "electric shock safety diagram",
    "choque elétrico": "electric shock safety diagram",
    "termodinamica": "thermodynamics diagram",
    "termodinâmica": "thermodynamics diagram",
    "maquina termica": "heat engine diagram",
    "máquina térmica": "heat engine diagram",
    "carnot": "Carnot cycle diagram",
    "entropia": "entropy thermodynamics diagram",
    "lancamento horizontal": "projectile motion horizontal diagram",
    "lançamento horizontal": "projectile motion horizontal diagram",
    "lancamento obliquo": "projectile motion trajectory diagram",
    "lançamento oblíquo": "projectile motion trajectory diagram",
    "mol": "mole concept chemistry diagram",
    "particulas": "particles molecules chemistry diagram",
    "partículas": "particles molecules chemistry diagram",
    "colisoes": "collision theory chemistry diagram",
    "colisões": "collision theory chemistry diagram",
    "combustao": "combustion chemistry diagram",
    "combustão": "combustion chemistry diagram",
    "amina": "amine functional group diagram",
    "aminas": "amine functional group diagram",
    "amida": "amide functional group diagram",
    "amidas": "amide functional group diagram",
    "haletos": "haloalkane functional group diagram",
    "cfc": "chlorofluorocarbon molecule diagram",
    "nitrocompostos": "nitro group chemistry diagram",
    "tiocompostos": "thiol functional group diagram",
    "funcoes mistas": "organic functional groups diagram",
    "funções mistas": "organic functional groups diagram",
    "triangulo": "triangle geometry diagram",
    "triângulo": "triangle geometry diagram",
    "quadrilatero": "quadrilateral geometry diagram",
    "quadrilátero": "quadrilateral geometry diagram",
    "paralelogramo": "parallelogram geometry diagram",
    "trapezio": "trapezoid geometry diagram",
    "trapézio": "trapezoid geometry diagram",
    "poligono": "regular polygon geometry diagram",
    "polígono": "regular polygon geometry diagram",
    "piramide": "pyramid geometry diagram",
    "pirâmide": "pyramid geometry diagram",
    "tronco": "frustum pyramid geometry diagram",
    "capacidade": "capacity measurement litre diagram",
    "tempo": "time measurement clock diagram",
    "funcao": "function graph diagram",
    "função": "function graph diagram",
    "determinante": "determinant matrix diagram",
    "fracao": "fraction diagram",
    "fração": "fraction diagram",
    "decimal": "decimal number line diagram",
    "porcentagem": "percentage diagram",
    "malha": "coordinate grid diagram",
    "divisibilidade": "prime factorization diagram",
    "algebra": "algebra equation diagram",
    "álgebra": "algebra equation diagram",
    "equacao": "linear equation graph",
    "equação": "linear equation graph",
    "contagem": "tree diagram counting",
    "solidos geometricos": "geometric solids diagram",
    "sólidos geométricos": "geometric solids diagram",
    "transformacoes da materia": "physical chemical change diagram",
    "transformações da matéria": "physical chemical change diagram",
    "ligacao ionica": "ionic bond diagram",
    "ligação iônica": "ionic bond diagram",
    "ligacao covalente": "covalent bond diagram",
    "ligação covalente": "covalent bond diagram",
    "ligacao metalica": "metallic bond diagram",
    "ligação metálica": "metallic bond diagram",
}

FALLBACK_POOLS = {
    "motion": [
        ("Projectile motion", "Projectile_motion.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Vertical-projectile-motion-graphs", "Vertical-projectile-motion-graphs.svg", "image/svg+xml", "verificar na página", "MikeRun"),
    ],
    "thermo": [
        ("Carnot cycle pV diagram", "Carnot_cycle_pV_diagram.svg", "image/svg+xml", "CC BY-SA 4.0", "Cristian Quinzacara"),
        ("T-s diagram Carnot cycle", "T-s_diagram_Carnot_cycle.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "circuit": [
        ("Basic electric circuit", "Basic_electric_circuit.svg", "image/svg+xml", "verificar na página", "Andreas B Mundt"),
        ("Simple-electric-circuit", "Simple-electric-circuit.svg", "image/svg+xml", "verificar na página", "MikeRun"),
        ("Ammeter circuit", "Ammeter_circuit.svg", "image/svg+xml", "CC0", "Maxmath12"),
        ("Simple-circuit-with-voltmeter", "Simple-circuit-with-voltmeter.svg", "image/svg+xml", "verificar na página", "MikeRun"),
    ],
    "heat": [
        ("Heat-conduction", "Heat-conduction.svg", "image/svg+xml", "verificar na página", "MikeRun"),
        ("Heat Diagram", "Heat_Diagram.PNG", "image/png", "CC BY-SA 3.0", "Arman Cagle"),
    ],
    "phase": [
        ("States of Matter", "States_of_Matter.svg", "image/svg+xml", "CC BY-SA 4.0", "SiliconProphet"),
        ("States of matter En", "States_of_matter_En.svg", "image/svg+xml", "CC BY-SA 3.0", "Yelod"),
    ],
    "energy": [
        ("Energy Sources", "Energy_Sources.svg", "image/svg+xml", "domínio público/verificar na página", "U.S. EPA"),
        ("Hydroelectric dam", "Hydroelectric_dam.svg", "image/svg+xml", "GFDL / CC BY 2.5", "Tennessee Valley Authority / Tomia"),
        ("Wind turbine diagram", "Wind_turbine_diagram.svg", "image/svg+xml", "domínio público", "Tennessee Valley Authority"),
        ("PWR nuclear power plant diagram", "PWR_nuclear_power_plant_diagram.svg", "image/svg+xml", "domínio público/verificar na página", "Tennessee Valley Authority"),
    ],
    "astronomy": [
        ("The Solar System", "The_Solar_System.svg", "image/svg+xml", "CC BY-SA 4.0", "Beinahegut"),
        ("Solar-System", "Solar-System.svg", "image/svg+xml", "CC BY-SA 4.0", "Beinahegut"),
        ("Stellar evolution", "Stellar_evolution.svg", "image/svg+xml", "CC0", "Maxmath12"),
    ],
    "chemistry_mol": [
        ("Amedeo Avogadro", "Amedeo_Avogadro.jpg", "image/jpeg", "domínio público", "verificar na página"),
        ("Counting unit mole", "Mole_unit.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "chemistry_kinetics": [
        ("Activation energy", "Activation_energy.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Reaction coordinate diagram", "Reaction_coordinate_diagram.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "chemistry_combustion": [
        ("Fire triangle", "Fire_triangle.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Combustion reaction of methane", "Combustion_reaction_of_methane.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "chemistry_organic": [
        ("Amine general structure", "Amine_general_structure.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Amide general structure", "Amide_general_structure.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Nitro group", "Nitro_group.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Thiol group", "Thiol_group.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Peptide bond", "Peptide_bond.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Chlorofluorocarbon molecule", "Chlorofluorocarbon.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "geometry_triangle": [
        ("Triangle with notations", "Triangle_with_notations.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Triangle.Inequality", "Triangle.Inequality.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "geometry_quadrilateral": [
        ("Quadrilateral hierarchy", "Quadrilateral_hierarchy.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Types of quadrilaterals", "Types_of_quadrilaterals.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Parallelogram", "Parallelogram.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Trapezoid", "Trapezoid.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "geometry_polygon": [
        ("Regular polygon 5 annotated", "Regular_polygon_5_annotated.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Regular polygons", "Regular_polygons.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "geometry_pyramid": [
        ("Square pyramid", "Square_pyramid.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Frustum", "Frustum.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "geometry_coordinate": [
        ("Cartesian coordinate system", "Cartesian-coordinate-system.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Midpoint", "Midpoint.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "measurement": [
        ("Measuring cup", "Measuring_cup.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Analog clock", "Analog_clock.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "math_function": [
        ("Cartesian coordinate system", "Cartesian-coordinate-system.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Linear function graph", "Linear_function_graph.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "math_matrix": [
        ("Sarrus rule", "Sarrus_rule.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Matrix multiplication diagram 2", "Matrix_multiplication_diagram_2.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "math_fraction": [
        ("Fraction one half", "Fraction_one_half.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Number line", "Number_line.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "math_percent": [
        ("Pie chart", "Pie_chart.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Percentage", "Percentage.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "math_grid": [
        ("Cartesian coordinate system", "Cartesian-coordinate-system.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Square grid", "Square_grid.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "math_counting": [
        ("Tree diagram", "Tree_diagram.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Combinations", "Combinations.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "math_divisibility": [
        ("Factor tree 60", "Factor_tree_60.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Prime factorization", "Prime_factorization.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "math_algebra": [
        ("Algebra balance scales", "Algebra_balance_scales.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Linear equation graph", "Linear_equation_graph.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "math_solids": [
        ("Geometric shapes", "Geometric_shapes.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Cube", "Cube.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "science_materials": [
        ("Physical and chemical changes", "Physical_and_chemical_changes.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Plastic recycling symbols", "Plastic_recycling_symbols.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Polymer chain", "Polymer_chain.svg", "image/svg+xml", "verificar na página", "verificar na página"),
    ],
    "science_bonds": [
        ("Ionic bonding", "Ionic_bonding.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Covalent bond hydrogen", "Covalent_bond_hydrogen.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Metallic bonding", "Metallic_bonding.svg", "image/svg+xml", "verificar na página", "verificar na página"),
        ("Sodium chloride crystal", "Sodium-chloride-3D-ionic.png", "image/png", "verificar na página", "Benjah-bmm27"),
    ],
}

FALLBACK_KEYWORDS = {
    "motion": (
        "movimento",
        "velocidade",
        "distancia",
        "distância",
        "lancamento",
        "lançamento",
        "rapido",
        "rápido",
        "devagar",
        "modelo ideal",
    ),
    "thermo": (
        "termodinamica",
        "termodinâmica",
        "maquina termica",
        "máquina térmica",
        "rendimento",
        "carnot",
        "entropia",
        "energia interna",
        "primeira lei",
        "ciclo",
        "calor e trabalho",
    ),
    "circuit": (
        "circuito",
        "gerador",
        "receptor",
        "amperimetro",
        "amperímetro",
        "voltimetro",
        "voltímetro",
        "curto",
        "choque",
        "kirchhoff",
        "potencias no gerador",
        "potências no gerador",
    ),
    "heat": (
        "calor",
        "temperatura",
        "conducao",
        "condução",
        "conveccao",
        "convecção",
        "radiacao",
        "radiação",
        "transferencia de calor",
        "transferência de calor",
        "equilibrio termico",
        "equilíbrio térmico",
    ),
    "phase": (
        "estado fisico",
        "estado físico",
        "mudancas de estado",
        "mudanças de estado",
        "fusao",
        "fusão",
        "vaporizacao",
        "vaporização",
        "condensacao",
        "condensação",
        "solidificacao",
        "solidificação",
        "ganhando energia",
        "perdendo energia",
    ),
    "energy": (
        "fonte",
        "energia",
        "usina",
        "matriz",
        "hidreletrica",
        "hidrelétrica",
        "eolica",
        "eólica",
        "solar",
        "nuclear",
        "eficiencia",
        "eficiência",
        "economizam",
        "transmissao",
        "transmissão",
        "distribuicao",
        "distribuição",
        "auditoria energetica",
        "auditoria energética",
        "procel",
    ),
    "astronomy": (
        "gravidade",
        "gravitacao",
        "gravitação",
        "peso",
        "massa",
        "kepler",
        "sistema solar",
        "universo",
        "sol",
        "estrela",
        "estrelas",
        "gigante vermelha",
        "ana branca",
        "anã branca",
        "chandrasekhar",
        "velocidade de escape",
    ),
    "chemistry_mol": (
        "mol",
        "quantidade de materia",
        "quantidade de matéria",
        "particula",
        "partícula",
        "particulas",
        "partículas",
        "avogadro",
    ),
    "chemistry_kinetics": (
        "colisao",
        "colisão",
        "colisoes",
        "colisões",
        "velocidade das reacoes",
        "velocidade das reações",
        "cinetica",
        "cinética",
        "energia de ativacao",
        "energia de ativação",
        "catalise",
        "catálise",
    ),
    "chemistry_combustion": (
        "combustao",
        "combustão",
        "combustivel",
        "combustível",
        "completa",
        "incompleta",
        "faraday",
    ),
    "chemistry_organic": (
        "amina",
        "aminas",
        "amida",
        "amidas",
        "haleto",
        "haletos",
        "organico",
        "orgânico",
        "nitro",
        "nitrocomposto",
        "tiocomposto",
        "funcoes nitrogenadas",
        "funções nitrogenadas",
        "funcoes mistas",
        "funções mistas",
        "ligacao peptidica",
        "ligação peptídica",
        "fritz pregl",
        "aplicacoes praticas",
        "aplicações práticas",
    ),
    "geometry_triangle": (
        "triangulo",
        "triângulo",
        "angulos internos",
        "ângulos internos",
        "segmentos notaveis",
        "segmentos notáveis",
        "desigualdade triangular",
    ),
    "geometry_quadrilateral": (
        "quadrilatero",
        "quadrilátero",
        "paralelogramo",
        "paralelogramos",
        "retangulo",
        "retângulo",
        "losango",
        "quadrado",
        "trapezio",
        "trapézio",
        "base media",
        "base média",
        "diagonais",
        "soma da",
        "360 graus",
        "definicoes",
        "definições",
    ),
    "geometry_polygon": (
        "poligono",
        "polígono",
        "poligonos",
        "polígonos",
        "regular",
        "angulos externos",
        "ângulos externos",
        "construcao",
        "construção",
        "geometrica",
        "geométrica",
    ),
    "geometry_pyramid": (
        "piramide",
        "pirâmide",
        "area lateral",
        "área lateral",
        "area total",
        "área total",
        "volume",
        "tronco",
        "apice",
        "ápice",
    ),
    "measurement": (
        "litro",
        "capacidade",
        "multiplo",
        "múltiplo",
        "submultiplo",
        "submúltiplo",
        "escala decimal",
        "tempo",
        "hora",
        "minuto",
        "segundo",
        "semana",
        "mes",
        "mês",
        "ano",
    ),
    "geometry_coordinate": (
        "ponto medio",
        "ponto médio",
        "geometria analitica",
        "geometria analítica",
        "plano cartesiano",
    ),
    "math_function": (
        "funcao",
        "função",
        "afim",
        "dominio",
        "domínio",
        "imagem",
        "grafico",
        "gráfico",
        "coeficiente",
        "zero e sinal",
        "modelagem",
        "composta",
        "inversa",
    ),
    "math_matrix": (
        "determinante",
        "matriz",
        "sarrus",
        "cofator",
        "cofatores",
        "laplace",
        "adjunta",
        "jacobi",
        "ordens pequenas",
        "sinal",
        "anulam",
        "escala",
        "produto",
    ),
    "math_fraction": (
        "fracao",
        "fração",
        "fracoes",
        "frações",
        "numerador",
        "denominador",
        "parte",
        "partes iguais",
        "reta numerica",
        "reta numérica",
        "decimo",
        "décimo",
        "centesimo",
        "centésimo",
        "virgula decimal",
        "vírgula decimal",
        "dinheiro",
        "subtraindo",
    ),
    "math_percent": (
        "porcentagem",
        "por cento",
        "desconto",
        "acrescimo",
        "acréscimo",
        "calculando de cabeca",
        "calculando de cabeça",
    ),
    "math_grid": (
        "malha",
        "localizacao",
        "localização",
        "trajeto",
        "trajetos",
        "mapas com coordenadas",
        "plantas baixas",
        "percursos",
        "plano cartesiano",
        "instrucoes claras",
        "instruções claras",
    ),
    "math_counting": (
        "contagem",
        "escolhas",
        "combinacoes",
        "combinações",
        "tabelas",
        "diagramas de arvore",
        "diagramas de árvore",
        "principio multiplicativo",
        "princípio multiplicativo",
    ),
    "math_divisibility": (
        "divisibilidade",
        "divisor",
        "divisores",
        "multiplo",
        "múltiplo",
        "fatores",
        "fatoracao",
        "fatoração",
        "primo",
        "primos",
        "mdc",
        "mmc",
    ),
    "math_algebra": (
        "algebra",
        "álgebra",
        "equacao",
        "equação",
        "incognita",
        "incógnita",
        "expressao",
        "expressão",
        "expressoes",
        "expressões",
        "igualdade",
        "parenteses",
        "parênteses",
        "distributiva",
        "calculo",
        "cálculo",
        "letra",
        "lendo",
        "representacao",
        "representação",
        "termo",
        "termos semelhantes",
        "monomio",
        "monômio",
        "monomios",
        "monômios",
        "polinomio",
        "polinômio",
        "polinomios",
        "polinômios",
        "grau do polinomio",
        "grau do polinômio",
        "reduzindo",
        "multiplicando",
        "problemas contextualizados",
    ),
    "math_solids": (
        "solido",
        "sólido",
        "solidos",
        "sólidos",
        "cubo",
        "paralelepipedo",
        "paralelepípedo",
        "prisma",
        "piramide",
        "pirâmide",
    ),
    "science_materials": (
        "materia",
        "matéria",
        "transformacao",
        "transformação",
        "transformacoes",
        "transformações",
        "substancia",
        "substância",
        "natural",
        "sintetico",
        "sintético",
        "materiais",
        "plastico",
        "plástico",
        "ambiente",
        "ambientais",
        "sustentabilidade",
        "consumo consciente",
        "medicamentos",
    ),
    "science_bonds": (
        "atomo",
        "átomo",
        "atomos",
        "átomos",
        "camada",
        "estabilidade",
        "octeto",
        "ion",
        "íon",
        "cargas opostas",
        "nacl",
        "sais",
        "covalente",
        "compartilhar",
        "simples",
        "dupla",
        "tripla",
        "metal",
        "metais",
        "metalica",
        "metálica",
        "eletrons",
        "elétrons",
        "ligacoes",
        "ligações",
    ),
}


@dataclass(frozen=True)
class Concept:
    chapter_path: Path
    chapter_title: str
    heading: str
    query: str


def strip_tags(value: str) -> str:
    return re.sub(r"<[^>]+>", "", unescape(value or "")).replace("\n", " ").strip()


def normalize(value: str) -> str:
    value = unicodedata.normalize("NFKD", value)
    value = value.encode("ascii", "ignore").decode("ascii")
    return re.sub(r"[^a-z0-9]+", " ", value.lower()).strip()


def clean_heading(value: str) -> str:
    value = re.sub(r"^\d+[\.\)]\s*", "", value).strip()
    return value


def query_for(discipline: str, chapter_title: str, heading: str) -> str:
    base = normalize(f"{chapter_title} {heading}")
    for key, query in TERM_HINTS.items():
        if normalize(key) in base:
            return query
    return f"{clean_heading(heading)} {discipline} educational diagram"


def iter_unit_dirs(discipline: str, unit_pattern: str) -> list[Path]:
    root = ROOT / discipline
    if not root.exists():
        raise SystemExit(f"Disciplina não encontrada: {discipline}")
    dirs = sorted({p.parent for p in root.glob(f"*/{unit_pattern}/capitulo_*.md")})
    return [p for p in dirs if not any(part.startswith("_") for part in p.parts)]


def concepts_for(unit_dir: Path, discipline: str) -> list[Concept]:
    concepts: list[Concept] = []
    for chapter in sorted(unit_dir.glob("capitulo_*.md")):
        if "teste" in normalize(chapter.stem):
            continue
        text = chapter.read_text(encoding="utf-8")
        chapter_title = chapter.stem
        for line in text.splitlines():
            if line.startswith("# "):
                chapter_title = line[2:].strip()
                break
        for line in text.splitlines():
            if not line.startswith("## "):
                continue
            heading = line[3:].strip()
            if normalize(clean_heading(heading)) in SKIP_HEADINGS:
                continue
            if not re.match(r"^\d+[\.\)]\s+", heading):
                continue
            query = query_for(discipline, chapter_title, heading)
            concepts.append(Concept(chapter, chapter_title, heading, query))
    return concepts


def commons_query(query: str, limit: int) -> dict:
    params = {
        "action": "query",
        "generator": "search",
        "gsrsearch": f"{query} filetype:bitmap|drawing",
        "gsrnamespace": "6",
        "gsrlimit": str(limit),
        "prop": "imageinfo",
        "iiprop": "url|mime|size|extmetadata",
        "format": "json",
        "origin": "*",
    }
    request = urllib.request.Request(
        API + "?" + urllib.parse.urlencode(params),
        headers={"User-Agent": USER_AGENT, "Api-User-Agent": USER_AGENT},
    )
    with urllib.request.urlopen(request, timeout=35) as response:
        return json.load(response)


def search_candidates(query: str) -> list[dict[str, str]]:
    all_candidates: list[dict[str, str]] = []
    seen: set[str] = set()
    variants = [
        query,
        query.replace(" educational diagram", " diagram"),
        query.replace("diagram", "illustration"),
    ]
    for variant in dict.fromkeys(variants):
        if len(all_candidates) >= 2:
            break
        try:
            data = commons_query(variant, limit=16)
        except Exception:
            continue
        pages = list(data.get("query", {}).get("pages", {}).values())
        pages.sort(key=lambda page: page.get("index", 9999))
        for page in pages:
            info = (page.get("imageinfo") or [{}])[0]
            mime = info.get("mime", "")
            direct_url = info.get("url", "").split("?")[0]
            page_url = info.get("descriptionurl", "")
            if not mime.startswith("image/"):
                continue
            if not direct_url or not page_url or page_url in seen:
                continue
            meta = info.get("extmetadata", {})
            candidate = {
                "name": strip_tags(meta.get("ObjectName", {}).get("value"))
                or page.get("title", "").replace("File:", ""),
                "page": page_url,
                "direct": direct_url,
                "mime": mime,
                "license": strip_tags(meta.get("LicenseShortName", {}).get("value"))
                or strip_tags(meta.get("UsageTerms", {}).get("value"))
                or "verificar na página",
                "credit": strip_tags(meta.get("Artist", {}).get("value"))
                or strip_tags(meta.get("Credit", {}).get("value"))
                or "verificar na página",
            }
            all_candidates.append(candidate)
            seen.add(page_url)
            if len(all_candidates) >= 2:
                break
        time.sleep(0.35)
    return all_candidates[:2]


def fallback_candidates(concept: Concept) -> list[dict[str, str]]:
    text = normalize(f"{concept.chapter_title} {concept.heading} {concept.query}")
    pool_names: list[str] = []
    for pool_name, keywords in FALLBACK_KEYWORDS.items():
        if any(normalize(keyword) in text for keyword in keywords):
            pool_names.append(pool_name)
    candidates: list[dict[str, str]] = []
    seen: set[str] = set()
    for pool_name in pool_names:
        for name, filename, mime, license_name, credit in FALLBACK_POOLS[pool_name]:
            page = "https://commons.wikimedia.org/wiki/File:" + urllib.parse.quote(filename)
            if page in seen:
                continue
            candidates.append(
                {
                    "name": name,
                    "page": page,
                    "direct": "https://commons.wikimedia.org/wiki/Special:Redirect/file/"
                    + urllib.parse.quote(filename),
                    "mime": mime,
                    "license": license_name,
                    "credit": credit,
                }
            )
            seen.add(page)
            if len(candidates) >= 2:
                return candidates
    return candidates


def render_unit(unit_dir: Path, concepts: list[Concept]) -> tuple[Path, list[str]]:
    output = unit_dir / "CURADORIA_IMAGENS_CANDIDATAS.md"
    lines: list[str] = [
        "# Curadoria de imagens candidatas - unidade 4",
        "",
        "Arquivo de pesquisa para selecionar imagens sem inseri-las diretamente nos capítulos.",
        "",
        "- Fonte pesquisada: Wikimedia Commons API.",
        "- Critério: pelo menos 2 candidatos de imagem por conceito.",
        "- Antes de inserir: abrir a página da mídia, conferir qualidade visual, idioma, licença e crédito.",
        "- PDFs e livros digitalizados foram excluídos.",
        "",
    ]
    missing: list[str] = []
    current_chapter = ""
    for concept in concepts:
        if concept.chapter_title != current_chapter:
            current_chapter = concept.chapter_title
            lines.extend([f"## {current_chapter}", ""])
        candidates = search_candidates(concept.query)
        if len(candidates) < 2:
            seen_pages = {candidate["page"] for candidate in candidates}
            for candidate in fallback_candidates(concept):
                if candidate["page"] not in seen_pages:
                    candidates.append(candidate)
                    seen_pages.add(candidate["page"])
                if len(candidates) >= 2:
                    break
        lines.extend(
            [
                f"### Conceito: {concept.heading}",
                f"- Referência didática: {clean_heading(concept.heading)}",
                f"- Consulta usada: `{concept.query}`",
                "",
            ]
        )
        if len(candidates) < 2:
            missing.append(f"{concept.chapter_path}: {concept.heading}")
            lines.extend(
                [
                    f"> Atenção: a busca retornou apenas {len(candidates)} candidato(s); pesquisar manualmente antes de usar.",
                    "",
                ]
            )
        for index, candidate in enumerate(candidates, start=1):
            lines.extend(
                [
                    f"{index}. [{candidate['name']}]({candidate['page']})",
                    f"   - Arquivo direto: {candidate['direct']}",
                    f"   - Tipo: {candidate['mime']}",
                    f"   - Licença: {candidate['license']}",
                    f"   - Crédito: {candidate['credit']}",
                ]
            )
        lines.append("")
    output.write_text("\n".join(lines).rstrip() + "\n", encoding="utf-8")
    return output, missing


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("disciplina")
    parser.add_argument("--unidade", default="unidade-4-*")
    args = parser.parse_args()

    unit_dirs = iter_unit_dirs(args.disciplina, args.unidade)
    if not unit_dirs:
        raise SystemExit("Nenhuma unidade encontrada.")

    total_concepts = 0
    total_missing: list[str] = []
    for unit_dir in unit_dirs:
        concepts = concepts_for(unit_dir, args.disciplina)
        total_concepts += len(concepts)
        output, missing = render_unit(unit_dir, concepts)
        total_missing.extend(missing)
        print(f"OK {output} conceitos={len(concepts)} pendencias={len(missing)}")

    print(f"\nunidades: {len(unit_dirs)}")
    print(f"conceitos: {total_concepts}")
    print(f"pendencias: {len(total_missing)}")
    for item in total_missing[:50]:
        print(f"PENDENTE {item}")
    return 1 if total_missing else 0


if __name__ == "__main__":
    raise SystemExit(main())
