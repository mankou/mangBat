::{create:2011��9��23��16ʱ32��15��}{last modify:2011��9��23��16ʱ32��19��}
::author mang
::version 1.0
::���������ļ����ڱ��ݱ���svn�� ����ȫ���ݷ�ʽ��
::����ʹ��ʱ�޸�·�����ɡ���Ҫ�޸ĵĵط��Ѿ���#�ű��,��������Ҫ�޸�

::#########�����޸�·��################
rem ����Subversion�İ�װĿ¼
@set SVN_HOME="D:\Program Files\VisualSVN Server\bin"
rem �������а汾��ĸ�Ŀ¼
@set SVN_ROOT="E:\Repositories"
rem ���ñ��ݵĸ�Ŀ¼
@set BACKUP_SVN_ROOT="E:\labBackup\svnBackup"
::#########�����޸�·��################


::%date:~0,10%��ʾ�ӵ�ǰϵͳ�����е�"0"λ��ʼȡ��"10"λ������2011-09-23 ������ ��ȡ��2011-09-23
@set BACKUP_DIRECTORY=%BACKUP_SVN_ROOT%\%date:~0,10%
::��ΪҪ�õ�svnadmin hotcopy �������������Ѹ���������Ŀ¼�ӵ����������У��Ժ�������̨�����϶��������û��������Ϳ�����ȷ���и��������ļ���
rem ���û�������
@set path=%path%;%SVN_HOME%

::���Ŀ��Ŀ¼�Ƿ���ڣ���������ɾ��������svnadmin hotcopy����Ҫ�󱸷ݵ�Ŀ��Ŀ¼�����ǿյģ���������������Ǳ�Ҫ��
@if exist %BACKUP_DIRECTORY% rd /s/q %BACKUP_DIRECTORY%
rem �½����ݵ�Ŀ¼
::�Ե�ǰ����ΪĿ¼��
@mkdir %BACKUP_DIRECTORY%
rem ��ʼ���ݰ汾��
::����forѭ��������ܶ�����������������������
@echo off
for /r %SVN_ROOT% %%i in (.) do (
 ::�����Ŀ¼�ǰ汾��Ŀ¼������Ŀ¼�´���\conf\svnserve.conf�ļ�������svnadmin hotcopy������б��ݡ����򲻽����κβ�����%%~ni ��ʾ�� %1 ���䵽һ���ļ���
 if exist "%%i\conf\svnserve.conf" @svnadmin hotcopy %%i %BACKUP_DIRECTORY%\%%~ni
)
@echo on
rem �����ܵ��û������ļ�,�����ĸ�
@copy  %SVN_ROOT%\authz 			%BACKUP_DIRECTORY% 
@copy %SVN_ROOT%\authz-windows 	%BACKUP_DIRECTORY%
@copy %SVN_ROOT%\htpasswd 		%BACKUP_DIRECTORY%
@copy %SVN_ROOT%\server.pid 		%BACKUP_DIRECTORY%
rem ����svn������־��backup.log
@echo %BACKUP_SVN_ROOT%	���ݵ�	%BACKUP_DIRECTORY%	��%date%%time:~0,8% >> %SVN_ROOT%/backup.log

::pause
