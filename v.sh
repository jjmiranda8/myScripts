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

read menuSelection

function commit {
    git add .
    echo files added
    git status
    echo
    echo Please enter short commit messages:
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

function init {
    git init
}

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
        echo "Branch to merge to main?"
        read SELECTION
        git merge $SELECTION
        ;;
    'i')
        git init
        ;;
esac
