#!/bin/sh 

echo "Seppuku has begun...";

git rm -r *; # Remove all files in working directory.
git add ./; # Add all the removed files to be staged.
git status; # Show the status of git.
git commit -a -m "Seppuku."; # Add the message of seppuku.
git push -f -a;  # Push the commit to all branches.
