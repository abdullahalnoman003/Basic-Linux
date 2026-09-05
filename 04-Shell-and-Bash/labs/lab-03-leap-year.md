# Lab 03 — Leap Year check

**Difficulty:** ⭐⭐

## Problem

Write a Bash script that:
1. Reads one or more years separated by spaces.
2. For each year, prints whether it is a **leap year** or **not**.

## Rules

A year is a leap year if:
- It is divisible by **400**, OR
- It is divisible by **4** AND **not** divisible by 100.

## Example

```
Enter years separated by space: 2000 1900 2024 2025
2000 is a Leap Year
1900 is not a Leap Year
2024 is a Leap Year
2025 is not a Leap Year
```

## Hints

- Loop over the array with `for y in "${year[@]}"`.
- Use `(( ))` with the modulus operator `%`.

---

**Solution:** [answers/lab-03-leap-year.sh](answers/lab-03-leap-year.sh)

<details><summary>Show solution</summary>

```bash
#!/bin/bash
read -p "Enter years separated by space: " -a year
for y in "${year[@]}"
do
    if (( (y % 400 == 0) || (y % 4 == 0 && y % 100 != 0) ))
    then
        echo "$y is a Leap Year"
    else
        echo "$y is not a Leap Year"
    fi
done
```

</details>
