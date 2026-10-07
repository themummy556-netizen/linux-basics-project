# Linux System Administration & Privilege Governance Toolkit
* **NextWork Project Lab Link:** [Verify Project 2 on NextWork](https://nextwork.ai/refreshed_olive_vibrant_plum/docs/d005387c-1f07-4574-af7a-975b712870d0)
* **Parent Repository Pipline:** [project 2 Docs](projects/level2-practice)
## 📌 Architectural Overview
This repository contains production-grade infrastructure automation scripts developed during **Day 12** of the Cloud Engineering Roadmap. The core focus is establishing secure multi-tenancy, granular access control tracking, and programmatic text telemetry extraction utilizing the native Linux kernel subsystems.

Instead of deploying generic templates, all scripts and configuration metrics are wrapped within a global unified mono-repo architecture (`~/devops-journey/projects`), validating enterprise-level workflow tracking and version control compliance.

---

## 🛠️ Infrastructure Core Utilities

### 1. Administrative System Monitoring (`sysinfo.sh`)
An automated operations tool designed to consolidate runtime host telemetry into non-volatile reporting assets.
* **Privilege Profile:** `700` (Strictly bounded to Owner context).
* **Target Handshake:** Programmatically captures current UID, system localized timestamp, and isolates the top 5 compute-intensive system processes directly from the process table.
* **Data Flow Architecture:** Captures standard output streams and routes the dynamic payload using arrow operators into static persistence blocks (`report.txt`).

### 2. File Type Census Script (`census.sh`)
An advanced data aggregation pipeline crafted to scan and recursively audit system resource footprints across targeted workspaces.
* **Privilege Profile:** `700` (Owner-exclusive access verified).
* **Engineering Paradigm:** Employs nested command substitution via `$()` to encapsulate runtime evaluation blocks. It pipes recursive `find` query outputs straight into specialized line-counting memory buffers (`wc -l`), aggregating file counts into declarative structural logs (`census-report.txt`) without staining the shell terminal window.

---

## ⚙️ Access Control Matrix & Permission Logic
The deployment enforces the **Principle of Least Privilege (PoLP)** through a multi-tiered Discretionary Access Control (DAC) framework:

* **Role Isolation:** Local system contexts were partitioned between the primary engineering account (`hisoka`) and temporary teammate profiles (`teammate`).
* **Shared Environment Governance:** Shared project directories were tightly mapped using the `chgrp` engine to align with the specific security group (`toolkit-team`).
* **The `750` Mask Implementation:** Standard permissions were hardened to `drwxr-x---`, guaranteeing absolute system configuration lockouts for global unverified users (`others`), while maintaining seamless traversal capabilities for certified group members.

---

## 🛡️ Production Engineering Troubleshooting Log

### 1. Subsystem Hypervisor Deadlock Recovery
* **Anomalous Footprint:** Execution of file utilities failed with a critical `-bash: /usr/bin/nano: Input/output error` and catastrophic `E_UNEXPECTED` exception window codes, dropping the kernel runtime storage layer into absolute safe *Read-Only* status.
* **Remediation Strategy:** Discovered a hard synchronized deadlock inside the background Windows Subsystem for Linux (WSL) orchestrator. Elevated administrative host parameters were forced from the Windows container terminal to cycle the core daemon:
  ```powershell
  # Executed via elevated Administrator context to recycle hypervisor runtime
  net stop LxssManager ; net start LxssManager
  ```
  This cold-cycle operation successfully unmounted frozen file-locks and restored clean read-write mounting capabilities to the active Linux storage targets.

### 2. Absolute Path Traversal & Login Shell Boundaries
* **Anomalous Footprint:** Switching execution contexts via `su - teammate` returned persistent `cat: ~/report.txt: No such file or directory` permission denials during shared resource evaluation.
* **Remediation Strategy:** Analyzed the login shell flags and verified that the tilde (`~`) character was resolving relatively against the destination account's pristine home directory instead of the hosting project path. Restructured the pipeline scripts to enforce **Absolute Path Resolution**:
  ```bash
  # Bypassed relative environment drift using explicit mapping
  cat /home/hisoka/devops-journey/projects/level2-practice/admin-toolkit/report.txt
  ```
  This explicit declaration systematically satisfied the kernel path lookup routines, ensuring stable validation across the cross-account infrastructure.

---

## 📊 Deployment Execution Checklist
- [x] Provision isolated Mono-Repo structural directory layout.
- [x] Configure explicit path traversal bit allocation (`o+x`) across parent directory chains.
- [x] Validate zero-disk-footprint piping and pattern matching operations via `grep`.
- [x] Hardcode recursive directory purges post-test execution to eliminate resource drift.

