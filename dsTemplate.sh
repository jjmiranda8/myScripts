#! /usr/bin/bash

echo "Will generate directory you name for data structures practice"
echo "Enter directoryName: "
read PROBLEM 

mkdir $PROBLEM

touch $PROBLEM/$PROBLEM.py
touch $PROBLEM/test_$PROBLEM.py


