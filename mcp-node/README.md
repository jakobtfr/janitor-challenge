# Janitor Challenge MCP server

A minimal [Model Context Protocol](https://modelcontextprotocol.io/) server that
uses stdio transport. Use it as a clean starting point for adding tools,
resources, and prompts.

## Requirements

- Node.js 20 or newer

## Run locally

```sh
./mcp-node/run.sh
```

The process speaks MCP over standard input and output, so it will appear to
wait when launched in a terminal. Stop it with `Ctrl-C`.

## Configure OpenCode

Add this local server to your `opencode.json`:

```json
{
  "$schema": "https://opencode.ai/config.json",
  "mcp": {
    "incident-analysis": {
      "type": "local",
      "command": ["/absolute/path/to/janitor-challenge/mcp-node/run.sh"],
      "enabled": true
    }
  }
}
```

Replace the placeholder with the absolute path to this repository. The script
installs Node dependencies before starting the server.

## Example tool

`say_hello` returns `Hello, world!`. Add new tools in
[`server.mjs`](server.mjs) using `server.registerTool()`.
