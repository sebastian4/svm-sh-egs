#!/bin/bash
# gloabal x and y
x=200
y=120
 
math(){
  # local variable x and y with passed args	
  local x=$1
  local y=$2
  echo $(( $x + $y ))
}
 
echo "x: $x and y: $y"
# call function 
 
echo "Calling math() with x: $x and y: $y"
math 5 10

echo "now calling with the actual variables"
math $x $y

# x and y are not modified by math()
echo "x: $x and y: $y after calling math()"
echo $(( $x + $y ))
