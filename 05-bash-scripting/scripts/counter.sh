#!/bin/bash
# While loop counting from 1 to 5
COUNT=1
while [ "$COUNT" -le 5 ]; do
    echo "Count: $COUNT"
    (( COUNT++ ))
done
