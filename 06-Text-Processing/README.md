# ✂️ Module 06 — Text Processing

> **Goal:** Master the text-manipulation tools every Linux expert uses daily — `grep`, `sed`, `awk`, and friends.

These tools are the engine behind Linux's "everything is a file, process text with small tools" philosophy.

---

## ✅ You'll learn

- Search text with `grep`
- Stream-edit text with `sed`
- Process and format text with `awk`
- Sort, count, and transform with `sort`, `uniq`, `wc`, `cut`, `tr`

---

## 🔍 `grep` — search

`grep` **searches** for text across files or input.

```bash
grep "error" app.log          # lines containing "error"
grep -i "error" app.log       # case-insensitive
grep -r "TODO" src/           # search recursively through a folder
grep -w "root" file           # whole-word only (not "uproot")
grep -c "error" file          # count matching lines
grep -n "error" file          # show line numbers
grep -v "debug" file          # show lines that do NOT match (invert)
grep -l "index" *.html        # list only filenames with a match
```

Combine with a pipe for powerful filtering:

```bash
ps aux | grep python3        # find python processes
history | grep ssh           # find previous ssh commands
dmesg | grep -i usb          # find USB-related kernel messages
```

You can even use **regular expressions** (regex) for advanced patterns:

```
grep "^ERROR" log            # lines STARTING with ERROR
grep "foo$" file             # lines ENDING with foo
grep "colou?r" file          # color or colour (u optional)
grep "[0-9]\{3\}" file       # three digits in a row
grep -E "cat|dog" file       # extended regex: cat OR dog
```

---

## ✂️ `sed` — stream editor

`sed` edits text **on the fly** and prints the result to the screen (it does not change the file unless
you use `-i`).

```bash
sed 's/old/new/' file        # replace first "old" on each line
sed 's/old/new/g' file       # replace ALL "old" (g = global)
sed -i 's/old/new/g' file    # edit the file in place (careful!)
sed '5d' file                # delete line 5
sed '1,10d' file             # delete lines 1-10
sed 's/^/  /' file           # indent: add 2 spaces to start of each line
sed -n '1,5p' file           # print only lines 1-5
```

> ⚠️ Without `-i`, `sed` only prints — the file is unchanged. Add `-i` only when you're sure.

---

## 🌀 `awk` — text processing language

`awk` is a tiny programming language for processing **columns** of text. By default it splits lines on
whitespace into fields: `$1`, `$2`, `$3`...

```bash
awk '{print $1}' file            # print first field (column) of every line
awk '{print $1, $3}' file        # print fields 1 and 3
awk '{print NF}' file           # print number of fields per line
awk '/error/ {print $0}' file   # print lines containing "error"
awk '$3 > 100 {print $1}' file  # where 3rd field > 100, print 1st field
awk 'NR==1 {print}' file        # print only line 1 (NR = record/line number)
```

Practical example — extract usernames from `/etc/passwd` (colon-separated, field 1):

```bash
awk -F: '{print $1}' /etc/passwd    # -F sets the field separator to ':'
```

---

## 🔤 More text tools

```bash
sort file.txt              # sort lines alphabetically
sort -n file.txt           # numeric sort
sort -r file.txt           # reverse order
uniq file.txt              # remove consecutive duplicate lines
uniq -c file.txt           # count each unique line
wc -l file.txt             # count lines
wc -w file.txt             # count words
wc -c file.txt             # count bytes
cut -d: -f1 file.txt       # cut: field 1, delimited by ':'
cut -c1-5 file.txt         # cut: first 5 characters
tr 'a-z' 'A-Z' < file.txt  # translate lowercase to uppercase
```

A classic pipeline "how many times does each IP appear in a log?"

```bash
grep -oE "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+" access.log | sort | uniq -c | sort -rn
```

---

## ✏️ Try it yourself

1. Search `/var/log/syslog` for lines containing `error` (case-insensitive).
2. Use `sed` to replace every space with a dash in an example file (print only).
3. With `awk`, print the second word of every line from a made-up file.
4. Count how many lines are in `/etc/passwd` with `wc -l`.
5. Sort the usernames from `/etc/passwd` alphabetically.

Create a small sample file first if you need one:

```bash
echo -e "apple 5\nbanana 2\ncherry 9" > fruits.txt
awk '{print $1}' fruits.txt        # apple banana cherry
sort -k2 -n fruits.txt            # sort by the 2nd column numerically
```

---

## 🎯 Check your understanding

1. What is the difference between `grep` and `sed`?
2. What does `-i` do in `sed`?
3. In `awk`, what does `$2` refer to?
4. What does `uniq -c` show?
5. Name one use of a `grep` + pipe combination.

<details><summary>Click for answers</summary>

1. `grep` *searches for* lines; `sed` *modifies/edits* text streams.
2. Applies the edit **in place** to the file (otherwise it only prints).
3. The **second field/column** of the line.
4. Each unique line with a count of how many times it appeared (consecutively).
5. `ps aux | grep myservice`, `history | grep ssh`, etc.

</details>

---

**Next → [Module 07 — Networking](../07-Networking/README.md)**
