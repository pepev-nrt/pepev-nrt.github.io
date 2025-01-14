#! /bin/bash

git pull

hugo

cp CNAME public/CNAME

NOW=$(date +"%Y-%m-%d %H:%M:%S")

git add .
git commit -m "$@ -> $NOW"
git push
