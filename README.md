# AWS Cloud Engineering Journey: Core Linux & Git Portfolio

Welcome to my centralized **Mono-Repo** documenting my progression from foundational system administration to cloud infrastructure readiness. This repository tracks **6 consecutive Linux projects** designed to build deep competencies before transitioning to advanced AWS architectures.

---

## 📊 Project Registry (6-Phase Roadmap)

| Phase | Project | Status | Core Technical Domain | Documentation |
|---|---|---|---|---|
| 01 | **Linux Basics for DevOps Beginners** | ✅ Completed | CLI Navigation, Backup Routines, Text Filtering | [Project 1 Docs](./projects/level1-practice/README.md) |
| 02 | **Linux Level 2: Control Your System** | ✅ Completed | File Permissions (`750`/`700`), Users & Groups, Pipes, Redirection | [Project 2 Docs](./projects/level2-practice/README.md) |
| 03 | **Linux Level 3: Software and Processes** | ✅ Completed | Package Management, Process Control, System Monitoring | [Project 3 Docs](./projects/level3-practice/README.md) |
| 04 | **Linux Level 4: Network, Services & Health** | ⏳ Pending | Networking Tools, systemd Services, System Health Checks | `In Development` |
| 05 | **Bash Scripting on Linux Mint** | ⏳ Pending | Variables, Conditionals, Loops, Functions | `In Development` |
| 06 | **Automate Linux Logs with Cron** | ⏳ Pending | Cron Jobs, Log Automation, Scheduled Tasks | `In Development` |

---

## 🛠️ Combined Engineering Competencies

### 1. Identity & Access Management
- **User & Group Administration:** Created and managed user accounts and groups (`useradd`, `chgrp`, `deluser`) to enforce logical boundaries between users.
- **File Permission Control:** Applied symbolic and numeric permission modes (`chmod 750`, `chmod 700`) to enforce the Principle of Least Privilege (PoLP).

### 2. Shell Scripting & Data Processing
- **Pipes & Redirection:** Combined multi-stage commands using pipes (`|`) and redirection (`>`, `>>`) to process and save command output.
- **Pattern Matching:** Used `grep` to filter and search text across files and command output.
- **Shell Scripting:** Wrote reusable Bash scripts (`sysinfo.sh`, `census.sh`) that automate system reporting tasks.

### 3. Process & Package Management
- Monitored and managed running processes (`ps`, `kill`, `jobs`).
- Installed and managed software packages using standard Linux package managers (`apt`).

---

## 🧩 Troubleshooting Log

Real issues encountered and resolved during these projects, documented as **Problem → Diagnosis → Solution**.

| Issue | Diagnosis | Solution |
|---|---|---|
| File not found when running `cat` on a report file | File was created in a different working directory than expected | Used `find` and `pwd` to locate the correct path, then verified with absolute paths |

*(This table grows as more projects are completed.)*

---

## 👤 Maintained by

**Ibrahim Ahmed El Sayed Mohamed**
Aspiring Cloud & DevOps Engineer | Practicing Linux systems administration, version control workflows, and AWS infrastructure fundamentals.
