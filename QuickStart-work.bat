::last modify:2013-9-12 17:56:43
::Author:mang
::Version:1.0
::Function:�ʼǱ��������ڹ���ʱ���ٴ������������


::�ر�������ԣ���ʵ�����е������Ѿ������˲����� ��@path=%path%�����������õ���ȫ�ֵġ�
@echo off

echo ����path����
@path=%path%;

echo ����mang-work.ahk����
D:
cd Program Files\AutoHotkey
start AutoHotkey "e:\ApplicationData\netDisk\Dropbox\application\ahk\mang-work.ahk"


::echo ����Internet off����
::D:
::cd "D:\Program Files\InternetOff"
::start InternetOff.exe


echo ����doit.im����
D:
cd "D:\Program Files\Doit.im\bin\" 
start Doit.im.exe

echo ����listary����
D:
cd "D:\Program Files\Listary\" 
start Listary.exe


::echo ����IPMsg.exe����
::D:
::cd "d:\smallTools\ipmsg\"
::start IPMsg3.31.exe

echo ����viatc
E:
cd "e:\ApplicationData\netDisk\Dropbox\application\viatc"
start viatc.exe

::echo ����shaveyaks.mmap
::E:
::cd  "E:\ApplicationData\netDisk\Dropbox\1cur\"
::start ShaveYaks.mmap


::echo ����klive����
::D:
::cd "D:\Program Files\Kingsoft\Klive"
::start kuaipan.exe

::echo ����Evernote.exe����
::D:
::cd "D:\Program Files\Evernote\Evernote\"
::start EvernoteTray.exe


::echo ����nutstore����
::D:
::cd "D:\Program Files\nutstore\bin"
::start NutstoreClient.exe

::echo ����Belvedere����
::D:
::cd "D:\Program Files\Belvedere\"
::start Belvedere.exe

::pause
