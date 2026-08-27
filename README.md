# Janitor Challenge

Starter repository for incident-analysis tooling.
Add the opencode.json to the root of the repository and configure it to use the mcp server if you are in this group.

## Choose your bootstrap

Keep the folder for your group and delete the others:

- Node MCP group: keep `mcp-node/`; delete `mcp-python/` and `cli/`.
- Python MCP group: keep `mcp-python/`; delete `mcp-node/` and `cli/`.
- CLI group: keep `cli/`; delete `mcp-node/` and `mcp-python/`.

## MCP server

Choose [Node](mcp-node/README.md) or [Python](mcp-python/README.md) for setup,
OpenCode configuration, and adding tools.


## Incident-analysis CLI

The repository also includes a bootstrap CLI:

```sh
./cli/analyze-incident --help
```

It currently only provides help; add incident-analysis subcommands to
`cli/analyze-incident` as the CLI grows.
