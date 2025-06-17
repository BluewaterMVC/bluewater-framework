name: 🌐 Translation PR
about: Submit translations or internationalization improvements
title: "[i18n] <your-title-here>"
labels: i18n, translation

---

## 🌐 Translation Overview

- What languages or regions are affected?
- Are these new translations or updates?

## Source of Translation

- Who provided the translation (contributor, external source, automated tool)?
- Was it reviewed for accuracy/context?

## Checklist

- [ ] All translations use correct file/folder structure as validated by `/tools/i18n/sync_docs_structure.py`.
- [ ] English originals remain unchanged (unless this PR fixes English too).
- [ ] Placeholders for untranslated files are present with `TODO` comments.
- [ ] Navigation labels in `mkdocs.yml` (`nav_translations`) updated for affected languages (via automation).
- [ ] All new or updated translations are in correct `/docs/<lang>/` directories.
- [ ] All pre-commit hooks/checks and CI/CD passed.
- [ ] No manual changes to `/docs/` or generated files.
- [ ] Docs or translation guidelines updated as needed.
- [ ] Changes comply with [CONTRIBUTING.md](../../CONTRIBUTING.md), [SYNC_PROCESS.md](../../SYNC_PROCESS.md), and [Translation Guide](../../docs/en/contribute/i18n.md).
- [ ] PR title and description are clear and actionable.

---

## Additional Notes

<!-- Screenshots, rendered output, or notes for reviewers/translation questions. -->

---

*Last updated: {{DATE}}*
