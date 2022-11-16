#!/bin/sh

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}

git commit -m "${1}"
git pull origin $branch_name
git push origin $branch_name
