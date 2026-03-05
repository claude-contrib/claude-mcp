#!/usr/bin/env bash
set -euo pipefail

error=0
for f in plugins/*/.mcp.json; do
  if grep -qE '"@latest|"@\^|"@~' "$f"; then
    echo "✗ $f contains an unpinned version (@latest, ^, or ~)"
    error=1
  else
    echo "✓ $f versions are pinned"
  fi
done
exit $error
