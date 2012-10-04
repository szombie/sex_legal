#!/bin/bash

git add .
git commit -am "$1"
git status
git pull origin master
git push origin master
