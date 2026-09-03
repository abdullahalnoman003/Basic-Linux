# 🧭 Module 01 — Linux Fundamentals

> **Goal:** Become comfortable with the terminal, the shell, and getting help.

---

## ✅ You'll learn

- What a **shell** is and how commands are structured
- How to navigate the filesystem (`pwd`, `cd`, `ls`)
- How to get help (`man`, `--help`)
- Command chaining, wildcards, and environment variables

---

## 🐚 What is the shell?

The **shell** is a program that reads the commands you type and tells the operating system to run them.
The default shell on most Linux systems is **Bash** (Bourne Again SHell).

Think of it as a translator between **you** and **the Linux kernel**.

```
You type:  ls -la
             ↓
   Bash interprets it
             ↓
   Kernel does the work
             ↓
   Bash shows you the output
```

---

## 📂 Navigating the filesystem

The `pwd` and `cd` commands are your basic navigation tools.

```bash
pwd                 # where am I? (print working directory)
cd /                # go to the root directory
cd ~                # go to your home directory
cd ..               # go up one level (parent directory)
cd -                # go back to the previous directory
ls                  # list files
ls -l               # long format (details)
ls -a               # show hidden files (those starting with a dot)
ls -la              # both together
```

**Key directories on a Linux system** (Linux File System Hierarchy):

| Path | Purpose |
|------|---------|
| `/` | The root of the entire filesystem |
| `/home` | Users' home directories (`/home/alice`) |
| `/root` | The root user's home |
| `/etc` | System configuration files |
| `/usr` | User-installed programs & libraries |
| `/bin`, `/sbin` | Essential programs (binaries) |
| `/var` | Variable data: logs (`/var/log`), mail, caches |
| `/tmp` | Temporary files (cleared on reboot) |
| `/dev` | Device files (disks, USB, etc.) |
| `/proc` | Virtual files describing running processes |

---

## 🧠 Getting help — the most important skill

You won't memorize every command. That's normal! **Experts look things up too.**

```bash
man ls          # open the manual page for ls (press 'q' to quit)
ls --help       # quick help summary
whatis ls       # one-line description of a command
```

> 💡 Navigation inside `man`: use <kbd>↑</kbd>/<kbd>↓</kbd> or <kbd>PgUp</kbd>/<kbd>PgDn</kbd> to scroll,
> press <kbd>/</kbd> then a word to **search**, and press <kbd>q</kbd> to **quit**.

---

## 🔗 Command structure

Most commands follow the pattern:

```
command   options    arguments
   ls      -la      /etc
```

- **command** — what to run
- **options/flags** — modify behavior (`-l`, `--recursive`)
- **arguments** — what the command acts on (`/etc`)

---

## ✨ Wildcards

Wildcards let you match multiple files at once.

```bash
ls *.txt        # all files ending in .txt
ls photo?      # photo1, photo2, ... but not photo10 (single char)
ls file[12].sh  # file1.sh or file2.sh
echo *          # expands to all files in the directory
```

---

## ⛓️ Chaining commands

```bash
cmd1 && cmd2    # run cmd2 ONLY if cmd1 succeeds
cmd1 || cmd2    # run cmd2 ONLY if cmd1 fails
cmd1 ; cmd2     # run cmd2 regardless
cmd1 | cmd2     # pipe: send cmd1's output as cmd2's input
```

**The pipe `|`** is one of the most powerful ideas in Linux — it connects commands into a pipeline.

```bash
ls -la | grep txt      # list then filter for "txt"
cat file.txt | wc -l   # count the lines in a file
```

---

## 🌱 Environment variables

Environment variables store settings the shell and programs use. Important ones:

```bash
echo $HOME          # your home directory
echo $USER          # your username
echo $PATH          # directories searched for commands
echo $SHELL         # your shell
```

Set your own (only lasts for the current session):

```bash
MYVAR="hello"
echo $MYVAR         # hello
export MYVAR        # make it available to child processes
```

---

## ✏️ Try it yourself

1. Go to `/etc` and list its contents.
2. From your home directory, print the full path of the parent of the parent.
3. List only `*.conf` files in `/etc`.
4. Count how many files are in your home directory: `ls -la | wc -l`.
5. Read `man ls` and find the flag to list **human-readable** file sizes (it's `-h`).

---

## 🎯 Check your understanding

1. What does the `|` (pipe) symbol do?
2. What does `..` refer to in a path?
3. Which command shows a full manual page?
4. What is `/etc` mainly for?
5. How do you make a variable available to child processes?

<details><summary>Click for answers</summary>

1. It sends the first command's output as input to the second command (a pipeline).
2. The **parent directory** (one level up).
3. `man` (e.g. `man ls`).
4. System **configuration files**.
5. `export MYVAR`.

</details>

---

**Next → [Module 02 — Files & Directories](../02-Files-and-Directories/README.md)**
