#!/usr/bin/env bash
cd `dirname $0`; pwd
for i in *.pdf ; do
    if [[ $i != *-compressed* ]] ; then
        echo "正在压缩文件：$i"
        gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dQUIET -dCompatibilityLevel=1.4 -sOutputFile=${i:0:-4}-compressed.pdf $i
        mv ${i:0:-4}-compressed.pdf $i
        echo "已完成！"
    fi
done
