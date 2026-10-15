# Project 5: Bash Scripting

Linux Level 5 project (NextWork). I learned Bash scripting from the terminal: variables, decisions, loops and arguments, then combined everything into a system report script.

## What is inside
- `scripts/`: 12 Bash scripts, from `hello.sh` to `sysreport.sh`
- `scripts/sysreport.sh`: writes a dated report (uptime, memory, disk usage with a warning, folder sizes)
- `practice/`: my test files and experiments

## Run it
    cd scripts
    ./sysreport.sh
    ./sysreport.sh <folder>

The report is saved in the folder you run the script from.

## Tools used
bash, echo, read, if/else, for, while, chmod, date, df, du, free, uptime, grep, awk, sed, cp, mkdir

## Mini challenges
- Running `./sysreport.sh` gave "Permission denied" because the script was not executable; `chmod +x sysreport.sh` fixed it.
- `cat sysreport-*.txt` said "No such file or directory" because the script had not run yet, so no report existed.
- Typing a folder path alone, like `~/devops-journey/05-bash-scripting/scripts`, gave "Is a directory" because Bash tried to run it as a command; `cd` followed by the path moves into the folder instead.

## What I learned
- Scripts can take values from outside with arguments like `$1`, so one script works on any file or folder.
- `if` lets a script choose a path, and `for` and `while` repeat work.
- A script can combine many commands into one report, like `sysreport.sh`.

## Project Link

NextWork: https://nextwork.ai/hemaa/docs/3e89a6d4-d3c1-4bfc-823b-6631e4c8b43b
