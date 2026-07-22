# MemorySync first-memory starter

A minimal, public-API-only starter for storing and querying one memory with cURL, Python, or TypeScript.

## Prerequisites

Create a MemorySync project and server-side API key. Set:

```text
MEMORYSYNC_KEY=<server-side API key>
MEMORYSYNC_PROJECT_ID=<project id>
MEMORYSYNC_BASE_URL=https://api.memorysync.io
```

Never commit keys or send them to browser code. The examples use the synthetic end-user ID `starter-user`; replace it with your own stable, non-sensitive identifier.

## Python

```cmd
python -m venv .venv
.venv\Scripts\python -m pip install -r requirements.txt
.venv\Scripts\python python.py
```

## TypeScript

```cmd
npm install
npm run type-check
```

The TypeScript example is intended to be copied into your application and run with its existing build tool. All validation dependencies are pinned in `package.json` and `package-lock.json`.

## cURL on Windows

```cmd
first-memory.cmd
```

## What to verify

Both calls should return JSON. The first stores a memory through `POST /memory/add`; the second queries through `POST /memory/query`. Review [authentication](https://docs.memorysync.io/api/authentication), [first memory](https://docs.memorysync.io/first-memory), and the [production checklist](https://docs.memorysync.io/production/checklist) before deployment.

## Official repository

This is the official MemorySync first-memory starter: https://github.com/memorysyncio/memorysync-first-memory

Review `SECURITY.md`, `SUPPORT.md`, `CONTRIBUTING.md`, `MAINTAINERS.md`, `CHANGELOG.md`, and `PUBLICATION_CHECKLIST.md`. The starter is maintained independently from SDK/API behavior; changes here must remain public-API-only and claim-safe.
