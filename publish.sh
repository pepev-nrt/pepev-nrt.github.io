#! /bin/bash

echo "Title of the commit"
read commit

git pull

rm -r ./content/*
cp -r /home/peps/Documents/Obsidian/2-Posts/content/* ./content

hugo

cp CNAME public/CNAME

NOW=$(date +"%Y-%m-%d %H:%M:%S")

git add .
git commit -m "$commit -> $NOW"
git push
