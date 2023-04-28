#!/bin/bash

# Initialize a variable to hold the sum
sum=0

# Find all .txt files recursively
for file in $(find . -name "*.txt"); do
    # Extract all digits from the filename and sum them up
    digits=$(echo "$file" | grep -o "[0-9]")
    for digit in $digits; do
        sum=$((sum + digit))
    done
done

# Output the total sum of digits
echo "Total sum of digits in filenames: $sum"
