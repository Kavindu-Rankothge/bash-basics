#!/bin/bash
#
# Name: Kavindu Rankothge
#
# Practicing bash shell standards and guidelines
# https://google.github.io/styleguide/shellguide.html

# For global variables we use uppercase
# Also no spaces before and after = (syntax)
GLOBAL_VAR=2

# Functions should have comments:
########################################
# Cleanup files from the backup directory.
# Globals:
#   BACKUP_DIR
#   ORACLE_SID
# Arguments:
#   None
#   name - name of path
# Outputs:
# Returns:
#######################################

########################################
# Used to send error messages to STDERR.
#
# Arguments:
#  $* - The error message(s) to be printed
# Outputs:
#   Writes error to STDERR with timestamp
########################################
err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

########################################
# Used to send messages to STDOUT.
# Arguments:
#  $* - The message(s) to be printed
# Outputs:
#   Writes messages to STDOUT with timestamp
########################################
info() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*"
}

########################################
# Create a file.
# Arguments:
#   $1 - Name of file
#   $2 - Path to create file in
# Returns:
#   0 if file created, non-zero on error
########################################
function create_file() {
  touch "$2"/"$1"
}

# Example info message
create_file "test.txt" "/tmp" && info "filecreated" || err "filenotcreated"
# Example error message
create_file "test.txt" "/tmp/nonexistant" && info "filecreated" || err "filenotcreated"

# TODO(my_todo_func): Handle the unlikely edge cases (bug ####)
function my_todo_func() {
  return 0
}

echo "Rules.sh script is completed!"
exit 0
