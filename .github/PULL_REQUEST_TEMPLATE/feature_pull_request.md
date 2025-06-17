name: 🚀 Feature PR
about: Submit a new feature or enhancement
title: "[Feature] <your-title-here>"
labels: enhancement, feature

---

## 🚀 Feature Overview

Describe the new feature or enhancement. What does it add or improve?

## Motivation & Context

- Why is this feature needed?
- What problem does it solve, or what value does it provide?

## Implementation Details

- Briefly explain how this feature is implemented.
- List any important changes to APIs, configs, or workflows.

## Screenshots / Demos (if applicable)

_Add images or links if visual or UI feature._

## Checklist

- [ ] This PR is focused and atomic—one feature only.
- [ ] Feature is fully documented in `/docs/{lang}` and with code comments/PHPDoc.
- [ ] All new/changed code follows [PSR-12](https://www.php-fig.org/psr/psr-12/) and [Bluewater PHPDoc standards](../../docs/en/contribute/phpdoc.md).
- [ ] `declare(strict_types=1);` in all new PHP files.
- [ ] Unit/integration tests provided and pass locally and in CI.
- [ ] All pre-commit hooks/checks and CI/CD passed.
- [ ] No manual changes to `/docs/` or generated files (must use automation).
- [ ] Structure and navigation updated for all docs and i18n if applicable (run `/tools/i18n/sync_docs_structure.py`).
- [ ] Changes comply with [CONTRIBUTING.md](../../CONTRIBUTING.md) and [SYNC_PROCESS.md](../../SYNC_PROCESS.md).
- [ ] PR title and description are clear and actionable.

---

## Additional Notes

<!-- Screenshots, rendered output, or reviewer notes. -->

---

*Last updated: {{DATE}}*
