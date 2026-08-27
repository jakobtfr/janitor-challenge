---
name: execute-incident-analysis-level
description: Keep incident-analysis harnesses from directly calling telemetry or submission APIs or using curl/wget.
compatibility: opencode
---

When executing a level make use of the incident-analysis-boundary skill.

A level is run with path parameters:
- `client`: `cli` or `mcp` — client surface used for scoring attribution
- `dataset`: `dev` or `eval`
- `level`: `l0`, `l1`, `l2`, `l3`, `l4`, `l5`, or `l6`

Confirm with the user which `client`, `dataset`, and `level` they want to run.

A level is started with the harness start command and `client`, `dataset`, and `level`. Then it is executed with everything the harness provides as functionality.

The requirements of each level change. The user has to provide the specific requirements for the level they want to run.

A level is finished by:
- `dataset=dev`: `dev_check`
- `dataset=eval`: `submit`
