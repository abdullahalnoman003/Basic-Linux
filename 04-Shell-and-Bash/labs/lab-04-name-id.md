# Lab 04 — Read and print a name & ID

**Difficulty:** ⭐

## Problem

Write a Bash script that:
1. Asks the user for their **name**.
2. Asks the user for their **ID** (or any second value).
3. Prints both back.

## Example

```
Enter your name: Alice
Enter your ID: 12345
Name: Alice
ID: 12345
```

## Hints

- Use `read -p "prompt" variable`.

---

**Solution:** [answers/lab-04-name-id.sh](answers/lab-04-name-id.sh)

<details><summary>Show solution</summary>

```bash
#!/bin/bash
read -p "Enter your name: " name
read -p "Enter your ID: " id
echo "Name: $name"
echo "ID: $id"
```

</details>
