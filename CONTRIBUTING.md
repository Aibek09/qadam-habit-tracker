# Contributing to QADAM

Thank you for considering a contribution.

## Workflow

1. Create a focused branch from `main`.
2. Keep changes scoped to one feature or fix.
3. Run `npm run build` before opening a pull request.
4. Describe the user-facing impact and verification steps.
5. Include a new Drizzle migration whenever the database schema changes.

## Code style

- Use TypeScript for application code.
- Preserve the existing responsive and accessible interaction patterns.
- Keep persistence behind the API and database helpers.
- Avoid adding dependencies when the existing stack can solve the problem.
- Never commit credentials, local runtime state, or production data.
