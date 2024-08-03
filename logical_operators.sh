#!/bin/bash
#
# Name: Kavindu Rankothge
# Using logical operators like ; && || &

# Using ;
# ; executes the line without any type of checking
# It's the same as typing it in a new line
echo "Using ;"
echo "Line 1"
echo "Line 2"

echo "Line 1" ; echo "Line 2"

# Using &&
# Only runs the first command if first one works
# Checked if return code of first was 0 and runs next item
echo -e "\nUsing &&"
cat filethatdoesnotexist.txt && echo "File1 exisist!"
cat filethatdoesexist.txt && echo "File2 exisists!" 

# Using ||
# Only runs the second command if first one failes
# Checked if return code of first not 0 and runs next item
echo -e "\nUsing ||" 
cat filethatdoesnotexist.txt || echo "File1 no exisist!"
cat filethatdoesexist.txt || echo "File2 no exisists!" 

# Using &
# Runs both commands in parallel
echo -e "\nUsing &"
sleep 5 & echo "Sleeping right now!"
