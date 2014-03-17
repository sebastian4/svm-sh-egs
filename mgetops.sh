#!/bin/bash
#
# Linux Shell Scripting Tutorial 1.05r3, Summer-2002
#
# Written by Vivek G. Gite <vivek@nixcraft.com>
#
# Latest version can be found at http://www.nixcraft.com/
#
# Q14
# -c clear
# -d dir
# -m mc
# -e vi { editor }
#

#
# Function to clear the screen
#
cls()
{
    clear
    echo "Clear screen, press a key . . ."
    read
    return
}

#
# Function to show files in current directory 
#
show_ls()
{   
    ls
    echo "list files, press a key . . ."
    read
    return
}

#
# Function to start mc
#
start_mc()
{
    if which mc > /dev/null ; then
	mc
	echo "Midnight commander, Press a key . . ."
	read
    else
	echo "Error: Midnight commander not installed, Press a key . . ."
	read
    fi		
    return
}

#
# Function to start editor 
#
start_ed()
{
    ced=$1
    if which $ced > /dev/null ; then
	$ced
	echo "$ced, Press a key . . ."
	read
    else
	echo "Error: $ced is not installed or no such editor exist, Press a key . . ."
	read
    fi		
    return
}

#
# Function to print help
#
print_help_uu()
{
	   echo "Usage: $0 -c -d -m -v {editor name}"; 
	   echo "Where -c clear the screen";
	   echo "      -d show dir";
	   echo "      -m start midnight commander shell";
	   echo "      -e {editor}, start {editor} of your choice";
	   return
}

#
# Main procedure start here
#
# Check for sufficent args
#

if [ $# -eq 0 ] ; then
    print_help_uu
    exit 1
fi    

#
# Now parse command line arguments
#
while getopts cdme: opt
do
    case "$opt" in
	c) cls;;
	d) show_ls;;
	m) start_mc;;
	e) thised="$OPTARG"; start_ed $thised ;;
	\?) print_help_uu; exit 1;; 
    esac
done        	   
	   
	      

#
# ./ch.sh: vivek-tech.com to nixcraft.com referance converted using this tool
# See the tool at http://www.nixcraft.com/uniqlinuxfeatures/tools/
#
