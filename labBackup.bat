::lastmodify:2012��4��15��19ʱ04��10��
::create:15:45 2012-5-21
::author:mang
::version:5.1
::����lab���ݵ��������ļ�

::-----�淶˵��------
::�������ʵ���·���йصı�����path��β ��configBackupPath
::����ģ���е�Դ·����Source��β ��vimrcSource
::����ģ���е�Ŀ��·����Backup��β ��firefoxBackup
::��·����صı�����ֵʱ��Ҫ�����ţ�����Ժ����ñ���ʱ�ּ����ţ�����ͳһ������ʱ�����š���ʵ������Ϊ�˰ѿո���������
::��·����صı�����ֵʱ���Ҫ��\,�� @set pentadactylHome=C:\Documents and Settings\mang2  mang2����û��\

rem ����ȫ����صı���
::ȫ�ֱ���ָ���õı�����������ָ���ļ���ȫ�ֵġ����ڸ��Ա�����Ҫ�ı������ڸ��Ե�ģ���֡�
::���û�������
@path=%path%;"C:\Program Files\HaoZip";"D:\Program Files\FileZilla Server"
::��ȡ��ǰ����
@set name=%date%
::��������·��
@set klivePath=E:\ApplicationData\netDisk\klive
::���ñ���һ���������ļ�ʱ��Ŀ��·�� ��_vimrc ftp
@set configBackupPath=E:\labBackup\Config Backup

::------------����_vimrc-----------------
rem ����_vimrc
::����_vimrc��Դ·��
@set vimrcSource=D:\Program Files\Vim\_vimrc
@copy "%vimrcSource%" "%configBackupPath%\vimrc\_vimrc[������lab][%date%]" 

::����ftp�����ļ�
rem ����ftp����
@copy "D:\Program Files\FileZilla Server\FileZilla Server.xml" "%configBackupPath%\FTP����\FileZilla Server[������lab][%date%].xml"

::-----------------����svn��---------------------------
rem ����svn
call backupSVN.bat

::---------------����weekwork--------------------------
rem ����vimwiki�е�project ��weekwork
@HaoZipC a -tzip "E:\GTD\weekworkBackup\[ProjectBackup][%name%]" "%klivePath%\wiki\work\html\*.*"
::��2012-04-15ֹͣʹ��weekwrk.mmap ��wiz-��&��Ҫ�������� ����
::copy "%klivePath%\document\pomodoro\Weekwork.mmap" "E:\GTD\weekworkBackup\[weekworkBackup][%name%].mmap"  


rem ����ע���
::����ϵͳע���,����·��Ϊ"E:\labBackup\Config Backup\labע�����\ ������ʽΪ[lab][��ǰ����].reg ��[lab][2011-05-07 ����һ].reg
::������������� ��˫���Ű�config backup�����������ܵ���ע���Ҳ��������֪Ϊ�Σ����Ƕ����������ù�������˫������������·�����������пո��Ŀ¼����һ����Ч����
@regedit /e "E:\labBackup\Config Backup\labע�����\[lab][%name%].reg"

::---------------����Time.log��ʹ���µ�Time.log-------------------
rem ����Time.log
::����TimeNormalΪ Time.logģ���Դ·��
@set TimeLogSource=%klivePath%\applicationData\TimeLog\TimeNormal.log
::����TimeLog ΪTime.log��Ŀ��·��
@set TimeLog=%klivePath%\applicationData\TimeLog\Time.log
::����Time.log
copy "%TimeLog%" "E:\GTD\weekworkBackup\Time[%date%].log" 
::ʹ��Time.log��ģ���滻�ɵ�Time.log
copy "%TimeLogSource%" "%TimeLog%"

::---------------����firefox�û�Ŀ¼----------------
::���ñ���firefoxʱ��Դ·��
@set firefoxSource=C:\Documents and Settings\mang2\Application Data\Mozilla\Firefox\Profiles
::���ñ���firefox�û�Ŀ¼��Ŀ��·��
@set firefoxBackup=E:\labBackup\Config Backup\firefox����
::�ȹص�firefox�Ľ����ٸ���
taskkill /f /t /im firefox.exe
::����firefox�û�Ŀ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
xcopy  "%firefoxSource%" "%firefoxBackup%"  /y /s
::����pentadactyl��Ŀ¼·��
@set pentadactylHome=C:\Documents and Settings\mang2
::����pentadactyl�û�Ŀ¼
xcopy "%pentadactylHome%\pentadactyl" "%firefoxBackup%\pentadactyl" /y /s 
::����pentadactylrc
copy /y "%pentadactylHome%"\_pentadactylrc "%firefoxBackup%"
::------------------����E�����Ŀ¼-----------------------------
::ѹ��E�����Ŀ¼,ѹ���ļ���ʽΪzip,������ʽΪ��[lab E�̱���][��ǰ����] �磺[lab E�̱���][2011-05-07 ����һ]
rem E����ر���
HaozipC a -tzip "F:\share\FTP\mang421\[lab E�̱���][%name%]" E:\Document E:\e-book  E:\labBackup E:\picture E:\ѧϰ��� E:\job E:\GTD E:\GTD0 E:\CodeSpace E:\TIJ4 "E:\��&��&��&��" E:\Repositories E:\ApplicationData E:\other

::------------------����D�����Ŀ¼-------------------------------
::ѹ��D�����Ŀ¼,ѹ���ļ���ʽΪzip,������ʽΪ��[lab D�̱���][��ǰ����] �磺[lab D�̱���][2011-05-07 ����һ]
rem D����ر���
HaoZipC a -tzip "F:\share\FTP\mang421\[lab D�̱���][%name%]" D:\cur D:\shortcut "D:\Program Files\Vim" D:\smallToolPath

::-----------����FTP����------------------
"FileZilla Server"/start
pause
