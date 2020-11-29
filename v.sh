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
        commit
        ;;
    'cp')
        commit
        git push
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
