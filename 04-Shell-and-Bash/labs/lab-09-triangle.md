# Lab 09 — Triangle validity check

**Difficulty:** ⭐⭐

## Problem

Write a Bash script that:
1. Reads three side lengths `a`, `b`, `c`.
2. Determines whether they form a **valid triangle**.
3. Prints the result.

## Rule

Three sides form a triangle if **every** pair sums to more than the third:
- `a + b > c`
- `a + c > b`
- `b + c > a`

## Example

```
Enter side a: 3
Enter side b: 4
Enter side c: 5
Valid Triangle
```

## Hints

- Combine the checks with `&&` inside `(( ))`.

---

**Solution:** [answers/lab-09-triangle.sh](answers/lab-09-triangle.sh)

<details><summary>Show solution</summary>

```bash
#!/bin/bash
read -p "Enter side a: " a
read -p "Enter side b: " b
read -p "Enter side c: " c
if (( a+b>c && a+c>b && b+c>a )); then
    echo "Valid Triangle"
else
    echo "Not a Valid Triangle"
fi
```

</details>
