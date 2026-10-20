# Challenges: Project 6 (Automate Linux Logs with Cron)

Real problems I hit during this project, how I diagnosed them, and what I learned.

## 1. The guide's disk command did not fit my existing script

- **Problem:** The guide told me to replace the disk check in `sysreport.sh` with `disk_usage="$(df -h / | awk 'NR==2 {print $5}')"`. My script already used a different variable name and a number comparison.
- **Diagnosis:** I compared the guide's line with my old line: `DISK_USAGE=$(df / | grep "/" | awk '{print $5}' | sed 's/%//')`. There were two differences. First, Bash is case-sensitive, so `$DISK_USAGE` would be empty if I renamed the variable to `disk_usage`. Second, `awk` prints `1%`, and my `if [ "$DISK_USAGE" -gt 80 ]` needs a plain number, so the `%` must be removed.
- **Solution:** I backed up the script first with `cp sysreport.sh ~/linux-level-6/sysreport.sh.bak`. Then I used `DISK_USAGE="$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')"` without changing the name. I kept the `sed` part and replaced `grep` with `NR==2`. I ran `./sysreport.sh` and saw `Disk OK: Usage is at 1%.`
- **Lesson:** Do not paste guide code into a working script without comparing variable names and output formats. Back up first, then test.

## 2. The cron template used another user's path

- **Problem:** The guide's template was `*/5 * * * * /home/mintuser/bin/logwatch.sh`, but my username is `hisoka`.
- **Diagnosis:** When `crontab -e` opened, the line still contained `mintuser`. Cron would have looked for a file that does not exist, and I would not have seen an error on the screen.
- **Solution:** I ran `realpath "$HOME/bin/logwatch.sh"` and got `/home/hisoka/bin/logwatch.sh`. I replaced the path in the crontab, saved, and confirmed with `crontab -l`.
- **Lesson:** Cron has a smaller environment than my terminal, so it needs the full absolute path. Never keep a username from a template, and always check the saved crontab.

## 3. Proving that cron really ran

- **Problem:** The guide says a count of 2 or more headings proves a scheduled run. But I had already run the script manually twice (once from `~/linux-level-6` and once from `/tmp`), so a count of 2 would prove nothing.
- **Diagnosis:** `grep -c '^=== Log Watchdog:' watchdog-report.txt` returned 3. The timestamps were 05:22:33, 05:30:01 and 05:35:01.
- **Solution:** 3 headings minus 2 manual runs means at least one run came from cron. The `:01` seconds fit cron starting at the beginning of a minute, but the arithmetic is the real proof. After the test I deleted the cron line and checked with `crontab -l 2>/dev/null | grep -F 'logwatch.sh'`, which printed nothing.
- **Lesson:** Check what a number really proves. Count my own manual runs first, then compare timestamps.

## 4. `diff` stayed silent, but I compared the wrong folder

- **Problem:** In my second backup-and-restore drill (from memory), `diff -qr` printed nothing. But I had compared the original with `devops-journey-restored`, not `devops-journey-restored2`.
- **Diagnosis:** I reused a command from the shell history (up arrow). The `ls -d` check showed `/home/hisoka/devops-journey-restored/devops-journey`, and the `2` was missing.
- **Solution:** I ran `diff -qr devops-journey "$HOME/devops-journey-restored2/devops-journey"` again. It was silent, so the restored copy matched the original.
- **Lesson:** Silence can mean success, or it can mean I compared the wrong thing. Read the names in any command from history before pressing Enter, and use `ls -d` to confirm the paths.	

