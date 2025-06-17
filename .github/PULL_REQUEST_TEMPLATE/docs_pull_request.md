name: 📝 Documentation PR
about: Submit changes to documentation only
title: "[Docs] <your-title-here>"
labels: documentation

---

## 📝 Documentation Update

- What part of the docs does this PR improve or fix?
- Is this a new page, an update, or a clarification?

## Motivation

- Why was this change needed?

## Checklist

- [ ] Documentation updated in `/docs/en/` and/or other `{lang}` directories as source of truth requires.
- [ ] Structure validated using `/tools/i18n/sync_docs_structure.py`.
- [ ] Navigation updated in `mkdocs.yml` for all supported languages (run automation).
- [ ] Placeholders or translation requests created if necessary.
- [ ] Metadata and `Last updated: {{DATE}}` present and current.
- [ ] All Markdown files pass linting (`npx markdownlint .`).
- [ ] All pre-commit hooks/checks and CI/CD passed.
- [ ] No manual changes to `/docs/` structure or generated files (must use automation).
- [ ] Changes comply with [CONTRIBUTING.md](../../CONTRIBUTING.md), [SYNC_PROCESS.md](../../SYNC_PROCESS.md), and [Translation Guide](../../docs/en/contribute/i18n.md).
- [ ] PR title and description are clear and actionable.

---

## Additional Notes

<!-- Screenshots, rendered output, or reviewer notes. -->

---

*Last updated: {{DATE}}*
