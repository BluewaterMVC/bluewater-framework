### **Current Content Review**

Your README currently:

* Clearly lists the contents and role of the directory.
* Explains how to install hooks for both Unix and Windows.
* Mentions updating and adding hooks.
* Follows a clear and concise style.
* Includes a *Last updated* timestamp placeholder.

### **Recommendations for Improvement**

To align fully with best practices for the Bluewater project, **I recommend the following updates**:

1. **State the Enforced Standards**
   Explain that hooks are used to enforce coding, documentation, and process standards, and are required for all contributors.
2. **Reference Contribution and Workflow Docs**
   Point users to `CONTRIBUTING.md` and `WORKFLOW.md` for information about pre-commit requirements and automation.
3. **List All Provided Hooks**
   If you add more hooks (e.g., `commit-msg`, `pre-push`), enumerate each briefly for transparency.
4. **Add Troubleshooting and CI Clarification**
   Briefly describe how hooks relate to CI/CD and what to do if hooks fail.
5. **Encourage Reinstallation After Updates**
   Remind users to reinstall hooks after pulling updates.
6. **Consistent Badge/Branding (Optional)**
   Add a badge for visual status (optional, but consistent with your other docs).
7. **Clarify Directory Reference**
   Use consistent reference as `.githooks/` throughout.
8. **Update the Date Placeholder**
   Keep the *Last updated* placeholder at the end.

---

### **Regenerated `/githooks/README.md`**

````markdown
# .githooks/README.md

This directory contains all **custom Git hooks** used by the Bluewater Framework repository to enforce code and documentation standards before commits reach the main branch.

---

## What’s Included

- **`pre-commit`** — Runs automated code style, PHPDoc, and Markdown formatting checks before each commit. Blocks commits that do not meet project standards.
- **`setup-hooks.sh`** — Installs or updates all Git hooks for Linux/macOS environments.
- **`setup-hooks.bat`** — Installs or updates all Git hooks for Windows environments.
<!-- Add descriptions for any additional hooks (e.g., `commit-msg`, `pre-push`) here. -->

---

## Installation

> **Hooks are required for all contributors.**  
> Install or update after cloning or whenever hooks are modified:

**On Linux/macOS:**
```bash
.githooks/setup-hooks.sh
````

**On Windows:**
Double-click or run:

```
.githooks\setup-hooks.bat
```

---

## Usage & Best Practices

* All code, PHPDoc, and Markdown must pass pre-commit checks before code is accepted.
* If a hook fails, review the error, address the issue, and re-commit.
* Always reinstall hooks after pulling from `main` or when notified of hook changes.
* These hooks complement, but do not replace, the automated checks in CI/CD. **Passing hooks locally does not guarantee CI/CD will pass if remote environments differ.**

---

## Adding or Updating Hooks

* Place new or updated hook scripts in `.githooks/`.
* Update `setup-hooks.sh` and `setup-hooks.bat` if you add new hooks.
* Rerun the setup script for your OS to (re)install hooks.

---

## Reference & Additional Guidance

* See [CONTRIBUTING.md](../CONTRIBUTING.md) for required commit standards.
* See [WORKFLOW.md](../WORKFLOW.md) for project automation and review flow.

---

*Last updated: {{DATE}}*
