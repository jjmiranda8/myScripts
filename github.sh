#! /usr/bin/bash

function menu {
    echo
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
    echo "  q  - quit"
    echo 
}

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
    echo 
    echo "END LOG"
}

function push {
    git push
    echo 
    echo "PUSH COMPLETED"
}

function branch {
    git branch 
}

function initializeRepo {
    git init
    echo
    echo "REPO INITIALIZED"
}

function open {
   echo "File to open: "
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

#SCRIPT START
git status
menu

RUNNING=true
while [ $running==true ] 
do 
    #ADD -a tag to accept input as array
    read input

    case $input in 
        'c') 
            commit 
            menu
            ;;
        'p')
            push 
            menu
            ;;
        'cp')
            commit
            wait
            push
            exit 0
            ;;
        'l')
            log
            menu
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
        'q')
            echo
            echo "Thanks!"
            exit 0
            ;;
    esac
done
