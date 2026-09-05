# ⚙️ Module 04 — Shell & Bash Scripting

> **Goal:** Write real, useful shell scripts — variables, conditions, loops, arrays, functions, and error handling.

This is the **biggest and most hands-on module** of the course. The original practice problems that
started this repository now live here as official **labs** (see below).

---

## ✅ You'll learn

- Turn repeated commands into reusable **scripts**
- Variables, special variables, and command substitution
- Conditionals (`if`, `test`, `[ ]`, `(( ))`, `case`)
- Loops (`for`, `while`, `until`)
- Arrays
- Functions
- Reading input and error handling

---

## 🧾 What is a script?

A **script** is just a text file containing shell commands, executed top to bottom (plus logic).

Create one:

```bash
# 1. Create the file
nano hello.sh

# 2. First line (the shebang) says which interpreter to use
#!/bin/bash
echo "Hello from my first script!"

# 3. Make it executable and run it
chmod +x hello.sh
./hello.sh
```

> 💡 **Shebang** `#!/bin/bash` tells Linux to run the file with Bash. It must be the **very first line**,
> and it's good practice to put it *before* any comments.

---

## 📦 Variables

```bash
#!/bin/bash
name="Alice"            # NO spaces around '='
age=25
echo "Hi, $name"        # $name expands to Alice
echo "Age: $age"
```

**Rules:**
- No spaces around `=`.
- Use `$variable` or `${variable}` to read it.
- Use double quotes `"$var"` to keep it as one word.

### Special variables (given to you automatically)

```bash
$0    # name of the script
$1, $2, ...   # first, second argument
$#    # number of arguments
$@    # all arguments as a list
$$    # process ID of this script
$?    # exit code of the last command (0 = success)
```

```bash
#!/bin/bash
echo "Script: $0"
echo "Arguments: $#"
echo "First arg: $1"
echo "All args: $@"
```

```bash
$ ./args.sh hello world 42
Script: ./args.sh
Arguments: 3
First arg: hello
All args: hello world 42
```

### Command substitution

Run a command and store its output:

```bash
today=$(date)            # today = output of date
files=$(ls)
echo "Today is $today"
```

---

## 🧭 Conditionals — `if`

```bash
#!/bin/bash
read -p "Enter a number: " n

if (( n > 10 )); then
    echo "$n is greater than 10"
elif (( n == 10 )); then
    echo "$n is exactly 10"
else
    echo "$n is less than 10"
fi
```

Use **`[ ]` / `test`** for strings & files, and **`(( ))`** for arithmetic:

```bash
[ -f "file.txt" ]     # file exists?
[ -d "folder" ]       # directory exists?
[ "$a" = "$b" ]       # strings equal
[ "$a" != "$b" ]      # strings not equal
[ -z "$var" ]         # variable is empty
[ -n "$var" ]         # variable is not empty

(( 5 > 3 ))    # true
(( a + b < 100 ))
```

```bash
#!/bin/bash
read -p "File name: " f
if [ -f "$f" ]; then
    echo "$f exists"
else
    echo "$f does not exist"
fi
```

### `case` — match many options

```bash
#!/bin/bash
read -p "Fruit: " fruit
case $fruit in
  apple)   echo "Apple is red" ;;
  banana)  echo "Banana is yellow" ;;
  *)       echo "Unknown fruit" ;;
esac
```

---

## 🔁 Loops

### `for`

```bash
#!/bin/bash
# Over a list
for color in red green blue; do
    echo "Color: $color"
done

# C-style numeric loop
for ((i=1; i<=5; i++)); do
    echo "Number: $i"
done

# Over command output
for file in *.txt; do
    echo "Found: $file"
done
```

### `while`

```bash
#!/bin/bash
count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))            # increase count
done
```

### `until` (loop while the condition is FALSE)

```bash
#!/bin/bash
n=1
until [ $n -gt 3 ]; do
    echo "n = $n"
    ((n++))
done
```

### `break` and `continue`

