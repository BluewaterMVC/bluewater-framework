
# Pull Request Template

Thank you for contributing to Bluewater!  
All contributors are expected to follow our project workflow, documentation, and PHPDoc standards.

---

## Checklist

Please review and check all that apply before submitting:

- [ ] **Branch:** This PR is from a dedicated feature, bugfix, docs, i18n, or refactor branch.
- [ ] **Issue Reference:** Linked to relevant issue(s) (e.g., `Closes #123`).
- [ ] **Description:** Clearly describes *what* and *why* this PR changes.

### Code & Documentation Standards

- [ ] **Code Quality:** Code adheres to [PSR-12](https://www.php-fig.org/psr/psr-12/) and Bluewater’s coding standards.
- [ ] **PHPDoc Compliance:** All new/modified code includes [PHPDoc blocks as per Bluewater standards](../docs/en/contribute/phpdoc.md).
- [ ] **Tests:** Relevant unit/integration tests are added or updated, and all tests pass.
- [ ] **Docs Updated:** User and architecture documentation in `/docs/{lang}` is updated as needed.
- [ ] **Sync Tools:** Ran i18n sync and structure tools (`/tools/i18n/sync_docs_structure.py`) for multi-language docs, if applicable.
- [ ] **No Manual Edits to Generated/Structured Files:** All edits to `/docs/` structure are made through the prescribed tools/scripts, not by hand.

### Compliance & Workflow

- [ ] **PR Template:** This PR uses the correct template for its change type.
- [ ] **Changelog:** If the change is user-facing or significant, [CHANGELOG.md](../CHANGELOG.md) is updated.
- [ ] **CI/CD:** All automated checks, linters, and tests pass in CI.
- [ ] **Community:** This contribution complies with [CONTRIBUTING.md](../CONTRIBUTING.md) and [Code of Conduct](../CODE_OF_CONDUCT.md).

---

## Type of Change

<!-- Please select all that apply -->
- [ ] Feature
- [ ] Bugfix
- [ ] Documentation
- [ ] Refactor
- [ ] Translation/i18n
- [ ] Other (describe below)

---

## Additional Notes

<!-- Optional: Highlight any caveats, deployment notes, or follow-up required. -->

---

*By submitting this PR, you agree that your contribution complies with all Bluewater standards and policies.*

*Last updated: {{DATE}}*
