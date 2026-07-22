# MemorySync first-memory examples

Public reference examples for storing and querying one memory with cURL, Python, or TypeScript.

MemorySync is closed-source software. This repository does not publish or license the MemorySync platform, service implementation, backend, infrastructure, or SDK source code. It contains only small integration examples that use the documented public API and released SDK packages.

## Prerequisites

Create a MemorySync project and a server-side API key, then set:

```text
MEMORYSYNC_KEY=<server-side API key>
MEMORYSYNC_PROJECT_ID=<project id>
MEMORYSYNC_BASE_URL=https://api.memorysync.io
```

Keep API keys on the server and out of source control. The examples use `starter-user` as a synthetic end-user ID; replace it with a stable, non-sensitive identifier from your application.

## Python

```cmd
python -m venv .venv
.venv\Scripts\python -m pip install -r requirements.txt
.venv\Scripts\python python.py
```

## TypeScript

```cmd
npm ci
npm run type-check
```

`typescript.ts` is intended for a Node.js 18+ application. Dependencies are pinned in the lockfile.

## cURL on Windows

```cmd
first-memory.cmd
```

The add call returns a stored-memory or skipped result. The query call returns matching memories. See the [first-memory guide](https://docs.memorysync.io/first-memory), [authentication guide](https://docs.memorysync.io/api/authentication), and [production checklist](https://docs.memorysync.io/production/checklist).

## Support and use

This is a maintained reference repository, not an open-source project, and external contributions are not accepted. For help, see `SUPPORT.md`. Report vulnerabilities only through the private route in `SECURITY.md`. Use of MemorySync remains subject to the [MemorySync Terms](https://memorysync.io/legal/terms).
