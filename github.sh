#! /usr/bin/bash

echo "Here is your status: "

echo ""
echo ""

git status

echo ""
echo ""

echo "Add?"
read OPTION

if (($OPTION == 'y' || $OPTION == 'Y' || $OPTION == 'yes' || $OPTION == 'YES' || $OPTION == 'Yes'||$OPTION == 'yES')) 
then
    git add .
    git status
    echo "Commit and push changes?"
    read O
    if (($O == 'y' || $O == 'Y' || $O == 'yes' || $O == 'YES' || $O == 'Yes'||$O == 'yES')) 
    then
        git push .
        echo "Please enter a small message for the commit."
        read MESSAGE 

        git commit -m "${MESSAGE}"
        git push
        echo "Everything pushed and committed"
        git status
        git log --oneline
    fi

else
    echo "Did not push"
fi
