#!/usr/bin/env bash
cd `dirname $0`; pwd
for i in *.pdf ; do
    if [[ $i != *-pic-compressed* ]] ; then
        echo "正在转化文件：$i"
        pdftoppm -png $i ${i:0:-4}
        convert ${i:0:-4}*.png $i
        rm ${i:0:-4}*.png
        gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dQUIET -dCompatibilityLevel=1.4 -sOutputFile=${i:0:-4}-compressed.pdf $i
        mv ${i:0:-4}-compressed.pdf $i
        echo "已完成！"
    fi
done
