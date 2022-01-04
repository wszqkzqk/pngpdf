#!/usr/bin/bash
cd `dirname $0`; pwd
for i in *.pdf ; do
    if [[ ${i:-8:-4} != *-pic* ]] ; then    #判断是否是已转换文件，防止再次在同一文件夹中执行时重复转换
        pdftoppm -png $i ${i:0:-4}
        convert ${i:0:-4}*.png +compress ${i:0:-4}-pic.pdf
        rm ${i:0:-4}*.png
    fi
done
