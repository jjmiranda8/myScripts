#! /usr/bin/bash

#when called, this will create a directory containing 3 files.
echo "Make standard web template files?"
echo "Enter fileName: "
read FILENAME


mkdir $FILENAME

touch $FILENAME/index.html
touch $FILENAME/actions.js
touch $FILENAME/styles.css

echo "Files created"


