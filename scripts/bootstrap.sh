#!/usr/bin/env bash
set -euo pipefail

command -v forge >/dev/null 2>&1 || {
  echo "Foundry is required: https://getfoundry.sh"
  exit 1
}

forge --version
forge fmt --check
forge build
forge test -vv
