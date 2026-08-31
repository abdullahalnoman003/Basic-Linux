<div align="center">

# 🐧 Basic Linux — Learn Linux From Scratch To Advanced

**A free, open-source, hands-on guide to becoming a Linux expert.**

Read a little, practice a lot, and level up module by module.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Contributions Welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)](CONTRIBUTING.md)

</div>

---

## 👋 What is this?

**Basic Linux** is a structured, beginner-friendly curriculum that takes you from **complete beginner**
(who has never opened a terminal) all the way to **advanced Linux administration & scripting**.

Unlike a dry reference manual, this repository is built around a simple idea:

> **You learn Linux by *doing*, not by reading.** Every module explains a concept, shows the commands,
> and then asks you to **try it yourself** with practice labs and real projects.

Everything is free, open source, and ready for anyone in the world to use, learn from, and contribute to.

---

## 🎯 Who is this for?

| Audience | Perfect for |
|----------|-------------|
| **Absolute beginners** | Anyone who has never used the Linux terminal before |
| **Students** | Coursework, assignments, and lab practice (bash scripting, OS concepts) |
| **Developers** | Making the terminal a daily productivity tool |
| **Job seekers** | Preparing for DevOps, Cloud, SysAdmin, and Cybersecurity roles |
| **Anyone curious** | People who want to understand how modern servers actually work |

No prior experience needed — just a computer, curiosity, and a willingness to practice.

---

## 🗺️ The Learning Roadmap

The whole journey is split into **11 modules + final projects**. Each module builds on the previous one,
so follow them **in order**.

| Module | Topic | What you'll be able to do |
|:------:|-------|---------------------------|
| [00](00-Getting-Started/README.md) | 🚀 Getting Started | Install Linux / set up a practice machine, open a terminal |
| [01](01-Linux-Fundamentals/README.md) | 🧭 Linux Fundamentals | Navigate the CLI, understand the shell, run & get help with commands |
| [02](02-Files-and-Directories/README.md) | 📁 Files & Directories | Manage files, directories, links, archives, and disk usage |
| [03](03-Users-Permissions/README.md) | 🔐 Users & Permissions | Manage accounts, groups, file permissions, `sudo` |
| [04](04-Shell-and-Bash/README.md) | ⚙️ Shell & Bash Scripting | Write real scripts: variables, conditionals, loops, functions |
| [05](05-Processes-Systemd/README.md) | 🔄 Processes & Systemd | Manage processes, jobs, services, and boot behavior |
| [06](06-Text-Processing/README.md) | ✂️ Text Processing | Master `grep`, `sed`, `awk`, and text streams |
| [07](07-Networking/README.md) | 🌐 Networking | IP, DNS, SSH, firewalls, and remote administration |
| [08](08-Automation/README.md) | ⏰ Automation | Automate tasks with `cron`, `systemd timers`, and scripts |
| [09](09-Security/README.md) | 🛡️ Security & Hardening | Secure users, SSH, firewalls, logs, and permissions |
| [10](10-Advanced/README.md) | 🧠 Advanced Topics | Vim, version control, containers, performance, and more |
| [projects](projects/README.md) | 🛠️ Final Projects | Six real-world projects to prove you're expert-level |

> 💡 **Suggested pace:** 1-2 modules per week. Read, then **type every command yourself**.
> Muscle memory matters more than memorization.

---

## 🛠️ How to practice (pick an option)

You don't need a dedicated machine — pick the easiest option for you:

1. **Ubuntu on Windows (WSL)** — Recommended for Windows users.
   ```powershell
   wsl --install
   ```
   Then open the `Ubuntu` app from the Start Menu.

