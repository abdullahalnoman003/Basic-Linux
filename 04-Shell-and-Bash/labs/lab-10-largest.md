# Lab 10 — Largest of three numbers

**Difficulty:** ⭐⭐

## Problem

Write a Bash script that:
1. Reads three numbers `a`, `b`, `c`.
2. Determines the **largest**.
3. Prints it.

## Example

```
Enter first number: 5
Enter second number: 9
Enter third number: 3
9 is the largest
```

## Hints

- Compare `a` with `b`, then compare the winner with `c`.
- Nested `if` statements work, or use a cleaner `elif` chain.

---

**Solution:** [answers/lab-10-largest.sh](answers/lab-10-largest.sh)

<details><summary>Show solution (nested if)</summary>

```bash
#!/bin/bash
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
if((a>b)); then
    if((a>c)); then
        echo "$a is the largest"
    else
        echo "$c is the largest"
    fi
else
    if ((b>c)); then
        echo "$b is the largest"
    else
        echo "$c is the largest"
    fi
fi
```

</details>

<details><summary>Show solution (cleaner elif)</summary>

```bash
#!/bin/bash
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
if (( a>b && a>c )); then
    echo "$a is the largest"
elif (( b>a && b>c )); then
    echo "$b is the largest"
else
    echo "$c is the largest"
fi
```

</details>
