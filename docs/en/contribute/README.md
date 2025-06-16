# Bluewater Framework Technical Documentation

Welcome to the **technical documentation** for the Bluewater Framework.

This section provides all engineering and contributor-facing guides for building, extending, and maintaining the Bluewater codebase.  
Here you'll find everything from environment setup, build/test/CI practices, integration details, usage patterns, and contribution standards.

---

## 📖 What You'll Find Here

- **Usage:**  
  Guides for using the CLI, APIs, and integration patterns with Bluewater.
- **Setup:**  
  Step-by-step instructions to get your local or cloud environment running.
- **Build & Deploy:**  
  How to build, test, deploy, and roll back the Bluewater platform.
- **Development:**  
  Code structure, framework architecture, style guides, and dev tooling.
- **Testing:**  
  Best practices, frameworks, and test automation approaches.
- **Monitoring:**  
  Logging, metrics, alerting, and troubleshooting guides.
- **References:**  
  Dependency lists, glossaries, and other reference material.
- **Contribution:**  
  Templates and rules for creating or updating technical docs.

---

## 🛠️ Local Doc Preview

To preview these docs as a website, use [MkDocs](https://www.mkdocs.org/):

1. **Install Python and pip** (if not already installed).
2. **Install dependencies:**  
   ```bash
   pip install -r ../requirements.txt
````

3. **Start the server:**

   ```bash
   mkdocs serve
   ```

   Or on Windows:

   ```
   preview-docs.bat
   ```

   Then visit [http://localhost:8000/](http://localhost:8000/) in your browser.

---

## 🧩 Directory Overview

The documentation is organized as follows:

```
technical/
│
├── usage/         # How to use CLI, APIs, integrations, and common tasks
├── setup/         # Local/cloud setup, config, Docker, prerequisites
├── build-deploy/  # Build process, CI/CD, deployment, rollback
├── development/   # Framework code, dev standards, style, tooling
├── testing/       # Testing approaches: unit, integration, e2e, mocking
├── monitoring/    # Logging, metrics, alerts, troubleshooting
├── references/    # Glossary, dependencies, useful links
├── contribute/    # Doc and file templates, doc writing rules
├── scripts/       # Example scripts for build, deploy, test, lint
└── README.md      # This file
```

---

## 📝 Contribution Workflow

* All new and updated technical docs should be added here (`/technical/`).
* **Follow the doc template** in `contribute/` for each new file.
* All docs **must** have a clear H1 title at the top and a "Last updated" footer at the end:

  ```
  ---
  *Last updated: {{DATE}}*
  ```
* See the [CONTRIBUTING.md](../CONTRIBUTING.md) for the full workflow.

---

## 💡 Need Help?

If you're unsure where to add your content, have questions, or want to suggest improvements, please open an issue or contact the core maintainers.

---

*Last updated: {{DATE}}*
