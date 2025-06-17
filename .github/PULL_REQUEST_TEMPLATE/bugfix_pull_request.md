name: 🐞 Bugfix PR
about: Submit a bug fix or hotfix
title: "[Bugfix] <your-title-here>"
labels: bug, fix

---

## 🐞 Bug Description

- What was the bug or issue?
- How could it be reproduced (if applicable)?

## Fix Overview

- What did you change to resolve it?
- Are there any side effects or follow-up work?

## How Was This Tested?

- Steps, environments, or test coverage.
- Attach logs or screenshots as needed.

## Checklist

- [ ] This PR only addresses the specific bug(s) described.
- [ ] Tests have been added/updated to cover the fix.
- [ ] All affected documentation in `/docs/{lang}` is updated.
- [ ] All code follows [PSR-12](https://www.php-fig.org/psr/psr-12/) and [Bluewater PHPDoc standards](../../docs/en/contribute/phpdoc.md).
- [ ] `declare(strict_types=1);` present in new/updated PHP files.
- [ ] Structure validated using `/tools/i18n/sync_docs_structure.py` (if docs affected).
- [ ] No manual changes to `/docs/` or generated files (all structure by automation).
- [ ] All pre-commit hooks/checks and CI/CD passed.
- [ ] Changes comply with [CONTRIBUTING.md](../../CONTRIBUTING.md) and [SYNC_PROCESS.md](../../SYNC_PROCESS.md).
- [ ] PR title and description are clear and actionable.

---

## Additional Notes

<!-- Screenshots, rendered output, or reviewer notes. -->

---

*Last updated: {{DATE}}*
