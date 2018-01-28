#!/bin/sh 

echo "Seppuku has begun...";

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    echo 'Welcome to seppuku!'
    echo 'Arguments:'
    echo '*  Push to ALL branches. (-a --all).'
    echo '*  View this help document. (-h, --help).'
fi

git rm -r *; # Remove all files in working directory.
git add ./; # Add all the removed files to be staged.
git status; # Show the status of git.
git commit -a -m "Seppuku."; # Add the message of seppuku.

if [[ $1 == "-a" || $1 == "--all" ]]; then
    git push -f -a; # Push to all branches. 
else
    git push -f;  # Push the commit to the branch.
fi

