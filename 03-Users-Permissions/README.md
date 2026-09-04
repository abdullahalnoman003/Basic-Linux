# 🔐 Module 03 — Users, Groups & Permissions

> **Goal:** Control who can access what. Master users, groups, file permissions, and `sudo`.

---

## ✅ You'll learn

- What users, groups, and root are
- How to read file permissions (`rwx`, `chmod` numbers)
- Change ownership with `chown`
- Use `sudo` safely
- Set special permissions (sticky bit, setuid, setgid)

---

## 👤 Users, groups, and root

- **User** — a person (or service) that logs in. Has a home directory and an UID.
- **Group** — a collection of users to share permissions easily.
- **root** — the super-user with UID `0`. Can do anything. Use it carefully!

```bash
whoami           # current user
id               # your uid, gid, and group memberships
users            # who is logged in
groups           # groups you belong to
cat /etc/passwd  # list of system users
cat /etc/group   # list of groups
```

### Adding/removing users & groups

```bash
sudo useradd -m alice        # add user alice with a home directory (-m)
sudo passwd alice            # set alice's password
sudo userdel -r alice        # delete alice and her home (-r)
sudo groupadd developers     # new group
sudo usermod -aG developers alice   # add alice to the developers group (-a append -G group)
sudo gpasswd -d alice developers    # remove alice from the group
```

---

## 🧾 File permissions

Run `ls -l` and look at the first column:

```
-rw-r--r--  1 alice staff  1024 Aug 31 10:00 readme.txt
drwxr-xr-x  2 alice staff  4096 Aug 31 10:00 myfolder
-            ^^^^^^^^
type         permissions (rwx)
```

The permission string has **3 groups of 3** characters:

```
r  w  x     r  w  x     r  w  x
│  │  │     │  │  │     │  │  │
OWNER        GROUP       OTHERS
```

- `r` = read, `w` = write, `x` = execute
- `-` = that permission is off

So `-rw-r--r--` means: owner can **read+write**, group can **read**, others can **read**.

> 💡 The first character is the **file type**: `-` = file, `d` = directory, `l` = symlink.

---

## 🔢 Changing permissions — `chmod`

You can use **symbols** or **numbers**. Numbers (octal) are most common:

| Number | Meaning | Permissions |
|:------:|---------|-------------|
| 0 | --- | none |
| 1 | --x | execute |
| 2 | -w- | write |
| 3 | -wx | write+execute |
| 4 | r-- | read |
| 5 | r-x | read+execute |
| 6 | rw- | read+write |
| 7 | rwx | read+write+execute |

A 3-digit number sets owner, group, others:

```bash
chmod 755 script.sh     # owner rwx, group r-x, others r-x
chmod 644 readme.txt    # owner rw-, group r--, others r--
chmod 600 secret.txt    # owner rw- only — private!
```

Symbolic form is also handy:

```bash
chmod u+x script.sh     # add execute for the owner (user)
chmod g-w file.txt      # remove write for the group
chmod a+r file.txt      # add read for everyone
chmod -R 755 folder/    # recursive (-R) on a folder
```

> 💡 To run a script you need the execute bit: `chmod +x script.sh` then `./script.sh`.

---

## 👑 Changing ownership — `chown`

```bash
sudo chown alice file.txt            # change owner to alice
sudo chown alice:staff file.txt      # change owner AND group
sudo chown -R alice:staff folder/    # recursively
```

---

## 🛡️ `sudo` — temporary root power

`sudo` runs a single command **as root** with your own password. Only allowed users (in the `sudo`
group) can use it.

```bash
sudo apt update          # update package lists
sudo apt install tree    # install software
```

> ⚠️ **Security:** Try to do daily work as a **normal user**. Reserve `sudo` for administrative tasks.
> Avoid logging in as root directly.

---

## ⭐ Special permissions

- **Sticky bit** (on `/tmp`): only the owner can delete their own files inside a shared directory.
  ```bash
  chmod +t shared_dir/
  # -rwxrwxrwt  (the 't' at the end)
  ```
- **setuid** (`s` where owner-x is): runs a program with the owner's privileges (e.g. `passwd`).
- **setgid** (`s` where group-x is): files created inherit the directory's group.

---

## ✏️ Try it yourself

1. Add a new user `student` with a home directory and set a password.
2. Create a file, then make it: readable & writable only by you (`chmod 600`).
3. Make a script executable and run it.
4. Create a group `project`, add your user to it.
5. Use `ls -l` to identify the owner, group, and permissions of a file.

---

## 🎯 Check your understanding

1. What does `rwx` stand for?
2. What does `chmod 755` grant to owner/group/others?
3. What is the UID of the root user?
4. Why not work as root all the time?
5. What does the sticky bit (`t`) do?

<details><summary>Click for answers</summary>

1. Read, Write, eXecute.
2. Owner `rwx`, group `r-x`, others `r-x`.
3. `0`.
4. It's too dangerous — a mistake can break the whole system. Use `sudo` only when needed.
5. Inside a shared directory with the sticky bit, only a file's owner (or root) can delete it.

</details>

---

**Next → [Module 04 — Shell & Bash Scripting](../04-Shell-and-Bash/README.md)**
