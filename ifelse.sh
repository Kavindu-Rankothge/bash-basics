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
