#!/usr/bin/env bash
# simple-interest.sh
# A script to calculate Simple Interest
# Usage: ./simple-interest.sh principal rate time
# Example: ./simple-interest.sh 10000 5 2

# Check if exactly 3 arguments are provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 principal rate(%) time(years)"
  exit 1
fi

P=$1   # Principal amount
R=$2   # Rate of interest
T=$3   # Time in years

# Calculate Simple Interest = (P × R × T) / 100
SI=$(echo "scale=4; ($P * $R * $T) / 100" | bc)

# Print results
echo "Principal: $P"
echo "Rate: $R%"
echo "Time: $T years"
echo "Simple Interest: $SI"
