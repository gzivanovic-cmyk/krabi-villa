#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
python3 -m json.tool data/villas.json >/dev/null || { echo "villas.json ongeldig"; exit 1; }
git add data/villas.json
if git diff --cached --quiet; then echo "Geen wijzigingen."; exit 0; fi
git commit -m "Update villas $(date '+%Y-%m-%d %H:%M')"
git push origin main
