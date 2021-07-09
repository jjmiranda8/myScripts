#! /usr/bin/bash

echo "Will generate directory you name containing linked HTML, CSS, and JS files"
echo "Enter fileName: "
read FILENAME


mkdir $FILENAME

touch $FILENAME/index.html
    cat /home/jmiranda/.myScripts/template_files/index.html >> $FILENAME/index.html
touch $FILENAME/actions.js
    cat /home/jmiranda/.myScripts/template_files/actions.js >> $FILENAME/actions.js
touch $FILENAME/styles.css
    cat /home/jmiranda/.myScripts/template_files/styles.css >> $FILENAME/styles.css

echo "Files created"
