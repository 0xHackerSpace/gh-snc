#!/usr/bin/env bats
# Requires bats-core: https://github.com/bats-core/bats-core

setup() {
  EXT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/.." && pwd)"
}

@test "gh-snc hello prints a greeting" {
  run "$EXT_ROOT/gh-snc" hello Claude
  [ "$status" -eq 0 ]
  [[ "$output" == *"Hello, Claude!"* ]]
}

@test "gh-snc with no args shows usage" {
  run "$EXT_ROOT/gh-snc"
  [ "$status" -eq 0 ]
  [[ "$output" == *"Usage: gh snc"* ]]
}
