#!/bin/bash

# Send a request to the Flask app and get the joke
response=$(curl -s http://localhost:5000/)
joke=$(echo $response | jq -r '.value')

# Count the number of words in the joke
word_count=$(echo $joke | wc -w)

# Print the word count
echo "The joke has $word_count words."
