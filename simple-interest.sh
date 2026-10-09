#!/bin/bash

# Calculate simple interest from user input.

read -r -p "Enter principal amount: " p
read -r -p "Enter annual interest rate (%): " r
read -r -p "Enter time period in years: " t

awk -v p="$p" -v r="$r" -v t="$t" \
  'BEGIN { printf "Simple interest: %.2f\n", (p * r * t) / 100 }'
