#!/usr/bin/env bash

# This file is sourced by each executable entry point. Treat .env as trusted
# shell input because sourcing it allows normal shell quoting.
janitor_config_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
janitor_repo_root="$(cd "${janitor_config_dir}/.." && pwd)"

# An explicitly supplied environment variable takes precedence over .env,
# including an intentionally empty value.
if [[ "${JANITOR_API_KEY+x}" != "x" && -f "${janitor_repo_root}/.env" ]]; then
  case "$-" in
    *a*) janitor_restore_allexport=false ;;
    *) janitor_restore_allexport=true; set -a ;;
  esac

  # shellcheck disable=SC1091
  source "${janitor_repo_root}/.env"

  if [[ "${janitor_restore_allexport}" == true ]]; then
    set +a
  fi
fi
