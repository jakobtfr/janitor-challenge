---
name: execute-incident-analysis-level
description: Use always when the user asks for a incident analysis and everything in the spectrum, log analysis, incident analysis, etc.
compatibility: opencode
---

When executing a level make use of the incident-analysis-boundary skill.

A level is run with path parameters:
- `dataset`: `dev` or `eval` - datasets are different so the solution for dev is not the same as the solution for eval.
- `level`: `l0`, `l1`, `l2`, `l3`, `l4`, `l5`, or `l6`

Confirm with the user which `dataset` and `level` they want to run.
Before running with `eval` always reconfirm with the user if they are happy with the dev run and want to run with `eval` now.

A level is started with the harness start command and `dataset` and `level`. 

Then it is executed with everything the harness provides as functionality.
The requirements of each level change. The user has to provide the specific requirements for the level they want to run.

A level run for a dataset is finished by:
- `dataset=dev`: `dev_check`
- `dataset=eval`: `submit`
