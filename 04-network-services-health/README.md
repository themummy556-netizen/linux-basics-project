# Project 4: Network, Services and Health

Linux Level 4 project (NextWork). I explored networking, services and system health from the terminal, then automated it in a bash script.

## What is inside
- `sysdash/healthcheck.sh`: prints a health report (uptime, memory, disk, top 5 processes, network check, SSH status, listening ports)
- `sysdash/health-report.txt`: a saved report
- `challenges.md`: problems I hit and how I fixed them

## Run it
    cd sysdash
    ./healthcheck.sh

## Tools used
curl, ss, systemctl, journalctl, df, du, lsblk, free, uptime, ssh

## Mini challenges
- `curl -I` on GitHub vs Google: server is `github.com` vs `gws`; both are text/html, but charset differs (utf-8 vs ISO-8859-1).
- Curling closed ports gives "Connection refused"; port 53 gives "Empty reply" because it speaks DNS, not HTTP.
- Stopping cups closed port 631; starting it brought the port back.
- Found the biggest items in home with `du -sh ~/* | sort -h | tail -5`.
- Connected to my own machine with `ssh localhost`.

## What I learned
- A port is a numbered door a service listens on.
- A service (daemon) runs in the background and systemctl controls it.
- "Connection refused" means nothing is listening on that port.
- A script can combine many commands into one report.
