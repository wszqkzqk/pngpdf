#!/bin/bash
cd `dirname $0`; pwd
git add *
git commit -m 'Updated by update.sh'
git push -u git@github.com:wszqkzqk/pngpdf.git
git push -u git@gitee.com:wszqkzqk/pngpdf.git
