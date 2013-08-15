::last modify:2013-6-2 15:49:15
::Author:mang
::version:1.0
::function: 清空回收站的批处理文件

::其它说明：该批处理文件使用了Nircmd.exe 若该文件路径发生变化，则该批处理文件失效。

@echo off
@path=%path%;E:\ApplicationData\netDisk\Dropbox\application\windows\NirCmd
nircmd emptybin >nul
exit
