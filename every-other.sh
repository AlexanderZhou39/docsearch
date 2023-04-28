#!/bin/bash

# Define the directory where your text files are located
directory="./technical"

# Set a counter to keep track of every other file
counter=0

# Loop through all the files in the directory
for file in "$directory"/**/*.txt
do
  # If the counter is 0, then it's time to count the words in this file
  if [ $((counter % 2)) -eq 0 ]
  then
    word_count=$(wc -w < "$file")
    echo "The file $file has $word_count words."
  fi

  # Increment the counter
  counter=$((counter + 1))
done