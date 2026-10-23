# Challenges

## 1. The .ssh folder did not exist on Windows

**Problem:** I ran `ssh-keygen` in PowerShell to make a key for `monitoradmin`, but the `.ssh` folder was missing in my Windows profile.

**Diagnosis:** The key needs to be saved inside `.ssh`, and Windows had never created that folder for me.

**Solution:** I created the folder with `New-Item`, then ran `ssh-keygen -t ed25519` again. It made `wsl-monitoradmin` and `wsl-monitoradmin.pub`.

**Lesson:** Check that the folder exists before making a key. Only the `.pub` file goes to the server, never the private key.

## 2. Permission denied after locking the log folder

**Problem:** After I changed the owner and permissions of `/var/log/demo-app`, `stat` gave `Permission denied` for my normal user.

**Diagnosis:** The folder was now `750` and owned by `root:log-monitor`, so only root and the `log-monitor` group can enter it.

**Solution:** I ran `stat` with `sudo`. It showed `750` for the folder and `640` for `application.log`, as planned.

**Lesson:** Permission denied can mean the lock works. A service with least permission is like an employee with the key to one room only.

## 3. Practice files had the same names as the project files

**Problem:** My earlier practice already had `log-monitor.service`, `log-monitor.timer` and a logrotate file with the same names.

**Diagnosis:** If I wrote the new files on top, I would lose my practice work, and the old timer would keep running.

**Solution:** I stopped the old timer with `systemctl disable --now`, saved copies with the `.practice` ending, emptied the old files, and then wrote the project files.

**Lesson:** Save a copy before you replace a config file, and stop the old timer first.
