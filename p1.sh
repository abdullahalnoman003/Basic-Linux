# Name: Abdullah AL Noman 
# ID: 232-35-003 Section: 41_A2
#!/bin/bash
read -p "Enter a limit: " n
sum=0

for ((i=1; i<=n; i++))
do
sum=$((sum+i))
done

echo "Sum of numbers from 1 to $n is: $sum" 