2. **Virtual Machine** — Install [VirtualBox](https://www.virtualbox.org/) or VMware, then run an
   [Ubuntu ISO](https://ubuntu.com/download/desktop) inside it. Great for system-level experiments.

3. **Dual-boot / main OS** — Install Ubuntu on real hardware for the full experience.

4. **Cloud / online** — For advanced modules (networking, security), a free tiny cloud VM
   (AWS Free Tier, Google Cloud free tier, DigitalOcean, etc.) is extremely useful.

> ⚠️ **Tip:** Anything you type in a terminal can affect the system. For testing, prefer WSL or a VM
> over your main daily-driver machine.

---

## 📚 How to use each module

Every module has the same friendly structure:

```
module-folder/
├── README.md          ← The guide: concepts, commands, explanations
└── labs/              ← Practice labs with instructions & solutions
    └── answers/       ← Example solutions to check yourself
```

Within each `README.md` you'll find:

- ✅ **"You'll learn"** — the goals of the module
- 🛠️ **Explanations** with working commands and expected output
- ✏️ **"Try it yourself"** — quick exercises
- 🏗️ **Labs** — longer practice problems with honest difficulty ratings
- 🎯 **"Check your understanding"** — quiz-style questions (answers included)

---

## 💻 Shell scripting quick start

The heart of advanced Linux is **shell scripting**. Here are four tiny real examples to show where
you're headed — don't worry if they don't all make sense yet. By **Module 04** they will!

```bash
#!/bin/bash
# Print "Hello World"
echo "Hello World"
```

```bash
#!/bin/bash
# Sum numbers 1..N  (this ships in the repo as labs/sum.sh)
read -p "Enter a limit: " n
sum=0
for ((i=1; i<=n; i++)); do
  sum=$((sum+i))
done
echo "Sum from 1 to $n is: $sum"
```

```bash
#!/bin/bash
# Find the largest of three numbers
read -p "Enter a: " a; read -p "Enter b: " b; read -p "Enter c: " c
if (( a>b && a>c )); then echo "$a is largest"
elif (( b>a && b>c )); then echo "$b is largest"
else echo "$c is largest"; fi
```

```bash
#!/bin/bash
# Average a list of numbers from the command line
arr=("$@")
sum=0
for n in "${arr[@]}"; do sum=$((sum+n)); done
echo "Average = $((sum / ${#arr[@]}))"
```

Run any script with:

```bash
chmod +x script.sh   # make it executable
./script.sh          # run it
```

> 📁 The original practice problems that started this repo live in
> [04-Shell-and-Bash/labs](04-Shell-and-Bash/labs/) — they are now official labs in the curriculum.

---

## 🏆 What "expert" looks like (your finish line)

By the end of this curriculum you should be able to:

- ✅ Navigate and manage a Linux system entirely from the terminal
- ✅ Write robust Bash scripts using variables, loops, conditionals, functions, and error handling
- ✅ Master `grep`, `sed`, and `awk` for powerful text processing
- ✅ Manage users, permissions, and `sudo` securely
- ✅ Control processes, services, and system boot with `systemd`
- ✅ Configure networking, SSH, and a firewall
- ✅ Automate maintenance with `cron` and systemd timers
- ✅ Harden a server against common attacks
- ✅ Work confidently with the tools professionals use every day

These skills directly apply to **DevOps, Cloud Engineering (AWS/GCP/Azure), SysAdmin, and Cybersecurity**
careers — and they're the foundation of your **final projects**.

---

## 📂 Repository layout

```
Basic-Linux/
├── README.md                 ← You are here (start here)
├── LICENSE                   ← MIT open-source license
├── CONTRIBUTING.md           ← How to help improve this repo
├── 00-Getting-Started/       ← Install Linux, first steps
├── 01-Linux-Fundamentals/    ← The terminal, shell, help system
├── 02-Files-and-Directories/ ← Files, links, archives, disk usage
├── 03-Users-Permissions/     ← Users, groups, permissions, sudo
├── 04-Shell-and-Bash/        ← Bash scripting (many labs!)
├── 05-Processes-Systemd/     ← Processes, jobs, services
├── 06-Text-Processing/       ← grep, sed, awk
├── 07-Networking/            ← IP, DNS, SSH, firewall
├── 08-Automation/            ← cron, systemd timers
├── 09-Security/              ← Hardening, logs, security
├── 10-Advanced/              ← Vim, Git, containers, more
└── projects/                 ← Final projects to prove mastery
```

---

## 🤝 Contributing

This project is **open source** and depends on community help. Found an error? Have a better example?
Want to add a lab? Please read [CONTRIBUTING.md](CONTRIBUTING.md) and open a pull request!

- Report bugs / confusing sections in [Issues](https://github.com/anomalyco/opencode/issues)
- Improvements, fixes, translations, and new labs are all welcome

---

## 📄 License

Distributed under the [MIT License](LICENSE). Free to use, modify, and share — just keep the
attribution.

---

<div align="center">

**Happy learning! 🐧 — Fork it, star it, share it, and let's make Linux accessible to everyone.**

</div>
