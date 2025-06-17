name: 🛠️ Refactor PR
about: Submit code or doc refactoring (no user-visible features)
title: "[Refactor] <your-title-here>"
labels: refactor, chore

---

## 🛠️ Refactor Summary

- What code or docs were cleaned up, restructured, or improved?
- Why was the refactor needed (e.g., maintainability, performance)?

## Impact

- Does this refactor change APIs or file structure?
- Any migration notes or risks?

## Checklist

- [ ] No functional changes; behavior is unchanged except for intended refactor.
- [ ] All code adheres to [PSR-12](https://www.php-fig.org/psr/psr-12/) and [Bluewater PHPDoc standards](../../docs/en/contribute/phpdoc.md).
- [ ] `declare(strict_types=1);` present in all PHP files.
- [ ] Tests pass locally and in CI.
- [ ] All pre-commit hooks/checks and CI/CD passed.
- [ ] No manual changes to `/docs/` or generated files (use automation).
- [ ] Structure and navigation updated for all docs and i18n if impacted (run `/tools/i18n/sync_docs_structure.py`).
- [ ] Changes comply with [CONTRIBUTING.md](../../CONTRIBUTING.md) and [SYNC_PROCESS.md](../../SYNC_PROCESS.md).
- [ ] PR title and description are clear and actionable.

---

## Additional Notes

<!-- Screenshots, rendered output, or reviewer notes. -->

---

*Last updated: {{DATE}}*
