---
name: incident-analysis-boundary
description: Keep incident-analysis harnesses from directly calling telemetry or submission APIs or using curl/wget.
compatibility: opencode
---

During incident analysis, the harness must never directly invoke the telemetry API or the submission API. In particular, do not run `curl`, `wget`, or equivalent ad-hoc HTTP requests from the harness. MCP tools are allowed, as are existing repository scripts even when they internally use `curl` or `wget`; do not create a new wrapper to bypass this boundary.
