#! /usr/bin/bash
# Think I'll include a menu managed by switch-case to make use of many different
# git operations.
git status
echo
echo "Automated GIT Version Control"
echo "Choose an action:"
echo
echo "  c  - commit"
echo "  p  - push"
echo "  cp - comit and push"
echo "  l  - log oneline"
echo "  b  - branch"
echo "  m  - merge"

read menuSelection

case $menuSelection in 
    'p') 
        git push
        ;;
    'l')
        git log --oneline
        ;;
    'b')
        git branch
        ;;
    'c')
        git add .
        echo "files added"
        git status
        echo "Please enter short commit message:"
        read message
        git commit -m "$message"
        ;;
    'cp')
        get add .
        echo "files added"
        git status
        echo "Please enter short commit message:"
        read message
        git commit -m "$message"
        ;;
    'm')
        git checkout main
        git branch
        echo "Branch to merge to main?"
        read SELECTION
        git merge $SELECTION
        ;;

esac


<< 'COMMENT'
if (($OPTION == 'y' || $OPTION == 'Y' || $OPTION == 'yes' || $OPTION == 'YES' || $OPTION == 'Yes'||$OPTION == 'yES')) 
then
    git add .
    git status

    echo ""
    echo ""

    echo "Commit and push changes?"
    read O
    if (($O == 'y' || $O == 'Y' || $O == 'yes' || $O == 'YES' || $O == 'Yes'||$O == 'yES')) 
    then
        git push .
        echo "Please enter a small message for the commit."
        read MESSAGE 
        
        echo ""
        echo ""

        git commit -m "${MESSAGE}"
        git push
        echo "Everything pushed and committed"
        git status
        git log --oneline
    fi

else
    echo "Did not push"
fi
COMMENT