```bash
for ((i=1; i<=10; i++)); do
    if (( i == 3 )); then continue; fi   # skip 3
    if (( i == 8 )); then break; fi       # stop at 8
    echo $i
done
# Prints 1 2 4 5 6 7
```

---

## 📚 Arrays

```bash
#!/bin/bash
arr=(10 20 30 40)          # declare an array
echo "${arr[0]}"           # 10   (first element)
echo "${arr[1]}"           # 20
echo "${arr[@]}"           # all elements: 10 20 30 40
echo "${#arr[@]}"          # length: 4

# Loop over an array
for x in "${arr[@]}"; do
    echo "Elem: $x"
done

# Read an array from user input
read -p "Enter numbers: " -a nums
echo "You entered: ${nums[@]}"
```

---

## 🧩 Functions

```bash
#!/bin/bash
greet() {
    echo "Hello, $1!"      # $1 = first argument to the function
}

greet World                # call it -> Hello, World!
greet Alice                # -> Hello, Alice!
```

Return values via `echo` (captured) or `return` (an exit code 0–255):

```bash
add() {
    echo $(( $1 + $2 ))
}
sum=$(add 5 7)             # sum = 12
echo "Sum is $sum"
```

---

## 🛡️ Error handling — exit codes

Every command returns an **exit code**: `0` = success, non-zero = failure.

```bash
[ -f missing.txt ]; echo $?   # prints 1 (failure)
[ -f /etc/hostname ]; echo $? # prints 0 (success)
```

Check a command and exit early:

```bash
#!/bin/bash
command_that_might_fail
if [ $? -ne 0 ]; then
    echo "Something went wrong!" >&2
    exit 1
fi
echo "Done"
```

---

## ✏️ Try it yourself

1. Write a script that takes two numbers as arguments and prints their sum.
2. A script that asks for a password and checks if it's at least 8 characters.
3. Loop through all `.sh` files in a folder and print their sizes.
4. A function `is_even` that prints "even" or "odd".

---

## 🏗️ Labs

Now **practice everything above** with the official lab set. Each problem tells you what to build;
try it yourself first, then peek at the solution.

| Lab | Problem | Difficulty |
|-----|---------|:----------:|
| [01](labs/lab-01-sum.md) | Sum of numbers from 1 to N | ⭐ |
| [02](labs/lab-02-average.md) | Average of N integers | ⭐ |
| [03](labs/lab-03-leap-year.md) | Check if year(s) are leap years | ⭐⭐ |
| [04](labs/lab-04-name-id.md) | Read and print a name & ID | ⭐ |
| [05](labs/lab-05-float-average.md) | Average of floating-point numbers | ⭐⭐ |
| [06](labs/lab-06-array-index.md) | Access specific array indexes | ⭐ |
| [07](labs/lab-07-grades.md) | Grading based on percentage | ⭐⭐ |
| [08](labs/lab-08-odd-numbers.md) | Print odd numbers, skipping 13 | ⭐⭐ |
| [09](labs/lab-09-triangle.md) | Triangle validity check | ⭐⭐ |
| [10](labs/lab-10-largest.md) | Largest of three numbers | ⭐⭐ |

> 💡 Each lab has an `<solution>.sh` in `labs/answers/` so you can check your work.
> The original scripts that started this repo are preserved there.

---

## 🎯 Check your understanding

1. What is the shebang and why is it first?
2. Why do we use `"$var"` instead of `$var`?
3. Difference between `$@` and `$#`?
4. When would you use `(( ))` versus `[ ]`?
5. What does an exit code of `0` mean?

<details><summary>Click for answers</summary>

1. `#!/bin/bash` tells the kernel which interpreter to use; it must be the first line.
2. Double quotes keep the value as one word and prevent unintended splitting/globbing.
3. `$@` = all arguments; `$#` = the *count* of arguments.
4. `(( ))` for arithmetic comparisons; `[ ]`/`test` for strings and file checks.
5. Success. Non-zero means an error.

</details>

---

**Next → [Module 05 — Processes & Systemd](../05-Processes-Systemd/README.md)**
