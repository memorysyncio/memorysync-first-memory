# Contributing

Contributions are welcome when they keep this starter small and aligned with the released MemorySync SDKs and documentation.

## Local checks

Use Node.js 20 and Python 3.11. Do not use production credentials or real customer data.

```cmd
npm ci
npm run type-check
python -m pip install -r requirements.txt
python -c "from memorysync import MemorySyncClient"
python -m py_compile python.py
```

## Pull requests

- Explain the problem and the proposed change.
- Keep cURL, Python, and TypeScript examples consistent where practical.
- Pin dependency versions and update lockfiles together.
- Use synthetic data in examples and tests.
- Update `CHANGELOG.md` for user-visible changes.
- Include the checks you ran.

The required `validate` workflow must pass before a change can reach `main`.
