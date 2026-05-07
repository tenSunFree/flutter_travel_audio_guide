#!/bin/bash
# ============================================================
# check.sh
# Local CI check script, simulating the GitHub Actions CI process
# Usage: ./scripts/check.sh
# ============================================================

set -e
cd "$(dirname "$0")/.."

run_step() {
    local name="$1"
    shift
    echo ""
    echo "▶  $name"
    "$@"
    echo "✅ Passed: $name"
}

run_step "flutter pub get"            flutter pub get
run_step "dart format"                dart format --output=none --set-exit-if-changed lib test pigeons
run_step "flutter analyze"            flutter analyze
run_step "flutter test"               flutter test --reporter compact
run_step "flutter build apk --debug"  flutter build apk --debug

echo ""
echo "All checks passed!"