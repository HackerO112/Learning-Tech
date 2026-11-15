#!/usr/bin/env python3
"""Check that relative Markdown links and image paths resolve inside this repository."""
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
LINK = re.compile(r"!?(?:\[[^\]]*\])\((?:<([^>]+)>|([^\s)]+))(?:\s+[^)]*)?\)")

def main() -> int:
    failures = []
    files = sorted(ROOT.rglob("*.md"))
    for source in files:
        if any(part in {".git", "node_modules", "dist", ".venv"} for part in source.parts):
            continue
        text = source.read_text(encoding="utf-8", errors="replace")
        for match in LINK.finditer(text):
            target = (match.group(1) or match.group(2) or "").strip()
            if not target or target.startswith(("#", "http://", "https://", "mailto:", "tel:", "data:")):
                continue
            target = target.split("#", 1)[0].split("?", 1)[0]
            if not target:
                continue
            candidate = (source.parent / target).resolve()
            try:
                candidate.relative_to(ROOT)
            except ValueError:
                failures.append(f"{source.relative_to(ROOT)}: link escapes repository: {target}")
                continue
            if not candidate.exists():
                failures.append(f"{source.relative_to(ROOT)}: missing local target: {target}")
    if failures:
        print("\n".join(failures), file=sys.stderr)
        return 1
    print(f"Checked local Markdown targets in {len(files)} Markdown files.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
