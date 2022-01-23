#!/usr/bin/bash
cd `dirname $0`; pwd
for i in *.pdf ; do
    if [[ $i != *-compressed* ]] ; then    #判断是否是已转换文件，防止再次在同一文件夹中执行时重复转换
        echo "正在压缩:$i"
        gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dQUIET -dCompatibilityLevel=1.4 -sOutputFile=${i:0:-4}-compressed.pdf $i
        echo "已创建压缩后的pdf文件:${i:0:-4}-compressed.pdf"
    fi
done
