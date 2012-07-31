::{create:2011年9月23日16时32分15秒}{last modify:2011年9月23日16时32分19秒}
::author mang
::version 1.0
::该批处理文件用于备份本机svn库 采用全备份方式。
::具体使用时修改路径即可。需要修改的地方已经用#号标出,有三处需要修改

::#########以下修改路径################
rem 设置Subversion的安装目录
@set SVN_HOME="D:\Program Files\VisualSVN Server\bin"
rem 设置所有版本库的父目录
@set SVN_ROOT="E:\Repositories"
rem 设置备份的根目录
@set BACKUP_SVN_ROOT="E:\labBackup\svnBackup"
::#########以上修改路径################


::%date:~0,10%表示从当前系统日期中第"0"位开始取出"10"位。即从2011-09-23 星期五 中取出2011-09-23
@set BACKUP_DIRECTORY=%BACKUP_SVN_ROOT%\%date:~0,10%
::因为要用到svnadmin hotcopy 命令，所以在这里把该命令所以目录加到环境变量中，以后不论在哪台机器上都不用设置环境变量就可以正确运行该批处理文件。
rem 设置环境变量
@set path=%path%;%SVN_HOME%

::检查目标目录是否存在，若存则在删除。由于svnadmin hotcopy命令要求备份的目标目录必须是空的，所以这里做检查是必要的
@if exist %BACKUP_DIRECTORY% rd /s/q %BACKUP_DIRECTORY%
rem 新建备份的目录
::以当前日期为目录名
@mkdir %BACKUP_DIRECTORY%
rem 开始备份版本库
::由于for循环会产生很多命令，所以这里设置命令不回显
@echo off
for /r %SVN_ROOT% %%i in (.) do (
 ::如果该目录是版本库目录，即该目录下存在\conf\svnserve.conf文件，则用svnadmin hotcopy命令进行备份。否则不进行任何操作。%%~ni 表示将 %1 扩充到一个文件名
 if exist "%%i\conf\svnserve.conf" @svnadmin hotcopy %%i %BACKUP_DIRECTORY%\%%~ni
)
@echo on
rem 备份总的用户设置文件,共有四个
@copy  %SVN_ROOT%\authz 			%BACKUP_DIRECTORY% 
@copy %SVN_ROOT%\authz-windows 	%BACKUP_DIRECTORY%
@copy %SVN_ROOT%\htpasswd 		%BACKUP_DIRECTORY%
@copy %SVN_ROOT%\server.pid 		%BACKUP_DIRECTORY%
rem 建立svn备份日志到backup.log
@echo %BACKUP_SVN_ROOT%	备份到	%BACKUP_DIRECTORY%	于%date%%time:~0,8% >> %SVN_ROOT%/backup.log

::pause
