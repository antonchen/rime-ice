#!/bin/bash
# Author: Anton Chen <contact@antonchen.com>
# Create Date: 2023-01-03 12:49:25
# Last Modified: 2023-01-03 13:00:59
# Description: 
HERE=$(cd -P -- $(dirname -- "$0") && pwd -P)
rsync -a --exclude={'build','rime_ice.userdb','LICENSE','README.md'} /Users/anton/Library/Rime/ $HERE/
cd $HERE
git add .
git commit -m "Backup $(date +'%Y/%m/%d %H:%M:%S')."
git push origin main
