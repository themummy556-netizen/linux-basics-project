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
| 05 | **Bash Scripting on Linux Mint** | ✅ Completed | Variables, Conditionals, Loops, Arguments, Report Scripting | [Project 5 Docs](05-bash-scripting/README.md) |
| 06 | **Automate Linux Logs with Cron** | ✅ Completed | Log Analysis (`awk`, `sed`), Backup & Restore (`tar`), `PATH`, Cron Scheduling | [Project 6 Docs](06-automate-logs-cron/README.md) |

---

## 🛠️ Combined Engineering Competencies

### 1. Identity & Access Management
- **User & Group Administration:** Created and managed user accounts and groups (`useradd`, `chgrp`, `deluser`) to enforce logical boundaries between users.
- **File Permission Control:** Applied symbolic and numeric permission modes (`chmod 750`, `chmod 700`) to enforce the Principle of Least Privilege (PoLP).

### 2. Shell Scripting & Data Processing
- **Pipes & Redirection:** Combined multi-stage commands using pipes (`|`) and redirection (`>`, `>>`) to process and save command output.
- **Pattern Matching:** Used `grep` to filter and search text across files and command output.
- **Shell Scripting:** Wrote reusable Bash scripts (`sysinfo.sh`, `census.sh`) that automate system reporting tasks.
- **Script Arguments & Reports:** Wrote a `sysreport.sh` script that uses variables, `if/else`, `for` loops and `$1` to write a dated system report.

### 3. Process & Package Management
- Monitored and managed running processes (`ps`, `kill`, `jobs`).
- Installed and managed software packages using standard Linux package managers (`apt`).

### 4. Networking, Services & System Health

- **Network Diagnostics:** Checked connectivity and inspected network responses using `ping`, `curl`, and `hostname -I`.
- **Service Management:** Managed system services with `systemctl` (start, stop, status) and connected to a local SSH service.
- **Health Checks:** Wrote a `healthcheck.sh` script that reports the state of the system and its services.

### 5. Log Analysis, Backup & Automation
- **Log Analysis:** Used `awk`, `sort`, `uniq -c` and `grep -c` to rank IP addresses and count status codes in a 50-line access log.
- **Safe Text Editing:** Used `sed` to replace text and anonymize IP addresses, and tested `sed -i` on a copy to keep the original log safe.
- **Backup & Restore:** Created gzip-compressed archives with `tar`, restored them into a separate folder and verified them with `diff -qr`.
- **Automation:** Built a Log Watchdog script, installed it in `~/bin` on the `PATH`, and scheduled it with `cron` using an absolute path.

---

## 🧩 Troubleshooting Log

Real issues encountered and resolved during these projects, documented as **Problem → Diagnosis → Solution**.

| Issue | Diagnosis | Solution |
|---|---|---|
| File not found when running `cat` on a report file | File was created in a different working directory than expected | Used `find` and `pwd` to locate the correct path, then verified with absolute paths |
| `ping` to my own IP returned "Destination Host Unreachable" | I had mistyped one digit of the IP | Copied the IP from `hostname -I` instead of typing it |
| `curl` to port 631 returned "Connection refused" | CUPS (the printing service that listens on port 631) was not installed on my system | Installed it with `apt install cups` and started it with `systemctl` |
| `chmod` returned "missing operand" and "No such file or directory" | Missing mode, then a relative path used from inside the same folder | Ran `chmod 755 healthcheck.sh` from the right folder after `pwd` and `ls` |
| `ssh localhost` returned "Host key verification failed" | Typed `y` instead of the full word `yes` | Ran it again and typed `yes` |
| `./sysreport.sh` returned "Permission denied" | The script was not executable | Ran `chmod +x sysreport.sh` |
| `cat sysreport-*.txt` returned "No such file or directory" | The script had not run yet, so no report existed | Ran the script first, then `cat` |
| Typing a folder path alone returned "Is a directory" | Bash tried to run the path as a command | Used `cd` followed by the path |
| The guide's disk command used `disk_usage` and kept the `%` | Bash variable names are case-sensitive, and my `-gt 80` check needs a plain number | Kept `DISK_USAGE`, removed the `%` with `sed`, and backed up the script first |
| The guide's cron line used `/home/mintuser/...` | It was another user's home path, so cron would not find my script | Used `realpath` to get my real path and checked it with `crontab -l` |
| A count of 2 report headings did not prove cron ran | I had already run the script manually twice | Counted 3 headings, so at least one run came from cron, and checked the timestamps |
| `diff -qr` printed nothing after a restore | I compared against `restored` instead of `restored2` because I reused a command from history | Read the names in the command, confirmed paths with `ls -d`, and ran `diff` again |

*(This table grows as more projects are completed.)*

---

## 👤 Maintained by

**Ibrahim Ahmed El Sayed**
Aspiring Cloud & DevOps Engineer | Practicing Linux systems administration, version control workflows, and AWS infrastructure fundamentals.
