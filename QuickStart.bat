::last modify:16:05 2012-5-13
::Author:mang
::Version:1.0
::Function:���ٴ���س����Ժ�Ҳ�����ڿ����������������������


::�ر�������ԣ���ʵ�����е������Ѿ������˲����� ��@path=%path%�����������õ���ȫ�ֵġ�
@echo off

echo ����path����
@path=%path%;

echo ����mang.ahk����
D:
cd Program Files\AutoHotkey
start AutoHotkey "E:\ApplicationData\netDisk\klive\application\ahk\mang.ahk"

echo ����Evernote.exe����
D:
cd "D:\Program Files\Evernote\Evernote\"
start EvernoteTray.exe

echo ����klive����
C:
cd "C:\Users\mang\AppData\Roaming\Kingsoft\klive\bin\"
start klive.exe

echo ����nutstore����
D:
cd "D:\Program Files\nutstore\"
start NutstoreClient.exe

::pause
