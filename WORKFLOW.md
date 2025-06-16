# Bluewater Project — Branching Strategy & Workflow

This document describes the official branching model and Git workflow for all code, documentation, and translation contributions to the Bluewater project.

---

## 🎯 Goals

- Keep `main` always deployable and stable.
- Enable parallel development of features, bug fixes, documentation, and releases.
- Make collaboration easy for contributors of all backgrounds.
- Support easy code review, issue triage, and automation.

---

## 🚩 Main Branches

- **`main`**:  
  The stable, production-ready branch.  
  - All code merged to `main` must pass all CI/CD tests, documentation builds, and review.
  - Only maintainers merge to `main` after review.

- **`dev`** (optional):  
  Used for active, multi-PR feature development and integration testing.
  - Maintainers merge stable features/fixes from `dev` to `main` as a group.
  - *You may skip `dev` if your project is small or prefers direct PRs to `main`.*

---

## 🌱 Branch Types

### **1. Feature Branches**
- For new features and enhancements.
- Branch from: `main`
- Naming: `feature/<short-description>`
    - Example: `feature/jwt-support`
- Merge via PR to: `main`

### **2. Bugfix Branches**
- For bug fixes or hotfixes.
- Branch from: `main`
- Naming: `bugfix/<short-description>`
    - Example: `bugfix/php-8.2-warning`
- Merge via PR to: `main`

### **3. Documentation Branches**
- For large doc changes or overhauls.
- Branch from: `main`
- Naming: `docs/<short-description>`
    - Example: `docs/quickstart-update`
- Merge via PR to: `main`

### **4. Refactor/Chore Branches**
- For internal improvements with no user-visible change.
- Branch from: `main`
- Naming: `refactor/<short-description>` or `chore/<short-description>`
    - Example: `refactor/middleware-stack`
    - Example: `chore/update-deps`
- Merge via PR to: `main`

### **5. Release/Hotfix Branches** (optional, for formal versioning or urgent fixes)
- Branch from: `main`
- Naming: `release/<version>` or `hotfix/<short-description>`
    - Example: `release/1.2.0`
    - Example: `hotfix/critical-bug`
- Merge via PR to: `main` (and/or tag as needed)

---

## 🔄 Git Workflow

1. **Fork & Clone**
    - If you are an external contributor, fork the repo on GitHub and clone your fork.
    - If you are a maintainer, create a new branch in the main repo.

2. **Create a Branch**
    - Always branch off from `main` (or `dev` if project uses it).
    - Name your branch descriptively (see above).

3. **Make Changes**
    - Commit frequently, with meaningful messages.
    - Follow all coding and documentation standards (see `CONTRIBUTING.md`).

4. **Sync Often**
    - Pull updates from `main` to keep your branch up to date:
      ```bash
      git fetch origin
      git checkout main
      git pull
      git checkout <your-branch>
      git rebase main
      ```

5. **Open a Pull Request**
    - Push your branch to your fork (or the main repo if a maintainer).
    - Open a Pull Request (PR) to `main` (or `dev` as appropriate).
    - Choose the correct PR template for your change (feature, bugfix, docs, etc).
    - Fill out the template completely.

6. **Code Review & CI**
    - Your PR will be reviewed by maintainers.
    - All automated tests, linters, and doc builds must pass.

7. **Merge & Cleanup**
    - When approved, a maintainer will merge your PR.
    - Delete your branch if it is no longer needed.

8. **Releases**
    - Releases are tagged from `main` after major features/bugfixes.
    - See `CHANGELOG.md` for details.

---

## 🌐 Special Notes

- **Small fixes:**  
  Minor typo, doc, or formatting fixes may be committed directly to `main` (maintainers only), but PR is preferred for tracking.
- **Multi-contributor features:**  
  Use a shared feature branch and PR, or coordinate on GitHub.

---

## 📑 Example Workflow

```bash
# Fork and clone the repo
git clone https://github.com/youruser/bluewater-framework.git
cd bluewater-framework

# Create a new feature branch
git checkout -b feature/api-versioning

# Make and commit your changes
git add .
git commit -m "Add API versioning support"

# Sync with upstream main (optional, before PR)
git fetch origin
git rebase origin/main

# Push your branch
git push origin feature/api-versioning

# Open a PR on GitHub: base = main, compare = feature/api-versioning
````

---

## 💬 Questions?

If you’re unsure about the workflow or have branch conflicts,
please open an issue or ask a maintainer.

---

*Last updated: {{DATE}}*
