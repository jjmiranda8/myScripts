#! /usr/bin/bash
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
echo "  i  - initialize repo"
echo "  o  - open file"

function commit {
    git add .
    echo files added
    git status
    echo
    read -p "Please enter short commit message:" MESSAGE
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

function init {
    git init
}

function open {
   read -p "File to open:" FILE
   vi $FILE 
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
        git checkout main
        branch
        echo "Merge current branch to main?"
        read SELECTION
        git merge $SELECTION
        ;;
    'i')
        init
        ;;
    'o')
        open
        ;;
esac
