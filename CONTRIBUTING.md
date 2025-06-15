# Contributing to Bluewater Framework

Thank you for considering a contribution to the Bluewater Framework!  
We welcome code improvements, bug reports, documentation updates, and new ideas.

---

## 📚 Quick Links

- [Official Documentation Site](https://BluewaterMVC.github.io/bluewater-docs/)
- [Doc Sync Process](https://github.com/BluewaterMVC/bluewater-docs/blob/main/SYNC_PROCESS.md)
- [Code of Conduct](https://github.com/BluewaterMVC/bluewater-docs/blob/main/CODE_OF_CONDUCT.md)
- [Security Policy](https://github.com/BluewaterMVC/bluewater-docs/blob/main/SECURITY.md)

---

## 🚀 Getting Started

1. **Fork and clone this repository.**
2. **Install PHP dependencies:**  
   ```bash
   composer install
   ```

3. **(Optional) Set up for local technical docs preview:**

   * Make sure you have Python 3.x and `pip` installed.
   * Install MkDocs dependencies:

     ```bash
     pip install -r requirements.txt
     ```
   * Or, run the provided batch file for Windows:

     ```
     preview-docs.bat
     ```
   * Or, use:

     ```bash
     mkdocs serve
     ```
   * This will serve the technical docs in `/technical/` at [http://localhost:8000/](http://localhost:8000/).

---

## 🛠️ Technical Documentation Workflow

* **All technical documentation** for the framework lives in the `/technical/` directory of this repository.
* Preview, edit, and improve docs locally—see above for setup.
* **Do not edit `/docs/` directly.**
  It is auto-generated in the publication process (see [SYNC\_PROCESS.md](https://github.com/BluewaterMVC/bluewater-docs/blob/main/SYNC_PROCESS.md)).

---

## ✏️ Code Contributions

* Follow [PSR-12](https://www.php-fig.org/psr/psr-12/) coding standards.
* Use strict types:

  ```php
  declare(strict_types=1);
  ```
* Document your code with PHPDoc, following the Bluewater PHPDoc standards.

---

## 🤝 Pull Request Process

1. Branch from `main`.
2. Write clear commit messages and PR descriptions.
3. Include tests for new features or bugfixes.
4. Update or add technical docs in `/technical/` as needed.
5. Submit your pull request to `main`.

All PRs are subject to code review.

---

## 🛡️ Code of Conduct & Security

* Please review our [Code of Conduct](https://github.com/BluewaterMVC/bluewater-docs/blob/main/CODE_OF_CONDUCT.md).
* To report a security vulnerability, please follow our [Security Policy](https://github.com/BluewaterMVC/bluewater-docs/blob/main/SECURITY.md).

---

## 📝 Doc Dependencies

* All required Python packages for local documentation preview are listed in [`requirements.txt`](./requirements.txt).
* If you add new MkDocs plugins, please update `requirements.txt` accordingly.

---

## 🙌 Thank You

Your contributions make Bluewater Framework better for everyone.

---

*Last updated: {{DATE}}*
