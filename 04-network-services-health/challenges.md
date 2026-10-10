## Challenge 1: Ping to my own IP failed

- **Problem**: I ran `ping -c 4 172.30.161.19` and got `Destination Host Unreachable` with 100% packet loss.
- **Diagnosis**: The error came from `172.30.166.19`, which was different from the address I typed. Comparing it with the output of `hostname -I`, I found I had mistyped one digit.
- **Solution**: I ran `ping -c 4 172.30.166.19` with the correct IP and got 4 replies with 0% packet loss.
- **Lesson**: Copy the IP from `hostname -I` instead of typing it by hand, and read the error message carefully because it often points to the cause.
