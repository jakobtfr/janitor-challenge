# Incident-analysis MCP server (Python)

A minimal stdio [Model Context Protocol](https://modelcontextprotocol.io/)
server for developers who choose Python.

## Requirements

- Python 3.11 or newer

## Run locally

```sh
./mcp-python/run.sh
```

The script creates a virtual environment and installs the MCP dependency when
needed. The server then waits for MCP messages on standard input.

## Configure OpenCode

Add this local server to your `opencode.json`:

```json
{
  "$schema": "https://opencode.ai/config.json",
  "mcp": {
    "incident-analysis": {
      "type": "local",
      "command": ["/absolute/path/to/janitor-challenge/mcp-python/run.sh"],
      "enabled": true
    }
  }
}
```

Replace the placeholder with the absolute path to this repository.

## Example tool

`say_hello` accepts a required `name` string and returns, for example,
`Hello, Ada!`. Add new tools in [`server.py`](server.py).
