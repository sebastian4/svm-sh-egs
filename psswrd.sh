#!/bin/bash
 
function get_password ( )
# Usage:     get_password VARNAME
# Asks the user for a password; saves it as $VARNAME.
# Returns a non-zero exit status if standard input is not a terminal, or if the
# "read" command returns a non-zero exit status.
{
  if [[ -t 0 ]] ; then
    read -r -p 'Password:' -s "$1" && echo
  else
    return 1
  fi
}
 
get_password PASSWORD && echo "$PASSWORD"
