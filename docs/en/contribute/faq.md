# Bluewater Framework — FAQ & Troubleshooting

This document answers common questions and provides troubleshooting steps for contributors and maintainers of the Bluewater Framework.

---

## General

**Q: How do I preview the documentation locally?**  
A:
1. Install Python 3.x and pip.
2. Run `pip install -r ../requirements.txt` from the repo root.
3. Start the docs server with `mkdocs serve` or on Windows, `preview-docs.bat`.
4. Open [http://localhost:8000/](http://localhost:8000/) in your browser.

---

**Q: Where should I put technical documentation updates?**  
A:  
All technical docs go in the `/technical/` directory. Do **not** edit `/docs/` directly; it is auto-generated.

---

**Q: My commit was blocked due to documentation errors. What should I check?**  
A:
- Every Markdown file must start with an H1 (`# Title`) and end with `Last updated: {{DATE}}`.
- Use the provided templates in `/technical/contribute/`.
- Run the git hook setup:
    - Linux/macOS: `.githooks/setup-hooks.sh`
    - Windows: `.githooks\setup-hooks.bat`

---

**Q: What PHP version is required?**  
A:  
Bluewater requires **PHP 8.2+**.

---

**Q: What should I do if a link or badge in the docs is broken?**  
A:
- Check if the file actually exists in the referenced directory.
- If the doc isn’t ready, add a “Coming soon” stub.
- Submit a pull request or open an issue to get it fixed.

---

## Troubleshooting

**Problem: "Module not found" or missing dependencies when running MkDocs or the framework.**
- Run `composer install` for PHP dependencies.
- Run `pip install -r requirements.txt` for doc dependencies.
- Ensure your Python and PHP are the correct versions.

---

**Problem: Pre-commit hook not working or not triggering.**
- Re-run the appropriate setup script from `.githooks/` for your platform.
- Make sure `.git/hooks/pre-commit` is present and executable.

---

**Problem: Docs don’t update on GitHub Pages after commit.**
- Check CI logs for errors.
- Make sure you pushed to the correct branch.
- Confirm `mkdocs.yml` is valid and up to date.

---

**Still have questions?**  
Open an issue or contact a maintainer.

---

*Last updated: {{DATE}}*
