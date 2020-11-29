#! /usr/bin/bash
# Think I'll include a menu managed by switch-case to make use of many different
# git operations.
git status
echo
echo "Automated GIT Version Control"
echo "Choose an action:"
echo
echo "c  - add, commit"
echo "p  - push"
echo "cp - comit and push"
echo "l  - log oneline"
echo "b  - branch"
echo "z  - tezting"

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
    'z')
        echo "Hello is this working?? Yes!!"
        ;;
esac


<< COMMENT
    if (($O == 'y' || $O == 'Y' || $O == 'yes' || $O == 'YES' || $O == 'Yes'||$O == 'yES')) 
    then
    else
    if
COMMENT
