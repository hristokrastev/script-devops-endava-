#!/bin/bash
git config --global user.name "hristokrastev" &&
git config --global user.email "hristo.krastevii@gmail.com";
nameOfTheProject=script-devops-endava-;
mkdir ~/$nameOfTheProject;
cd ~/$nameOfTheProject;
git init;
git remote add origin git@github.com:hristokrastev/script-devops-endava-.git;
cp ~/bash-script.sh . &&
wait;
git status > status.txt;
git add bash-script.sh
git commit -m "adding the bash script to the git repository" bash-script.sh &&
git push --set-upstream origin master;
git push origin master --force;
date > date-time.txt &&
git add date-time.txt;
git commit -m "adding the date and time" date-time.txt &&
git push origin master;
git branch dev;
date >> date-time.txt &&
git add . &&
git commit -m "appending the second date and time to the original file" date-time.txt;
git push origin master --force;
