#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${script_dir}/../scripts/load-config.sh"
python="${script_dir}/.venv/bin/python"

if [[ ! -x "${python}" ]]; then
  python3 -m venv "${script_dir}/.venv"
fi

if ! "${python}" -c 'from mcp.server.fastmcp import FastMCP' >/dev/null 2>&1; then
  "${python}" -m pip install -e "${script_dir}" >&2
fi

exec "${python}" "${script_dir}/server.py"
