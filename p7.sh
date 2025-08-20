# Name: Abdullah Al Noman
# ID: 232-35-003 Section: 41_A2

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
