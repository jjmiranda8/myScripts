#! /usr/bin/bash

#ECHO
#-n flag cancels the default new line character for echo command
    # echo -n "Enter a line with multiple words: "
    # read first second third
    # echo $third $first $second 

#STRING INTERPOLATION 
    #works only with double quotes
    #echo "You are ${VAR_HERE}"

#ARITHMETIC OPERATIONS
    # let RESULT=1+1
    # echo $RESULT
    # let NEW="1 + 1"
    # echo $NEW 
    #increment with ++var or var++ (--var or var--)

#CONDITIONALS
    #[ 5 -lt 2 ]
    #"$?" takes the last expression's outputecho $?

#ARRAYS
    #ARRAY=(something here 12 true)
    #echo ${ARRAY[1]}
    #echo "With interpolation this ${ARRAY[1]} is awesome"
    #echo Every items of array: ${ARRAY[*]}
    #echo Length of the array is: ${#ARRAY[*]}

#SCANNING FILE
    # echo -n "Enter the name of the file you would like to scan: "
    # read $file_to_scan
    # echo "pwd: ${PWD}"