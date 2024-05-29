#!/bin/bash

# Test case 1: Words containing the letters a, b, and c
output=$(echo "abc abd acd def" | grep -E ".*a.*b.*c.*")
expected_output="abc acd"
if [ "$output" == "$expected_output" ]; then
  echo "Test case 1 passed"
else
  echo "Test case 1 failed"
fi

# Test case 2: Words not containing the letters a, b, and c
output=$(echo "def ghi jkl" | grep -E ".*a.*b.*c.*")
expected_output=""
if [ "$output" == "$expected_output" ]; then
  echo "Test case 2 passed"
else
  echo "Test case 2 failed"
fi