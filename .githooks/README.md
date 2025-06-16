# .githooks/README.md

This directory contains all custom Git hooks for the Bluewater Framework repository.

## What’s Here

- `pre-commit` — Runs automated checks and formatting for Markdown docs and code files before each commit.
- `setup-hooks.sh` — Installs or updates all hooks for Linux/macOS.
- `setup-hooks.bat` — Installs or updates all hooks for Windows.

## Usage

After cloning the repo or updating hooks, install them with:

- **Linux/macOS:**  
  ```bash
  .githooks/setup-hooks.sh
````

* **Windows:**
  Double-click or run:

  ```
  .githooks\setup-hooks.bat
  ```

## Adding or Updating Hooks

* Place new or updated hook scripts in this `.githooks/` directory.
* Rerun the setup script for your OS to install them.

---

*Last updated: {{DATE}}*
