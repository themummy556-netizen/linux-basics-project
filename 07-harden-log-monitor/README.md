# 07 - Harden a Bash Log Monitor on WSL

I built a small Bash log monitor and hardened it step by step on Ubuntu (WSL).
It counts WARN and ERROR lines in a log file, writes a report, and runs by itself.
This project was built with NextWork Create.

## What is inside

- `scripts/log-monitor.sh` - counts WARN and ERROR lines and writes a report
- `config/log-monitor.service` - runs the script as a restricted user
- `config/log-monitor.timer` - runs the service every minute
- `config/log-monitor.path` - runs the service when the log file changes
- `config/log-monitor.logrotate` - rotates the report log
- `config/sshd-hardening.conf` - SSH key login only, no password, no root

## Run it

1. Copy the script and the config files to the paths used in the files.
2. Run `sudo systemctl daemon-reload`.
3. Run `sudo systemctl enable --now log-monitor.timer log-monitor.path`.
4. Check with `systemctl list-timers` and read the report log.

## Tools used

Bash, systemd (service, timer, path), logrotate, OpenSSH, UFW

## What I learned

- A service should run as its own user with the least permissions.
- A timer runs a job on a schedule, a path unit runs it when a file changes.
- logrotate keeps log files small.
- Test SSH key login in a second session before closing the first one.
- Turn on the firewall only after allowing port 22.

## Project Link

[NextWork project](https://nextwork.ai/hemaa/docs/48eafb87-053b-466e-bb51-aba1420abb58)
