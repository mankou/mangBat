::create:2011��5��9��16ʱ46��04��  lastmodify:2012��2��19��22ʱ00��40��
::author:mang
::version:4.6
::����lab���ݵ��������ļ�

rem ������ر���
::���û�������
@path=%path%;"C:\Program Files\HaoZip";"D:\Program Files\FileZilla Server"
::��ȡ��ǰ����
@set name=%date%
::����_vimrc ftp����ʱ�õ��˸�·��
@set configBackupPath=E:\labBackup\Config Backup

::����_vimrc
rem ����_vimrc
@copy "D:\Program Files\Vim\_vimrc" "%configBackupPath%\vimrc\_vimrc[������lab][%date%]" 

::����ftp����
rem ����ftp����
@copy "D:\Program Files\FileZilla Server\FileZilla Server.xml" "%configBackupPath%\FTP����\FileZilla Server[������lab][%date%].xml"

::����svn��
rem ����svn
call backupSVN.bat
::����weekwork
rem ����vimwiki�е�project ��weekwork
HaoZipC a -tzip E:\GTD\weekworkBackup\"[ProjectBackup][%name%]" "E:\netDisk\klive\wiki\work\html\*.*"
copy E:\netDisk\klive\�ĵ�\Weekwork.mmap E:\GTD\weekworkBackup\"[weekworkBackup][%name%].mmap"  


rem ����ע���
::����ϵͳע���,����·��Ϊ"E:\labBackup\Config Backup\labע�����\ ������ʽΪ[lab][��ǰ����].reg ��[lab][2011-05-07 ����һ].reg
::������������� ��˫���Ű�config backup�����������ܵ���ע���Ҳ��������֪Ϊ�Σ����Ƕ����������ù�������˫������������·�����������пո��Ŀ¼����һ����Ч����
@regedit /e "E:\labBackup\Config Backup\labע�����\[lab][%name%].reg"
::ѹ��E�����Ŀ¼,ѹ���ļ���ʽΪzip,������ʽΪ��[lab E�̱���][��ǰ����] �磺[lab E�̱���][2011-05-07 ����һ]
rem E����ر���
HaozipC a -tzip F:\share\FTP\mang421\"[lab E�̱���][%name%]" E:\Document E:\e-book  E:\labBackup E:\picture E:\ѧϰ��� E:\job E:\GTD E:\GTD0 E:\CodeSpace E:\TIJ4 E:\"��&��&��&��" E:\Repositories E:\netDisk E:\other
::ѹ��D�����Ŀ¼,ѹ���ļ���ʽΪzip,������ʽΪ��[lab D�̱���][��ǰ����] �磺[lab D�̱���][2011-05-07 ����һ]
rem D����ر���
HaoZipC a -tzip F:\share\FTP\mang421\"[lab D�̱���][%name%]" D:\cur D:\shortcut "D:\Program Files\Vim" D:\smallToolPath
::����FTP����
"FileZilla Server"/start
pause
