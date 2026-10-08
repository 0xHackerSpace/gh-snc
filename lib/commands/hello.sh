#!/usr/bin/env bash
# Sample subcommand: gh snc hello

cmd_hello() {
  local name="${1:-world}"
  echo "Hello, ${name}! This is gh-snc running on $(gh --version | head -n1)."
}
