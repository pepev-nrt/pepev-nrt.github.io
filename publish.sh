#! /bin/bash

echo "Title of the commit"
read commit

git pull

hugo

cp CNAME public/CNAME

NOW=$(date +"%Y-%m-%d %H:%M:%S")

git add .
git commit -m "$commit -> $NOW"
git push
