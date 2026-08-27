The Challenge

Build an incident-analysis tool for OpenCode, exposed either as MCP tools or as a CLI.

There are seven sequential levels (L0–L6). L0 is an unscored, unlimited warm-up; the remaining levels contribute to the score.

For each level: start the run, inspect telemetry through your tool, then submit the answer. You may submit repeatedly until the answer is correct or the eval limit is reached.

Use dev and its unlimited dev-check endpoint to test your approach. Eval is the separate dataset used for scoring; L1–L6 allow 10 submissions each.
Score

The leaderboard rewards correctness and speed: each solved level receives a speed score from 1–10, multiplied by that level's weight.
Telemetry requests

Your tool reads authenticated logs, deploys, teams, and on-call data via the /v1/cli/... or /v1/mcp/... telemetry routes.
