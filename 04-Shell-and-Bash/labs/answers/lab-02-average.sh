
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
