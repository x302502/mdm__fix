#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Please provide message parameter."
    exit 1
fi

message="$1"

git add .
git commit -m "$message"
git push

exit 0
