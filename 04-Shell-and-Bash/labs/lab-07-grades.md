# Lab 07 — Grading based on percentage

**Difficulty:** ⭐⭐

## Problem

Write a Bash script that:
1. Reads a percentage `p` from the user.
2. Assigns a grade using this scale:
   - `p >= 90` → **A**
   - `p >= 80` → **B**
   - `p >= 70` → **C**
   - otherwise → **D**
3. Prints the grade.

## Example

```
Enter your percentage: 85
Grade B
```

## Hints

- Chain multiple conditions with `elif`.

---

**Solution:** [answers/lab-07-grades.sh](answers/lab-07-grades.sh)

<details><summary>Show solution</summary>

```bash
#!/bin/bash
read -p "Enter your percentage: " p
if (( p >= 90 )); then
    echo "Grade A"
elif (( p >= 80 )); then
    echo "Grade B"
elif (( p >= 70 )); then
    echo "Grade C"
else
    echo "Grade D"
fi
```

</details>
