# AWS Cloud Engineering Journey: Core Linux & Git Portfolio

Welcome to my centralized **Mono-Repo** documenting my progression from foundational system administration to cloud infrastructure readiness. This dashboard tracks **6 consecutive core production-grade Linux projects** designed to build deep competencies before transitioning to advanced AWS architectures.

---

## 📊 Global Project Registry (6-Phase Roadmap)

| Phase | Project Module | Status | Core Technical Domain | Verified Documentation |
| :--- | :--- | :--- | :--- | :--- |
| **01** | **Workspace Provisioning & Basics** | ✅ Completed | CLI Navigation, Backup Routines, Text Filtering | [Project 1 Docs](./notes/) |
| **02** | **Privilege Governance & Admin Toolkit** | ✅ Completed | DAC Permissions (`750`/`700`), Pipes, Redirection | [Project 2 Docs](./projects/level2-practice/admin-toolkit/) |
| **03** | **Network Architecture & Configurations**| ⏳ Pending | IP Addressing, Routing Tables, SSH Hardening | `In Development` |
| **04** | **Process Management & Automation** | ⏳ Pending | Daemon Control, Crontabs, System Resource Audits | `In Development` |
| **05** | **Python Scripting in Linux Contexts** | ⏳ Pending | Scripted Automation, Dynamic Log Parsing | `In Development` |
| **06** | **AWS Cloud Practitioner Readiness** | ⏳ Pending | CloudOps Simulation, IAM Governance Foundations | `In Development` |

---

## 🛠️ Combined Engineering Competencies

### 1. Identity & System Isolation Frameworks
* **Multi-Tenancy Enforcements:** Designed logical user boundary configurations and managed system groups (`chgrp`, `deluser`) to ensure strict context isolation.
* **Granular Discretionary Access Control (DAC):** Hardened baseline environments using octal masks (`700`, `750`) to enforce the Principle of Least Privilege (PoLP).

### 2. Stream Data Plumbing & Programmatic Scripting
* **Zero-Disk-Footprint Execution:** Combined multi-stage commands using pipes (`|`) and pattern matching (`grep`) to aggregate metadata entirely in volatile memory.
* **Telemetry Segregation:** Isolated runtime system logs from standard error paths utilizing discrete output channels (`2>`) to optimize troubleshooting diagnostics.
* **Variable Capture Automation:** Formulated nested shell utility loops (`census.sh`) deploying dynamic command substitution constructs `$()`.

### 3: Software Packages & Runtime Process Governance
* **Core Utilities Toolkit**: [`/admin-toolkit`](./admin-toolkit/)
  * Developed an automated infrastructure monitor asset (`sysinfo.sh`) tracking real-time user identity, package registry counts (`apt`), and resource sorting queues (`ps aux`).
  * Enforced strict environment configuration protection protocols and decoupled custom script outputs cleanly into persistent telemetry logs (`report.txt`).
---

## 🛡️ Global Infrastructure Troubleshooting Index
* **WSL Subsystem Deadlock:** Mitigated system-wide I/O crashes (Read-Only freezes) by forcing elevated daemon recycles (`LxssManager`) from the container host.
* **Path Traversal Constraints:** Overcame target directory boundary traps across cross-account sessions (`su -`) by deploying explicit **Absolute Path Resolution**.

---
*Maintained with absolute precision by [Ibrahim Ahmed El Sayed Mohamed](https://github.com/themummy556-netizen)*


