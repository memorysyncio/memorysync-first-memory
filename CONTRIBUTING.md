# Contributing

Contributions should keep this starter small, public-API-only, and aligned with the maintained MemorySync documentation and released SDKs.

## Local checks

Use Node.js 20 and Python 3.11 or compatible supported versions. Never use production credentials or real customer data.

```cmd
npm ci
npm run type-check
python -m py_compile python.py
```

The repository owner deferred executing CI during the July 22, 2026 SEO preparation pass. Contributors should still run relevant local checks before proposing a change; publication remains blocked until the official repository records a clean-clone CI pass.

## Change rules

- Pin dependency versions and update the lockfile together.
- Keep examples equivalent across cURL, Python, and TypeScript where practical.
- Link only canonical `memorysync.io` and `docs.memorysync.io` resources.
- Do not add unsupported performance, security, compliance, customer, or ranking claims.
- Do not change SDK or API behavior from this starter repository.
- Update `CHANGELOG.md` for user-visible starter changes.

## Pull requests

Describe the problem, scoped change, validation performed, documentation impact, and security considerations. A designated maintainer must review changes after the official repository defines CODEOWNERS and branch protection.