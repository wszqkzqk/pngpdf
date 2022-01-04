#!/usr/bin/bash
cd `dirname $0`; pwd
for i in *.pdf
do
    pdftoppm -png $i ${i:0:-4}
    convert ${i:0:-4}*.png +compress ${i:0:-4}-pic.pdf
    rm ${i:0:-4}*.png
done
