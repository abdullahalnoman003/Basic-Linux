# Lab 01 — Sum of numbers from 1 to N

**Difficulty:** ⭐

## Problem

Write a Bash script that:
1. Reads a limit `n` from the user.
2. Computes the sum of all integers from **1 to n**.
3. Displays the result.

## Example

```
Enter a limit: 5
Sum of numbers from 1 to 5 is: 15
```

## Hints

- Use a `for ((i=1; i<=n; i++))` loop.
- Accumulate with `sum=$((sum+i))`.

---

**Solution:** [answers/lab-01-sum.sh](answers/lab-01-sum.sh)

<details><summary>Show solution</summary>

```bash
#!/bin/bash
read -p "Enter a limit: " n
sum=0
for ((i=1; i<=n; i++))
do
    sum=$((sum+i))
done
echo "Sum of numbers from 1 to $n is: $sum"
```

</details>
