#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -d "${script_dir}/node_modules/@modelcontextprotocol/sdk" ]]; then
  npm --prefix "${script_dir}" install >&2
fi

exec node "${script_dir}/server.mjs"
