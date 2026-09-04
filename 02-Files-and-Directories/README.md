# 📁 Module 02 — Files & Directories

> **Goal:** Manage files and directories confidently — create, copy, move, delete, link, archive, and inspect.

---

## ✅ You'll learn

- Create / copy / move / delete files & directories
- Read files with `cat`, `less`, `head`, `tail`
- Redirect input and output
- Hard links vs soft links
- Archive files with `tar` and `zip`
- Inspect disk usage and file types

---

## 🧱 Core file commands

```bash
touch newfile.txt        # create an empty file (or update its timestamp)
mkdir myfolder           # make a directory
mkdir -p a/b/c           # create nested directories in one go
cp source.txt dest.txt   # copy a file
cp -r folder newfolder   # copy a directory (recursive)
mv old.txt new.txt       # move or rename
rm file.txt              # remove a file
rm -r folder             # remove a directory (recursive)
rm -rf folder            # remove directory (force, recursive) — ⚠️ careful!
```

> ⚠️ **WARNING:** `rm -rf` silently deletes without confirmation and there is **no recycle bin** on the
> command line. Double-check what you type!

---

## 📖 Reading files

```bash
cat file.txt        # print the whole file
less file.txt       # page through a big file (q to quit)
head file.txt       # first 10 lines
head -n 5 file.txt  # first 5 lines
tail file.txt       # last 10 lines
tail -f log.txt     # follow a file as it grows (great for logs)
wc -l file.txt      # count lines
```

---

## 🔀 Redirection

Redirect a command's output to a file, or read a file as input.

```bash
echo "hello" > file.txt      # overwrite file.txt with "hello"
echo "world" >> file.txt     # append to file.txt
ls -la > listing.txt         # save listing to a file
cat < file.txt               # read file.txt as input
```

- `>`  — **overwrite** (create or wipe the file)
- `>>` — **append** (add to the end)
- `2>` — redirect errors
- `<`  — redirect input

---

## 🔗 Links

A **hard link** is an additional name for the *same* data on disk.

```bash
ln original.txt hardlink.txt
```

- Both names point to the exact same inode/data.
- Deleting one does **not** delete the data (the other name keeps it alive).

A **soft link (symlink)** is more like a shortcut — it points to the *path*.

```bash
ln -s /usr/bin/python3 mypython
```

```bash
# Create a file, then a symlink, then compare
echo "data" > real.txt
ln -s real.txt shortcut
ls -l          # shortcut -> real.txt (note the arrow)
cat shortcut   # data
rm real.txt
cat shortcut   # ERROR: No such file — broken link!
```

> 💡 Symlinks are used everywhere for versioned programs, e.g. `/usr/bin/python3` → `python3.11`.

---

## 🗜️ Archiving & compression

```bash
# tar (tape archive) — common on Linux
tar -cvf archive.tar folder/      # create (c), verbose (v), file (f)
tar -xvf archive.tar              # extract
tar -czvf archive.tar.gz folder/  # create + gzip-compress (z)
tar -xzvf archive.tar.gz          # extract a gzipped archive

# zip/unzip
zip -r archive.zip folder/
unzip archive.zip
```

Use `tar` with `-c` (create), `-x` (extract), `-z` (gzip), `-v` (verbose), `-f` (file).

---

## 🧭 Inspecting files & disk

```bash
file secret.bin        # what type of file is it?
du -sh folder          # disk usage (human readable) of a folder
du -sh *               # disk usage of everything in current dir
df -h                  # free disk space on all filesystems
```

---

## ✏️ Try it yourself

1. Create a folder `practice` and a file `note.txt` inside it.
2. Copy `note.txt` to `note-copy.txt`, then rename it to `final.txt`.
3. Use `echo` to append three lines to `final.txt`, then view it with `cat`.
4. Create a symlink to `final.txt` and confirm it works.
5. Archive the `practice` folder into `practice.tar.gz` and extract it into a new folder.
6. Use `du` and `df` to check disk usage.

---

## 🎯 Check your understanding

1. Difference between `>` and `>>`?
2. What's the difference between a hard link and a symlink?
3. Which `tar` options create a `.tar.gz` archive?
4. Why is `rm -rf` dangerous?
5. What does `tail -f` do?

<details><summary>Click for answers</summary>

1. `>` overwrites; `>>` appends.
2. A hard link = another name for the same data; a symlink = a shortcut to a path.
3. `-czvf` (create, gzip, verbose, file).
4. It forcefully deletes recursively with no confirmation and no recycle bin.
5. It keeps showing new lines as a file grows (useful for live logs).

</details>

---

**Next → [Module 03 — Users, Groups & Permissions](../03-Users-Permissions/README.md)**
