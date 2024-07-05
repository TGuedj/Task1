!/bin/bash

response=$(curl -s http://localhost:5000/)
joke=$(echo $response | jq -r '.value')

word_count=$(echo $joke | wc -w)

echo "The joke has $word_count words."
