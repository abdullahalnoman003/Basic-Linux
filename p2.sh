# Name: Abdullah Al Noman
# ID: 232-35-003 Section: 41_A2

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
