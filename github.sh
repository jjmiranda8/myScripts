#! /usr/bin/bash
git status

echo
echo "Automated GIT Version Control"
echo "Choose an action:"
echo
echo "  i  - initialize repo"
echo "  l  - log oneline"
echo "  c  - commit"
echo "  p  - push"
echo "  cp - comit and push"
echo "  b  - branch"
echo "  o  - open file"
echo "  m  - merge"

function commit {
    git add .
    echo files added
    git status
    echo
    echo "Please enter short commit message:"
    read MESSAGE
    git commit -m "$MESSAGE"
}

function log {
    git log --oneline
}

function push {
    git push
}

function branch {
    git branch 
}

function initializeRepo {
    git init
}

function open {
   echo "File to open"
   read FILE 
   vi $FILE 
}

function merge {
    git checkout main
    git branch
    echo "Name of branch merging to main:"
    read SELECTION
    git merge $SELECTION
}

read menuSelection

case $menuSelection in 
    'c') 
        commit 
        ;;
    'p')
        push 
        ;;
    'cp')
        commit
        push
        ;;
    'l')
        log
        ;;
    'b')
        branch
        ;;
    'm')
        merge
        ;;
    'i')
        initializeRepo
        ;;
    'o')
        open
        ;;
esac
