#!/bin/bash
# ============================================================
# codegen.sh
# Execute build_runner to generate code (Drift, Freezed, Riverpod Generator, etc.)
# Usage: ./scripts/codegen.sh
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

run_step "flutter pub get"  flutter pub get
run_step "build_runner"     dart run build_runner build --delete-conflicting-outputs

echo ""
echo "✅ Code generation completed!"