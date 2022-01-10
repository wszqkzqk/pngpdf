##  批量将所在目录下的pdf转化为纯图pdf、

一个非常简单的转化脚本，只是怕忘记了才传上来

可以批量将所在目录下的pdf转化为纯图pdf

由于转化为纯图后pdf的体积普遍会增加，所以还提供了一个pdf压缩工具控制大小

### 依赖

pdf转纯图pdf工具依赖`pdftoppm`和`convert`

pdf压缩工具依赖`Ghostscript`

### 使用

授予可执行权限后执行相应的文件即可

### 输出

1. 对于转纯图pdf
- `i.pdf`的输出文件为`i-pic.pdf`
2. 对于pdf压缩
- `i.pdf`的输出文件为`i-compressed.pdf`

### 注意

压缩方式为有损压缩，请勿多次使用
