@echo off
@ ECHO.
@ ECHO.
@ ECHO.                              ˵    ��
@ ECHO -----------------------------------------------------------------------
@ ECHO ���������������������������ɾ������վ����ʱĿ¼������򿪹����ĵ��ۼ�
@ ECHO �ȡ���ϵͳ�������а�����������ӵ��������ٶ�������Ҫָ���ñ��������ܸ�á�
@ ECHO �����ٶ���ͨ������Ϊ̫�����õ�����ռ����CPU���ڴ���Դ���¡�����ÿ��һ��
@ ECHO ʱ�䣬��Ghost�ָ�ϵͳ��������׵İ취��
@ ECHO -----------------------------------------------------------------------
@ ECHO.

echo ��������ϵͳ�����ļ������Ե�......
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"

::##################��mang���
::֮ǰ������vim�����ļ�����·�����ְ���Щ�����ļ�ɾ��~��ʾ
del "C:\Documents and Settings\mang\vimtmp\*~"
::##################��mang���
echo ����ϵͳ������ɣ�
echo. & pause 
