# 🚀 Module 00 — Getting Started

> **Goal:** Get Linux running on your machine and take your first steps in the terminal.

---

## ✅ You'll learn

- What Linux is and why it matters
- How to get Linux running (WSL / VM / cloud)
- How to open a terminal
- The very first commands every beginner should try

---

## 🤔 What is Linux?

**Linux** is an open-source *operating system kernel* created by Linus Torvalds in 1991. When people say
"Linux", they usually mean a **Linux distribution** (short: **distro**) — the kernel plus a set of tools
and a package manager.

Some popular distros:

- **Ubuntu** / **Debian** — beginner-friendly, huge community *(we focus on these)*
- **Fedora** / **CentOS** / **RHEL** — popular on enterprise servers *(uses `dnf`, not `apt`)*
- **Arch Linux** — advanced, you build everything yourself
- **Kali Linux** — for security testing / penetration testing

> 🐧 **Fun fact:** Linux powers the vast majority of the internet's servers, most
> smartphones (Android), supercomputers, cloud infrastructure, and embedded devices. Learning it is a
> superpower.

---

## 🛠️ Step 1 — Get Linux on your machine

Choose **one** of the options below.

### Option A: WSL (Windows Subsystem for Linux) — easiest for Windows users

WSL lets you run a real Ubuntu directly inside Windows, without a virtual machine.

1. Open **PowerShell** as administrator and run:
   ```powershell
   wsl --install
   ```
2. Restart your computer when prompted.
3. Open the **Ubuntu** app from the Start Menu.
4. Set up a username and password when asked.

You now have a full Linux terminal!

### Option B: Virtual Machine (VirtualBox)

A VM runs Linux inside a window on your existing OS — safe to experiment in.

1. Download & install [VirtualBox](https://www.virtualbox.org/).
2. Download the [Ubuntu Desktop ISO](https://ubuntu.com/download/desktop).
3. In VirtualBox: **New →** name it → pick the ISO → allocate RAM/disk → **Start**.
4. Follow the Ubuntu installer on screen.

### Option C: Cloud VM (for Modules 07–09 especially)

Free cloud tiers let you create a real internet-facing Linux server — perfect for networking & security.

- [AWS Free Tier](https://aws.amazon.com/free/)
- [Google Cloud free tier](https://cloud.google.com/free)
- [DigitalOcean](https://www.digitalocean.com/) (cheap droplets)

Choose an **Ubuntu** image when creating the instance and connect via **SSH** (you'll learn SSH in Module 07).

---

## 💻 Step 2 — Open a terminal

A **terminal** (also called a command-line interface, or **CLI**) is where you type text commands.

- **WSL / Linux:** open the **Terminal** app, or press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>T</kbd>
- **macOS:** open **Terminal** (but this guide targets Linux/Ubuntu)

The prompt often looks like this:

```
user@hostname:~$
```

- `user` → your username
- `hostname` → your machine's name
- `~` → your current directory (home)
- `$` → you are a normal user (a `#` would mean **root**, the super-admin)

---

## 🧪 Your very first commands

Type each of these and press **Enter**. Try to understand what they do.

```bash
echo "Hello World!"        # print something to the screen
whoami                     # who am I (your username)
pwd                        # print working directory (where am I?)
ls                         # list files in the current folder
ls -la                     # list with details and hidden files
date                       # current date and time
uname -a                   # Linux kernel / system info
```

**Expected-ish output:**

```
Hello World!
user
/home/user
Desktop  Documents  Downloads
total 60
drwxr-xr-x ...
Sat Aug 31 10:15:00 UTC 2026
Linux hostname 5.15.0 ... x86_64 GNU/Linux
```

> 💡 Your exact numbers will differ — that's fine. The point is the *pattern* of input → output.

---

## ✏️ Try it yourself

1. Print your username using `whoami`.
2. Find out what directory you're currently in with `pwd`.
3. List (with details) everything in your home directory: `ls -la`.
4. Print `"I love Linux"` to the screen with `echo`.

**When you're done, move on to [Module 01 — Linux Fundamentals](../01-Linux-Fundamentals/README.md).**

---

## 🎯 Check your understanding

1. What does the `$` at the end of the prompt mean?
2. What does `~` stand for in Linux?
3. What does `pwd` print?
4. Name one way a Windows user can run real Linux.
5. Is Ubuntu an operating system, a kernel, or a distribution?

<details><summary>Click for answers</summary>

1. You are a normal (non-root) user. `#` means root.
2. Your **home directory** (e.g. `/home/yourname`).
3. The **present working directory** — where you currently are.
4. WSL, a Virtual Machine, or a cloud server.
5. A **distribution** (its kernel is Linux).

</details>
