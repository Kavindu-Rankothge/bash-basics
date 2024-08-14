#!/bin/bash
#
# Name: Kavindu Rankothge
#
# Practicing bash shell if else conditions 
# https://google.github.io/styleguide/shellguide.html

value=8

# use [[]] for if conditions
# variables should have "${variable}"
if [[ "${value}" -gt 10 ]]; then
  echo "Value greater than 10"
elif [[ "${value}" -gt 5 ]]; then
  echo "Value greater than 5"
else
  echo "Value less or equal to 5"
fi

string_value1=""
string_value2="Hello, world!"
string_value3="hi world"

# Check if the string is empty"
if [[ -n "${string_value1}" ]]; then
  echo "The string is not empty"
else
  echo "The string is empty"
fi

# Checks if string matches exactly
if [[ "${string_value2}" = "Hello, world!" ]]; then
  echo "The string matches exactly."
else
  echo "The string does not match."
fi

# Check if the string contains the word "world"
if [[ "${string_value3}" == *"world"* ]]; then
  echo "The string contains 'world'."
else
  echo "The string does not contain 'world'."
fi

# I have an int var x. if x more than 80 say A else pass.
# Also number should be between 0 and 100.

x=120

if [[ "${x}" -gt 100 ]]; then
  echo "Invalid - Number is greater than 100"
elif [[ "${x}" -lt 0 ]]; then
  echo "Invalid - Number is less thanb 0"
elif [[ "${x}" -gt 80 ]]; then
  echo "A Grade"
elif [[ "${x}" -gt 50 ]]; then
  echo "Pass Grade"
else
  echo "Fail"
fi
