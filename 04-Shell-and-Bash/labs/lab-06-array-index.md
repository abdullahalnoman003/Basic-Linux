# Lab 06 — Access specific array indexes

**Difficulty:** ⭐

## Problem

Write a Bash script that:
1. Reads **5 values** into an array.
2. Prints the values at indexes **1**, **2**, and **4**.

## Example

```
Enter 5 values:
10 20 30 40 50
Index 1 = 20
Index 2 = 30
Index 4 = 50
```

> Arrays in Bash are **0-indexed**: index 0 is the first value.

## Hints

- Read with `read -a arr`.
- Access with `${arr[index]}`.

---

**Solution:** [answers/lab-06-array-index.sh](answers/lab-06-array-index.sh)

<details><summary>Show solution</summary>

```bash
#!/bin/bash
echo "Enter 5 values:"
read -a arr
echo "Index 1 = ${arr[1]}"
echo "Index 2 = ${arr[2]}"
echo "Index 4 = ${arr[4]}"
```

</details>
