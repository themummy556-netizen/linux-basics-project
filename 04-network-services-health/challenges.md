## Challenge 1: Ping to my own IP failed

- **Problem**: I ran `ping -c 4 172.30.161.19` and got `Destination Host Unreachable` with 100% packet loss.
- **Diagnosis**: The error came from `172.30.166.19`, which was different from the address I typed. Comparing it with the output of `hostname -I`, I found I had mistyped one digit.
- **Solution**: I ran `ping -c 4 172.30.166.19` with the correct IP and got 4 replies with 0% packet loss.
- **Lesson**: Copy the IP from `hostname -I` instead of typing it by hand, and read the error message carefully because it often points to the cause.

# Challenge 2: curl to port 631 failed

- **Problem**: I ran `curl http://localhost:631` and got `curl: (7) Failed to connect`.
- **Diagnosis**: `ss -tuln` showed nothing listening on port 631, and `sudo systemctl start cups` returned "Unit cups.service not found". The platform used Linux Mint, but my machine is Ubuntu on WSL, so CUPS was not installed.
- **Solution**: I ran `sudo apt install cups -y` and then `sudo systemctl start cups`. After that, curl returned the CUPS web page.
- **Lesson**: Check that the service exists before debugging the port, because the platform environment can differ from mine.

# Challenge 3: chmod failed on healthcheck.sh

- **Problem**: `chmod` returned "missing operand", and then "No such file or directory".
- **Diagnosis**: I ran chmod without a mode, and then used a relative path (`sysdash/healthcheck.sh`) while I was already inside the sysdash folder.
- **Solution**: From inside the sysdash folder, I ran `chmod 755 healthcheck.sh`, and `ls -l` showed `-rwxr-xr-x`.
- **Lesson**: Run `pwd` and `ls` before typing a file path.

# Challenge 4: SSH host key verification failed

- **Problem**: `ssh localhost` returned "Host key verification failed".
- **Diagnosis**: At the fingerprint prompt I typed `y`, but SSH only accepts the full word `yes`.
- **Solution**: I ran `ssh localhost` again and typed `yes`, and the connection worked.
- **Lesson**: SSH requires the full word `yes` when it asks to trust a new host.
