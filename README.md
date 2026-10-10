# AWS Cloud Engineering Journey: Core Linux & Git Portfolio

Welcome to my centralized **Mono-Repo** documenting my progression from foundational system administration to cloud infrastructure readiness. This repository tracks **6 consecutive Linux projects** designed to build deep competencies before transitioning to advanced AWS architectures.

---

## 📊 Project Registry (6-Phase Roadmap)

| Phase | Project | Status | Core Technical Domain | Documentation |
|---|---|---|---|---|
| 01 | **Linux Basics for DevOps Beginners** | ✅ Completed | CLI Navigation, Backup Routines, Text Filtering | [Project 1 Docs](01-linux-basics/README.md) |
| 02 | **Linux Level 2: Control Your System** | ✅ Completed | File Permissions (`750`/`700`), Users & Groups, Pipes, Redirection | [Project 2 Docs](02-control-your-system/admin-toolkit/README.md) |
| 03 | **Linux Level 3: Software and Processes** | ✅ Completed | Package Management, Process Control, System Monitoring | [Project 3 Docs](03-software-and-processes/admin-toolkit/README.md) |
| 04 | **Linux Level 4: Network, Services & Health** | ✅ Completed | Networking Tools, systemd Services, System Health Checks | [Project 4 Docs](04-network-services-health/README.md) |
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
| `ping` to my own IP returned "Destination Host Unreachable" | I had mistyped one digit of the IP | Copied the IP from `hostname -I` instead of typing it |
| `curl` to port 631 returned "Connection refused" | CUPS was not installed on Ubuntu WSL (the platform used Linux Mint) | Installed it with `apt install cups` and started it with `systemctl` |
| `chmod` returned "missing operand" and "No such file or directory" | Missing mode, then a relative path used from inside the same folder | Ran `chmod 755 healthcheck.sh` from the right folder after `pwd` and `ls` |
| `ssh localhost` returned "Host key verification failed" | Typed `y` instead of the full word `yes` | Ran it again and typed `yes` |

*(This table grows as more projects are completed.)*

---

## 👤 Maintained by

**Ibrahim Ahmed El Sayed Mohamed**
Aspiring Cloud & DevOps Engineer | Practicing Linux systems administration, version control workflows, and AWS infrastructure fundamentals.
