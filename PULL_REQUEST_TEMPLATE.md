# 🔄 SYNC_PROCESS.md

📄 **Bluewater Documentation Sync Workflow**  
Last updated: {{DATE}}  
License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)

---

## 📌 Purpose

This document outlines how various documentation sets are managed, synchronized, and published across Bluewater repositories.

It ensures contributors understand where to make changes, what gets synced, and how everything is published.

---

## 📁 Repository Structure & Responsibilities

| Repository            | Role                                       |
|-----------------------|--------------------------------------------|
| `bluewater-framework` | Technical documentation, source code       |
| `bluewater-docs`      | Published site, architecture docs, PHPDocs |

---

## 📚 Documentation Types

| Type              | Maintained In          | Published At          | Sync Direction     |
|-------------------|------------------------|-----------------------|--------------------|
| Technical Docs    | `bluewater-framework`  | `/docs/en/`           | → (PUSHED)         |
| Architecture Docs | `bluewater-docs`       | `/docs/architecture/` | (LOCAL/EXTERNAL)   |
| PHPDocs           | Auto-generated locally | `/docs/phpdoc/`       | Manual Copy → Docs |
| i18n Translations | `bluewater-docs`       | `/docs/{lang}/`       | Local → Commit     |

---

## 🔧 Sync Instructions

### 🔹 From `bluewater-framework` to `bluewater-docs`

1. **Trigger**: Any change to `/technical/` or `.md` files in the `bluewater-framework` repo.
2. **Tooling**:
    - GitHub Action: `.github/workflows/sync-tech-docs.yml`
3. **Result**:
    - Copies updated files from `/technical/` → `bluewater-docs/docs/en/`
    - Rebuilds documentation using MkDocs
    - Publishes updated site to GitHub Pages

---

## 📤 Publishing Process

Documentation is deployed automatically via GitHub Pages on every push to the `main` branch of `bluewater-docs`.

Site URL: [https://bluewatermvc.github.io/bluewater-docs/](https://bluewatermvc.github.io/bluewater-docs/)

---

## 🧪 Pre-Commit Sync & Formatting

Local scripts and Git hooks are used to:
- Update date placeholders (`{{DATE}}`) automatically
- Ensure metadata is applied to each `.md` file
- Validate structure and format before commits

See:
- `.githooks/pre-commit`
- `check_metadata.sh` / `check_metadata.bat`

---

## 🌐 Translations

- Each `/docs/{lang}/` folder (e.g., `es`, `fr`, `de`, `ru`) contains localized documentation.
- Start with English source files and translate using the i18n guide:  
  [`docs/en/contribute/i18n.md`](./docs/en/contribute/i18n.md)

---

## 📝 Editing Rules

| Rule                                             | Description                                |
|--------------------------------------------------|--------------------------------------------|
| Never edit `/docs/` manually                     | It’s auto-generated and overwritten        |
| Edit tech docs in `/technical/`                  | Syncs automatically                        |
| Edit arch docs in `/architecture/` (or external) | Referenced directly or manually copied     |
| Generate PHPDocs locally                         | Place output into `/phpdoc/` before deploy |

---

## 📎 Related Files

- `.github/workflows/sync-tech-docs.yml`
- `mkdocs.yml`
- `/docs/{lang}/index.md`
- `CONTRIBUTING.md`
- `GOVERNANCE.md`

---

## ✅ Checklist Before Committing

- [ ] Metadata placeholders updated
- [ ] `Last updated: {{DATE}}` added
- [ ] Structure validated
- [ ] No manual changes made to `/docs/`

---

*Last updated: {{DATE}}*
