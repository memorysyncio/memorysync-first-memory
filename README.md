# MemorySync first-memory starter

A small example that stores one memory and queries it using cURL, Python, or TypeScript.

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

`typescript.ts` is ready to copy into a Node.js 18+ application. The SDK and validation dependencies are pinned in the lockfile.

## cURL on Windows

```cmd
first-memory.cmd
```

The add call returns the stored memory (or a documented skipped result), and the query call returns matching memories. See the [first-memory guide](https://docs.memorysync.io/first-memory), [authentication guide](https://docs.memorysync.io/api/authentication), and [production checklist](https://docs.memorysync.io/production/checklist) before deploying.

## Help and contributions

Use [GitHub Issues](https://github.com/memorysyncio/memorysync-first-memory/issues) for reproducible starter problems. Read `SECURITY.md` before reporting a vulnerability and `CONTRIBUTING.md` before proposing a change.
