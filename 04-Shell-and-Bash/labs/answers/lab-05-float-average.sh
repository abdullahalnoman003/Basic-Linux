
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
