# Linux Foundations for DevOps Engineers (Global Portfolio)

Welcome to my core Linux Engineering and Systems Administration portfolio. This repository serves as a centralized **Mono-Repo** documenting my practical hands-on journey from basic system operations to advanced privilege governance and resource auditing pipelines.

---

## 📊 Infrastructure Project Dashboard

| Project Phase | Description | Architecture Concepts | Technical Documentation |
| :--- | :--- | :--- | :--- |
| **Project 1: Linux Basics** | Provisioning structured DevOps workspaces, nested directories, and secure asset manipulation. | CLI Navigation, File Permissions, Local Backups | [View Project 1 Documentation](./notes/) |
| **Project 2: Admin Toolkit** | Developing administrative automation tools, tracking user isolation, and auditing system metrics. | Pipes, Stream Redirection, Command Substitution | [View Project 2 Documentation](./projects/level2-practice/admin-toolkit/) |

---

## 🛠️ Core Engineering Skillset Mastered

### 1. Identity & Privilege Governance (`PoLP`)
* **Multi-Tenancy Isolation:** Configured dedicated user boundary parameters and system group structures (`chgrp`, `deluser`) to secure sensitive environments.
* **Granular Permission Masks:** Implemented explicit numeric representation masks (`700` and `750`) to strictly enforce the Principle of Least Privilege.

### 2. Advanced Stream & Process Redirection
* **In-Memory Pipelines:** Chained compute operations cleanly using pipes (`|`) to aggregate file distributions with zero-disk-footprint execution overhead.
* **Telemetry Segregation:** Separated standard compute outputs from system errors utilizing numeric channel routing (`2>`) for professional logs troubleshooting.
* **Variable Capture Automation:** Deployed dynamic nested command substitution via `$()` inside automated shell utilities (`census.sh`).

---

## 🛡️ Global Infrastructure Troubleshooting Index
Detailed breakdowns of real-world environment failures encountered and mitigated during the engineering pipeline:
* **WSL Subsystem Deadlock:** Recovered from hard hypervisor container lockouts (`Input/output error`) by forcing elevated daemon cycling (`LxssManager`).
* **Path Traversal Constraints:** Resolved horizontal privilege escalation blocks by hardcoding explicit **Absolute Path Resolution** parameters across cross-account sessions.

---
*Maintained with absolute precision by [Ibrahim Ahmed El Sayed Mohamed](https://github.com/themummy556-netizen)*

