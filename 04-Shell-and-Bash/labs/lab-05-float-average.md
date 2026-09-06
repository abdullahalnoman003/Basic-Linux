# Lab 05 — Average of floating-point numbers

**Difficulty:** ⭐⭐

## Problem

Write a Bash script that:
1. Reads floating-point numbers separated by spaces.
2. Computes their **average** with a decimal result.
3. Displays it.

## Example

```
Enter floating numbers separated by space: 1.5 2.5 3.0
Average = 2.33333
```

## Hints

- Bash's integer arithmetic can't handle decimals — use `awk`:
  ```bash
  sum=$(awk "BEGIN {print $sum + $num}")
  avg=$(awk "BEGIN {print $sum / $size}")
  ```

---

**Solution:** [answers/lab-05-float-average.sh](answers/lab-05-float-average.sh)

<details><summary>Show solution</summary>

```bash
#!/bin/bash
read -p "Enter floating numbers separated by space: " -a arr
sum=0
size=${#arr[@]}
for num in "${arr[@]}"
do
    sum=$(awk "BEGIN {print $sum + $num}")
done
avg=$(awk "BEGIN {print $sum / $size}")
echo "Average = $avg"
```

</details>
