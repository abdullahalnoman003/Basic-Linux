# Lab 08 — Odd numbers from 1 to 20 (skip 13)

**Difficulty:** ⭐⭐

## Problem

Write a Bash script that prints the **odd numbers from 1 to 20**, but **skips 13**.

## Expected output

```
1
3
5
7
9
11
15
17
19
```

## Hints

- Loop with `for ((i=1; i<=20; i+=2))` to get odd numbers.
- Use `continue` to skip `13`.

---

**Solution:** [answers/lab-08-odd-numbers.sh](answers/lab-08-odd-numbers.sh)

<details><summary>Show solution</summary>

```bash
#!/bin/bash
for ((i=1; i<=20; i+=2))
do
    if (( $i == 13 )); then
        continue
    fi
    echo $i
done
```

</details>
