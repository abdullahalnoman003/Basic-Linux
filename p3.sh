# Name: Abdullah Al Noman
# ID: 232-35-003 Section: 41_A2
#!/bin/bash
read -p "Enter years separated by space: " -a year

for y in "${year[@]}"
do
    if (( (y % 400 == 0) || (y % 4 == 0 && y % 100 != 0) ))
    then
        echo "$y is a Leap Year"
    else
        echo "$y is not a Leap Year"
    fi
done
