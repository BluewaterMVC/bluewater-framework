Certainly. Below is an **authoritative, comprehensive, and modern `CONTRIBUTING.md`** for Bluewater, designed for use in a professional open-source context. This version:

* Explicitly references the PHPDoc standards at every relevant point.
* Sets expectations for documentation, code style, PRs, issues, and more.
* Provides clarity for new and experienced contributors.
* Reflects your architecture (all technical docs live in `/docs/{lang}`).
* Covers all key contributor responsibilities and processes.

---

# Contributing to Bluewater

Thank you for your interest in contributing to Bluewater!
This project relies on the active involvement of its community.
**Please read this guide carefully before submitting issues, code, or documentation.**

---

## Table of Contents

1. [Code of Conduct](#code-of-conduct)
2. [Where to Start](#where-to-start)
3. [General Guidelines](#general-guidelines)
4. [Code Style & Standards](#code-style--standards)
5. [Documentation Standards](#documentation-standards)
6. [PHPDoc Standards](#phpdoc-standards)
7. [Pull Requests](#pull-requests)
8. [Issues & Feature Requests](#issues--feature-requests)
9. [Translation & Localization](#translation--localization)
10. [Sync & Tooling](#sync--tooling)
11. [Licensing](#licensing)
12. [Contact](#contact)

---

## Code of Conduct

Participation in this project is governed by our [Code of Conduct](./CODE_OF_CONDUCT.md).
We expect all contributors to treat others with respect, inclusivity, and professionalism.

---

## Where to Start

* **New to Bluewater?** Start with the [README](./README.md).
* Review open [issues](../issues) and [pull requests](../pulls).
* See our [GOVERNANCE.md](./GOVERNANCE.md) for how decisions are made.

---

## General Guidelines

* **Be respectful** and keep all discussions professional.
* Always search for existing [issues](../issues) before creating new ones.
* For major changes or features, open an issue or [discussion](../discussions) first.

---

## Code Style & Standards

* All PHP code **must** use `declare(strict_types=1);` at the top of every file.
* Follow **PSR-12** and all relevant PSR standards.
* Use clear, modular, testable, and maintainable code.
* Adhere to [SOLID](https://en.wikipedia.org/wiki/SOLID) and [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) principles.
* Use Composer for dependency management and autoloading.
* **Security is paramount:** Always sanitize and validate input, use secure authentication, and avoid exposing sensitive data.
* **See:**

    * [PHP-FIG: PSR-12](https://www.php-fig.org/psr/psr-12/)
    * [Bluewater PHPDoc Standards](./docs/en/contribute/phpdoc.md)

---

## Documentation Standards

* All documentation must reside in `/docs/{lang}` (where `{lang}` is the language code, e.g., `en` for English).
* Documentation must be clear, concise, and use [Markdown](https://commonmark.org/).
* Architectural, workflow, and governance docs are maintained in `/docs/{lang}/`.
* **Technical code documentation is generated from PHPDoc within the codebase.**
* **All code changes require corresponding documentation updates.**

---

## PHPDoc Standards

**All PHP code—classes, methods, properties, interfaces, traits, constants, and variables—**must** be fully documented using Bluewater's PHPDoc standards.**

* Use the official [PHPDoc templates and tag requirements](./docs/en/contribute/phpdoc.md).
* All required fields and tag order must be strictly followed.
* Code that does not meet documentation requirements **will not be merged**.
* Automated and manual checks are in place for PHPDoc compliance.

**See:**
[Bluewater PHPDoc Standards](./docs/en/contribute/phpdoc.md)

---

## Pull Requests

* Fork the repository and create a new branch for your change.
* Follow the PR template for your contribution type (feature, bugfix, docs, etc.).
* Ensure all code includes complete PHPDoc blocks.
* All new and updated files must be tested and pass all CI checks.
* Link relevant issues by number (`Closes #123`).
* Keep PRs focused—one logical change per PR.
* **All PRs must:**

    * Update documentation as needed.
    * Pass PHPDoc compliance and other linter/tooling checks.
    * Reference the [PHPDoc standards](./docs/en/contribute/phpdoc.md) in the description if relevant.
* PRs that do not meet these criteria will be reviewed, but may be closed or asked for revision.

---

## Issues & Feature Requests

* Before submitting, search [existing issues](../issues) to avoid duplicates.
* Provide clear, descriptive titles and context.
* For documentation, translation, or workflow issues, specify affected files or pages.
* Use the provided issue templates to speed up triage.
* Be constructive—describe *why* and *how* the change is needed.

---

## Translation & Localization

* Bluewater is a multi-language project.
  All documentation and user-facing text should support localization.
* Language trees are managed per `/docs/{lang}` and synchronized using internal tooling.
* To propose a new language or update a translation, see [SYNC\_PROCESS.md](./SYNC_PROCESS.md) and our `/tools/i18n/` guides.
* **Translation PRs must maintain structure and compliance with [PHPDoc standards](./docs/en/contribute/phpdoc.md) for code examples.**

---

## Sync & Tooling

* Use the [i18n sync tools](./tools/i18n/) to maintain documentation structure across languages.
* Automated scripts (see `/tools/i18n/`) help enforce structure, manage language trees, and update configuration files such as `mkdocs.yml` and `requirements.txt`.
* See [SYNC\_PROCESS.md](./SYNC_PROCESS.md) and [Tools README](./tools/i18n/README.md) for process and usage.
* If in doubt, open an issue before running or modifying a sync script.

---

## Licensing

* Contributions are accepted under the [Open Software License (OSL 3.0)](./LICENSE).
* Do not submit code you are not legally entitled to contribute.
* All files must retain their license headers and copyright.

---

## Contact

* For help, use [GitHub Discussions](../discussions) or open an [issue](../issues).
* For sensitive matters, email the core team: [contact@bluewatermvc.org](mailto:contact@bluewatermvc.org)

---

> **All contributions—code, documentation, translations, and more—are reviewed for compliance with these standards.
> The Bluewater PHPDoc guide is the single source of truth for code documentation.
> Thank you for making Bluewater better!**

---

*Last updated: {{DATE}}*
