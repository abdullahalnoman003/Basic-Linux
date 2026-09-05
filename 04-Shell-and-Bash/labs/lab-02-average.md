# Lab 02 — Average of N integers

**Difficulty:** ⭐

## Problem

Write a Bash script that:
1. Reads a list of integers separated by spaces.
2. Computes their **average** (integer division is fine).
3. Displays the result.

## Example

```
Enter numbers with by space: 10 20 30 40
Average = 25
```

## Hints

- Read into an array: `read -a arr`.
- Sum with a loop, then divide by `${#arr[@]}` (the length).

---

**Solution:** [answers/lab-02-average.sh](answers/lab-02-average.sh)

<details><summary>Show solution</summary>

```bash
#!/bin/bash
read -p "Enter numbers with by space: " -a arr
sum=0
for num in "${arr[@]}"
do
    sum=$((sum+num))
done
size=${#arr[@]}
avg=$((sum/size))
echo "Average = $avg"
```

</details>
