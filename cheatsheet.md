# Linux Cheatsheet (Projects 5 and 6)

Short notes for commands I use. If I forget a flag, I check `command --help` or `man command` (press `q` to quit).

## Files and redirects
- `ls -l` long list, `ls -a` hidden files, `ls -la` both
- `>` overwrites a file, `>>` appends to it
- `mkdir -p dir` creates a folder (no error if it exists)
- `cp source dest`, `mv source dest`

## Bash basics
- `$1` first argument, `$#` number of arguments, `$?` exit code of the last command (0 means success)
- `if [ -f file ]; then ... fi` checks that a regular file exists (`-d` checks a directory). Spaces inside `[ ]` are required.
- `for f in *.txt; do ...; done` repeats for every matching file
- Quote variables: `"$var"`

## grep
- `grep -c 'text' file` counts matching lines
- `grep -n 'text' file` shows line numbers
- `grep -F 'text' file` searches for the exact text, not a pattern

## awk
- `awk '{print $1}' file` prints the first field of each line
- `df -h / | awk 'NR==2 {print $5}'` prints field 5 of line 2 (disk usage)

## Ranking with sort and uniq
```
awk '{print $1}' access.log | sort | uniq -c | sort -nr | head
```
- `sort` must come first: `uniq -c` only counts lines that are next to each other
- `sort -nr` sorts by number, largest first

## sed
- `sed 's/old/new/'` replaces the first match in each line
- `sed 's/old/new/g'` replaces every match in each line
- `sed -i '...' file` edits the file itself. Test it on a copy first.
- `sed -E` enables extended regular expressions. Example that hides the last IP number:
```
sed -E 's/([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)[0-9]{1,3}/\1XXX/g' access.log > access-clean.log
```

## tar (the three I use)
```
tar -czf backup.tar.gz folder/        # create (c), gzip (z), file name (f)
tar -tzf backup.tar.gz                # list (t) without extracting
tar -xzf backup.tar.gz -C dest/       # extract (x) into dest/
```
- `f` is always the last letter because the file name comes right after it
- Always check that `-C` points to a separate folder, so the original is not overwritten

## Compare two folders
- `diff -qr dirA dirB` prints only differences. No output means they match (`echo $?` prints 0).
- `ls -d path1 path2` confirms which folders I really compared

## PATH and cron
- `echo "$PATH"` shows the folders Bash searches for commands
- `command -v name` shows where Bash finds a command
- Add `export PATH="$HOME/bin:$PATH"` to `~/.bashrc`, then run `source ~/.bashrc`
- `realpath file` prints the full path
- `systemctl is-active cron` should print `active`
- `EDITOR=nano crontab -e` edits my schedule, `crontab -l` shows it
- Cron line: `*/5 * * * * /full/path/script.sh` (minute, hour, day of month, month, weekday)
- Cron has a smaller environment than my terminal, so always use the full path
- On WSL, cron only runs while Ubuntu is open

## Safe habits
- Back up a script before changing it
- A backup is only trusted after a restore and a `diff`
- Read the names in a command from the shell history before pressing Enter
