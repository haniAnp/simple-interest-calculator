#!/bin/bash

# Simple Interest Calculator
# Usage: ./simple-interest.sh principal rate time

principal=$1
rate=$2
time=$3

if [ -z "$principal" ] || [ -z "$rate" ] || [ -z "$time" ]; then
  echo "Usage: $0 principal rate time"
  exit 1
fi

interest=$(echo "$principal * $rate * $time / 100" | bc)
echo "Simple Interest: $interest"
