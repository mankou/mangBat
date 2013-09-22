::last modify:2013-9-12 17:56:43
::Author:mang
::Version:1.0
::Function:笔记本电脑用于工作时快速打开软件的批处理


::关闭命令回显，其实下面有的命令已经设置了不回显 如@path=%path%。但这里设置的是全局的。
@echo off

echo 设置path……
@path=%path%;

echo 启动mang-work.ahk……
D:
cd Program Files\AutoHotkey
start AutoHotkey "e:\ApplicationData\netDisk\Dropbox\application\ahk\mang-work.ahk"


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

::echo 启动shaveyaks.mmap
::E:
::cd  "E:\ApplicationData\netDisk\Dropbox\1cur\"
::start ShaveYaks.mmap


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
