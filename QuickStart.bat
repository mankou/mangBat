::last modify:2013-7-29 11:02:06
::Author:mang
::Version:2.2
::Function:快速打开相关程序，以后也可用于开机启动其它程序的批处理。


::关闭命令回显，其实下面有的命令已经设置了不回显 如@path=%path%。但这里设置的是全局的。
@echo off

echo 设置path……
@path=%path%;

echo 启动mang.ahk……
D:
cd Program Files\AutoHotkey
start AutoHotkey "E:\ApplicationData\netDisk\Dropbox\application\ahk\mang.ahk"


::echo 启动Internet off……
::D:
::cd "D:\Program Files\InternetOff"
::start InternetOff.exe


echo 启动doit.im……
D:
cd "D:\Program Files\Doit.im\bin\" 
start Doit.im.exe

echo 启动listary……
D:
cd "D:\Program Files\Listary\" 
start Listary.exe


::echo 启动IPMsg.exe……
::D:
::cd "d:\smallTools\ipmsg\"
::start IPMsg3.31.exe

echo 启动viatc
E:
cd "e:\ApplicationData\netDisk\Dropbox\application\viatc"
start viatc.exe

echo 启动shaveyaks.mmap
E:
cd  "E:\ApplicationData\netDisk\Dropbox\1cur\"
start ShaveYaks.mmap


::echo 启动klive……
::D:
::cd "D:\Program Files\Kingsoft\Klive"
::start kuaipan.exe

::echo 启动Evernote.exe……
::D:
::cd "D:\Program Files\Evernote\Evernote\"
::start EvernoteTray.exe


::echo 启动nutstore……
::D:
::cd "D:\Program Files\nutstore\bin"
::start NutstoreClient.exe

::echo 启动Belvedere……
::D:
::cd "D:\Program Files\Belvedere\"
::start Belvedere.exe

::pause
