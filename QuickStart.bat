::last modify:16:05 2012-5-13
::Author:mang
::Version:1.0
::Function:快速打开相关程序，以后也可用于开机启动其它程序的批处理。


::关闭命令回显，其实下面有的命令已经设置了不回显 如@path=%path%。但这里设置的是全局的。
@echo off

echo 设置path……
@path=%path%;

echo 启动mang.ahk……
D:
cd Program Files\AutoHotkey
start AutoHotkey "E:\ApplicationData\netDisk\klive\application\ahk\mang.ahk"

echo 启动Evernote.exe……
D:
cd "D:\Program Files\Evernote\Evernote\"
start EvernoteTray.exe

echo 启动klive……
C:
cd "C:\Users\mang\AppData\Roaming\Kingsoft\klive\bin\"
start klive.exe

echo 启动nutstore……
D:
cd "D:\Program Files\nutstore\"
start NutstoreClient.exe

::pause
