# Project 6: Automate Linux Logs with Cron

Linux Level 6 project (NextWork). I turned a simulated website log into traffic and error reports with `awk`, `sed` and `sort`, backed it up with `tar` and `gzip`, and built a Log Watchdog script that runs by name from any directory and on a schedule with cron.

## What is inside
- `scripts/make-log.sh`: generates `access.log` with 50 fake web requests
- `scripts/logwatch.sh`: the Log Watchdog; appends a timestamped summary (total requests, 404 and 500 counts, top 3 IPs) to `watchdog-report.txt`
- `practice/`: the logs and the report: `access.log`, `access-edit.log` (copy for the `sed -i` test), `access-clean.log` (IPs anonymized) and `watchdog-report.txt`
- `challenges.md`: 4 real problems with diagnosis, solution and lesson
- `../05-bash-scripting/scripts/sysreport.sh`: its disk check now uses a shorter `awk` command

## Run it
    mkdir -p ~/linux-level-6
    cd scripts
    ./make-log.sh
    ./logwatch.sh

Both scripts use `$HOME/linux-level-6` as their workspace, so that folder must exist. The report is appended to `~/linux-level-6/watchdog-report.txt` on every run.

## Tools used
awk, sed, sort, uniq, grep, wc, head, tar, gzip, diff, cp, mkdir, chmod, date, realpath, crontab, cron, PATH, export

## Mini challenges
- The guide's disk line used `disk_usage` and kept the `%`, which would break my `-gt 80` check; I kept `DISK_USAGE` and removed the `%` with `sed`.
- The guide's cron line used another user's home path; I used `realpath` to get mine.
- My report already had 2 manual runs, so a count of 2 proved nothing; 3 headings proved at least one cron run.
- `diff` was silent but I had compared the wrong restore folder; `ls -d` showed the missing `2`.

More details are in `challenges.md`.

## What I learned
- `awk` picks fields by position (`$1` is the IP, `$4` the status), and `sort | uniq -c | sort -nr` ranks them. `sort` must come first because `uniq` only counts lines that are next to each other.
- `sed` replaces text. The `g` flag replaces every match in a line, and `-i` edits the file itself, so I test it on a copy first.
- A backup is only trusted after a restore: `tar -czf`, `tar -tzf`, `tar -xzf -C`, then `diff -qr`.
- `PATH` is the list of folders Bash searches, so a script in `~/bin` runs by name from anywhere. Cron has a smaller environment, so it needs the full path.

## Project Link

NextWork: https://nextwork.ai/hemaa/docs/cd38fea0-56b0-4b7f-8d30-428b5fcd8d72
