#!/bin/bash

count=`git rev-list --count HEAD`
next=`expr $count + 1`

git submodule init
git submodule update
git submodule foreach "git pull"
git commit -a -m "Submodule update $next"
git push
