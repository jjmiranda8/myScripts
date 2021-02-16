#! /usr/bin/bash

echo "Generate template to practice ds/alg question"
echo "What do you want to name the dir?:"
read PROBLEM 

mkdir $PROBLEM

touch $PROBLEM/$PROBLEM.py
cat /home/jmiranda/py-ds/.template_files/source.py >> $PROBLEM/$PROBLEM.py

touch $PROBLEM/test_$PROBLEM.py
cat /home/jmiranda/py-ds/.template_files/test.py >> $PROBLEM/test_$PROBLEM.py

touch $PROBLEM/prompt.py
cat /home/jmiranda/py-ds/.template_files/prompt.py >> $PROBLEM/prompt.py
cd $PROBLEM

sed -i "1i import $PROBLEM" test_$PROBLEM.py
printf "   assert $PROBLEM.main() == 'Hello, world'" >> test_$PROBLEM.py
