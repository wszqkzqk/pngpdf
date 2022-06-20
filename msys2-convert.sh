#!/usr/bin/env bash
cd `dirname $0`; pwd
for i in *.pdf ; do
    if [[ $i != *-pic* ]] ; then
        echo "正在转化文件：$i"
        pdftoppm -png $i ${i:0:-4}
        gm.exe convert ${i:0:-4}*.png ${i:0:-4}-pic.pdf
        rm ${i:0:-4}*.png
        echo "已输出至：${i:0:-4}-pic.pdf"
    fi
done
