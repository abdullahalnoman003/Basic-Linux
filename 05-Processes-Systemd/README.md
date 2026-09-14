# 🔄 Module 05 — Processes & Systemd

> **Goal:** Understand how Linux runs and manages programs — processes, jobs, services, and system boot.

---

## ✅ You'll learn

- What a process is and how to inspect it
- Manage processes (`ps`, `top`, `kill`)
- Run jobs in the background and foreground
- Control services with `systemd`
- View and manage system logs

---

## 🧵 What is a process?

A **process** is a running instance of a program. Every process has a unique **PID** (Process ID).

```bash
ps              # processes of your current terminal
ps aux          # ALL processes, with details
top             # live, updating view of processes (press q to quit)
htop            # prettier version of top (install with: sudo apt install htop)
pgrep bash      # find PIDs matching a name
```

`ps aux` shows a lot — let's read the key columns:

| Column | Meaning |
|--------|---------|
| USER | which user owns the process |
| PID | process ID |
| %CPU | CPU usage |
| %MEM | memory usage |
| STAT | process state (`S` sleeping, `R` running, `Z` zombie...) |
| COMMAND | the program |

---

## ⚡ Managing processes

```bash
kill 1234          # ask process 1234 to stop gracefully (SIGTERM)
kill -9 1234       # force kill (SIGKILL) — last resort!
pkill firefox      # kill all processes named firefox
killall chrome     # kill all processes named chrome
```

> ⚠️ `-9` does not let the program clean up. Use a normal `kill` first, `-9` only if it ignores you.

Find a process by name first, then kill it:

```bash
pgrep -a python3        # find python3 processes with command lines
# then: kill <PID from above>
```

---

## 🔀 Background & foreground

A **foreground** command runs and blocks your terminal until done. Put a `&` at the end to run it in
the **background** and get your prompt back.

```bash
sleep 30 &          # run in the background
jobs                # list background jobs
fg                  # bring the most recent background job to the foreground
fg %1               # bring job #1 to foreground
Ctrl+Z              # pause the foreground job (suspend)
bg                  # resume the paused job in the background
Ctrl+C              # terminate the foreground job
```

```
$ sleep 30 &
[1] 4567
$ jobs
[1]+  Running   sleep 30 &
$ fg
sleep 30
^C
```

---

## 🏢 Systemd — the service manager

Modern Linux uses **systemd** to start and manage services. Think of services as programs that run in
the background automatically (web servers, SSH, databases...).

```bash
systemctl status sshd        # status of a service (sshd = SSH server)
systemctl start sshd         # start it
systemctl stop sshd          # stop it
systemctl restart sshd       # restart it
systemctl enable sshd        # start it automatically at boot
systemctl disable sshd       # don't start at boot
systemctl list-units         # list loaded units/services
```

> 💡 On Ubuntu the Debug server is `ssh`, not `sshd`. Try both.

---

## 📜 Logs — `journalctl`

systemd collects logs. `journalctl` lets you read them.

```bash
journalctl                              # all logs (helps to pipe to less)
journalctl -u sshd                      # logs for one service
journalctl -f                           # follow new log entries live
journalctl --since today                # logs since midnight
```

Older-style log files live in `/var/log`:

```bash
ls /var/log
tail -f /var/log/syslog        # system messages
cat /var/log/auth.log          # login / auth events
```

---

## 💾 Useful system info commands

```bash
uname -a            # kernel info
uptime              # how long the system has been running + load
free -h             # memory usage (human readable)
df -h               # disk usage
cat /etc/os-release # distro version info
```

---

## ✏️ Try it yourself

1. Run `sleep 100` in the background with `&`, verify it with `jobs`.
2. Use `ps aux | grep sleep` to find its PID, then `kill` it.
3. Restart the SSH service with systemctl and check its logs.
4. Run `top` and identify the process using the most CPU.
5. Check available memory with `free -h`.

> ⚠️ Some commands (`systemctl start/stop`) need `sudo`.

---

## 🎯 Check your understanding

1. What does PID stand for and why does each process have one?
2. Difference between `kill` and `kill -9`?
3. What does the `&` at the end of a command do?
4. What systemd command makes a service start at boot?
5. How do you watch live system logs?

<details><summary>Click for answers</summary>

1. **Process ID** — a unique number identifying each running process.
2. `kill` sends SIGTERM (graceful); `kill -9` sends SIGKILL (forced, no cleanup).
3. Runs the command in the **background**, freeing your prompt.
4. `systemctl enable <service>`.
5. `journalctl -f` (or `tail -f` a log file).

</details>

---

**Next → [Module 06 — Text Processing](../06-Text-Processing/README.md)**
