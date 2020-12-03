#! /usr/bin/bash

echo "Generate template to practice ds/alg question"
echo "What do you want to name the dir?:"
read PROBLEM 

mkdir $PROBLEM

touch $PROBLEM/$PROBLEM.py
cat /home/jmiranda/dataStructures/.template_files/source.py >> $PROBLEM/$PROBLEM.py

touch $PROBLEM/test_$PROBLEM.py
cat /home/jmiranda/dataStructures/.template_files/test.py >> $PROBLEM/test_$PROBLEM.py
cd $PROBLEM

sed -i "1i import $PROBLEM" test_$PROBLEM.py
printf "   assert $PROBLEM.something() == 'Hello, world'" >> test_$PROBLEM.py
