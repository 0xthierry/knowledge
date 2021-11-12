#!/bin/bash          
obisidian_folder="/Users/thierrysantos/Documents/brain/brain"
destination_folder=$(pwd)
current_time=$(date +"%D %T")
echo "sending files to github"
cd $obisidian_folder
cp -R . $destination_folder
cd $destination_folder
rm -rf .obsidian
git add .
git commit -m "syncing obesidian notes $current_time"
git push origin main