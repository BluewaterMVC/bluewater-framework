# Bluewater

**A modern, robust, and scalable platform for application architecture, documentation, and development.**  
Bluewater empowers teams to build and document high-quality PHP applications with multi-language support, strict standards, and powerful automation.

---

## Vision

Bluewater’s mission is to set a new standard in collaborative, maintainable, and multi-language PHP development.  
We provide a transparent, process-driven foundation for both architecture and implementation—so projects stay healthy, accessible, and future-proof from day one.

---

## Key Features

- **Strict Coding & Documentation Standards:**  
  Enforced via [PSR-12](https://www.php-fig.org/psr/psr-12/), robust PHPDoc, and comprehensive documentation templates.
- **Multi-Repository Architecture:**  
  - `bluewater-framework`: All source code, code-level documentation (PHPDoc), and technical assets.
  - `bluewater-docs`: Architecture, workflow, governance, and user-facing documentation.
- **Multi-Language Documentation:**  
  Fully automated language trees in `/docs/{lang}`, managed via custom i18n tooling and sync scripts.
- **Automation-Driven Workflow:**  
  Automation scripts enforce structure, update configuration, and validate translations, documentation, and code compliance.
- **Community and Governance:**  
  Open decision-making, clear contribution guidelines, and a strong commitment to inclusivity and transparency.
- **Best-in-Class Security & DevOps:**  
  Emphasis on secure, scalable, and maintainable solutions for all code and data.

---

## Quick Start

> **All contributors must read [CONTRIBUTING.md](./CONTRIBUTING.md) and [WORKFLOW.md](./WORKFLOW.md) before submitting code or documentation.**

1. **Clone the repository**  
   ```bash
   git clone https://github.com/bluewatermvc/bluewater-framework.git
   # or for docs
   git clone https://github.com/bluewatermvc/bluewater-docs.git
````

2. **Install dependencies** (if applicable)

   ```bash
   composer install
   # or for docs:
   pip install -r requirements.txt
   ```

3. **Run the documentation site locally**

   ```bash
   # From the repository root
   cd docs
   mkdocs serve
   ```

4. **See [Tools README](./tools/i18n/README.md) for i18n sync and automation usage.**

---

## Documentation

* **Main Documentation:** See `/docs/en/` for the source of truth.
* **Architecture, workflow, and governance:** `/docs/en/architecture/`, `/docs/en/contribute/`, `/docs/en/workflow/`
* **PHPDoc Standards:** [docs/en/contribute/phpdoc.md](./docs/en/contribute/phpdoc.md)
* **Translation Guide:** [docs/en/contribute/i18n.md](./docs/en/contribute/i18n.md)
* **Contribution Workflow:** [CONTRIBUTING.md](./CONTRIBUTING.md), [WORKFLOW.md](./WORKFLOW.md)
* **Sync Process & Automation:** [SYNC\_PROCESS.md](./SYNC_PROCESS.md), [Tools README](./tools/i18n/README.md)

---

## Contributing

We welcome new contributors!
Before submitting a Pull Request or Issue, please:

* **Read:**

  * [CONTRIBUTING.md](./CONTRIBUTING.md)
  * [WORKFLOW.md](./WORKFLOW.md)
  * [PHPDoc Standards](./docs/en/contribute/phpdoc.md)
* **Use:**

  * Provided [issue templates](.github/ISSUE_TEMPLATE/) and [PR templates](.github/PULL_REQUEST_TEMPLATE/)
  * Automation scripts for i18n and docs structure
* **Respect:**

  * [Code of Conduct](./CODE_OF_CONDUCT.md)
  * [Governance](./GOVERNANCE.md)

---

## Community & Support

* **Discussions:** [GitHub Discussions](https://github.com/bluewatermvc/bluewater-framework/discussions)
* **Issues & Bugs:** [GitHub Issues](../issues)
* **Contact:** [contact@bluewatermvc.org](mailto:contact@bluewatermvc.org)

---

## Governance & Licensing

* **Governance:** [GOVERNANCE.md](./GOVERNANCE.md)
* **License:** [Open Software License (OSL 3.0)](./LICENSE)
* All contributions must comply with project licensing and IP policies.

---

## Badges

<!-- Add project status, CI, code coverage, docs, translation, and other badges as needed here. -->

[![CI](https://github.com/bluewatermvc/bluewater-framework/actions/workflows/ci.yml/badge.svg)](https://github.com/bluewatermvc/bluewater-framework/actions)
[![Docs Status](https://img.shields.io/badge/docs-en%20%7C%20i18n-brightgreen?style=flat-square)](./docs/en/)
[![PHPDoc Standards](https://img.shields.io/badge/PHPDoc-Standards-informational?style=flat-square)](./docs/en/contribute/phpdoc.md)
[![License: OSL 3.0](https://img.shields.io/badge/license-OSL%203.0-blue.svg?style=flat-square)](./LICENSE)

---

*Last updated: {{DATE}}*
