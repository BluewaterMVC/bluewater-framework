![Framework](https://img.shields.io/badge/framework-Bluewater-lightblue?logo=dropbox&logoColor=white)
![Status](https://img.shields.io/badge/status-active-blue)
![Version](https://img.shields.io/badge/version-1.0-blue?logo=semantic-release&logoColor=white)

![Language](https://img.shields.io/badge/language-PHP%208.2+-blue?logo=php&logoColor=white)
![OpenAPI](https://img.shields.io/badge/API-OpenAPI_3-green?logo=openapiinitiative&logoColor=white)

![License](https://img.shields.io/badge/license-MIT-green?logo=open-source-initiative&logoColor=white)
![Docs](https://img.shields.io/badge/docs-Available-brightgreen?logo=readthedocs&logoColor=white)

![Multi-Tenant](https://img.shields.io/badge/multi--tenant-enabled-blue?logo=archlinux&logoColor=white)
![Security](https://img.shields.io/badge/security-Middleware--Driven-important?logo=auth0&logoColor=white)
![Auth](https://img.shields.io/badge/auth-JWT%20%7C%20OAuth-blue?logo=auth0&logoColor=white)

![Tests](https://img.shields.io/badge/tests-not%20configured-lightgrey?logo=githubactions&logoColor=white)
![Coverage](https://img.shields.io/badge/coverage-N/A-lightgrey?logo=codecov&logoColor=white)
![CI](https://img.shields.io/badge/ci-GitHub_Actions-blue?logo=githubactions&logoColor=white)

![Composer](https://img.shields.io/badge/Dependency-Composer-orange?logo=composer&logoColor=white)
![Docker](https://img.shields.io/badge/Container-Docker-blue?logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Orchestration-Kubernetes-blue?logo=kubernetes&logoColor=white)

---

# 🌊 Bluewater Framework

Welcome to the official **Bluewater Framework** repository—a modern, lightweight, multi-tenant backend platform for high-performance API-driven SaaS.

> **A good framework gets out of your way. A great one lets you see how it works.**

---

## ✨ Key Features

- **Fast:** Boot times under 50ms, sub-10ms API responses
- **Lightweight:** No magic, no bloat, full transparency
- **Modular:** Swap any component via Composer/PSR-4
- **Multi-Tenant:** First-class support for client isolation
- **Secure:** Middleware-driven, JWT/OAuth2 support, RBAC, rate limiting
- **API-First:** OpenAPI 3, unified JSON output, robust routing
- **Extensible:** Bring your own ORM, cache, queue, and auth libraries
- **Cloud Native:** Ready for Docker, Kubernetes, CI/CD

---

## 🚀 Quick Start

**Requirements:**  
- PHP 8.2+
- Composer

**Install dependencies:**
```bash
composer install
````

**Environment setup:**
Copy `.env.example` to `.env` and configure as needed.

**Serve locally (e.g. with PHP built-in web server):**

```bash
php -S localhost:8000 -t public/
```

---

## 📚 Technical Documentation

* Technical docs for contributors live in `/technical/`.

* Preview locally using [MkDocs](https://www.mkdocs.org/):

  **Install prerequisites:**

  ```bash
  pip install -r requirements.txt
  ```

  **Preview docs:**

  ```bash
  mkdocs serve
  ```

   * Or on Windows:

     ```
     preview-docs.bat
     ```

* **Do not edit `/docs/` directly** (it's auto-generated).

---

## 🛠️ Git Hooks

To enforce standards and keep docs/code metadata up to date, set up our robust Git hooks:

* **Linux/macOS:**

  ```bash
  .githooks/setup-hooks.sh
  ```
* **Windows:**
  Double-click or run:

  ```
  .githooks\setup-hooks.bat
  ```

More details: [CONTRIBUTING.md](CONTRIBUTING.md)

---

## 🤝 Contributing

We welcome issues, suggestions, and pull requests!

* [CONTRIBUTING.md](CONTRIBUTING.md) — Contribution guide, workflow, and code/doc standards
* [Code of Conduct](CODE_OF_CONDUCT.md)
* [Security Policy](SECURITY.md)

  For details on how the Bluewater project is managed—including roles, decision-making, issue triage, and release process—see our [GOVERNANCE.md](./GOVERNANCE.md).


---

## 📝 Licensing

This project is open-source under the [MIT License](LICENSE).

---

## 🧭 Project Links

* [Official Documentation Site](https://BluewaterMVC.github.io/bluewater-docs/)
* [Architecture & User Docs](https://github.com/BluewaterMVC/bluewater-docs)
* [API Reference (PHPDocs)](https://docs.bluewaterphp.org/phpdoc/)
* [Roadmap](https://github.com/BluewaterMVC/bluewater-framework/blob/main/ROADMAP.md)

---

*Last updated: {{DATE}}*
