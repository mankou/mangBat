::lastmodify:2013-3-17 21:24:07
::create:2011��7��28��01ʱ23��11��
::author:mang
::version:4.0
::����drom���ݵ��������ļ�,��Ҫ���ڱ���C�����Ŀ¼��d��program Ŀ¼�²��������û�·���ĳ�����û�Ŀ¼��vim
::***********��ʷ˵��*************
::Version3.0
	::2013-3-8 01:34 �޸��˲�����ȷ���ݼƻ����� startup��bug.�����Ѿ�ע�͵��Ĳ���Ҫ���ݵ����ݶ���������
::Version3.0
	::2012-11-4 20:14:06�󲿷ֱ��ݹ�����CrashPlan���档����ֻ�е� ����c�����Ŀ¼������ditto���ݿ⡣

::���û�������
path=%path%;"C:\WINDOWS";"D:\Program Files\HaoZip"
::��ȡ��ǰ����
set name=%date%
::���ñ��ݵ���Ŀ¼
set configBackupPath=F:\ConfigBackup


::-------------------ɾ��ditto�ɵ����ݿ⣬�����µ����ݿ��ļ�--------------------
::��Ϊditto��Ŀ̫��ͱȽ������������ﶨ������һ�Ρ�

@taskkill /f /t /im ditto.exe
::��ɾ���ɵ��ļ�
del E:\ApplicationData\ditto\ditto.db
::����������һ���ļ�Ϊ ditto.db
copy E:\ApplicationData\ditto\ditto_2.db E:\ApplicationData\ditto\ditto.db
::-------------------ɾ��ditto�ɵ����ݿ⣬�����µ����ݿ��ļ�--------------------


::-----------------���ݼƻ�����Ŀ¼----------------------
::���ñ��ݼƻ�������صı���
set taskBackup=%configBackupPath%\system\Tasks
set taskSource=C:\Windows\System32\Tasks


::��ɾ����Ŀ¼������Ŀ¼���ļ������½�һ��������Ŀ¼����Ϊ����xcopy��ɾ���ļ����������ɾ���˸���Դ�е��ļ��������ﱸ��ʱ��Ȼ��ɾ�����ļ��ڡ������ﱸ��ֻ���� ������
::/s ��ʾ����ɾ����Ŀ¼ ��ɾ����Ŀ¼�µ����ļ���Ŀ¼ /q��ʾ����ģʽ����ֱ��ɾ��������ѯ���㡣
rd /s /q "%taskBackup%"
mkdir "%taskBackup%"
::���ݼƻ�����Ŀ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
xcopy "%taskSource%" "%taskBackup%" /y /s 
::-----------------���ݼƻ�����Ŀ¼----------------------

::----------------����startupĿ¼-----------------------
::����startup��صı���
set startupBackup=%configBackupPath%\system\startup
set startupSource=C:\Users\mang\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

::��ɾ����Ŀ¼������Ŀ¼���ļ������½�һ��������Ŀ¼����Ϊ����xcopy��ɾ���ļ����������ɾ���˸���Դ�е��ļ��������ﱸ��ʱ��Ȼ��ɾ�����ļ��ڡ������ﱸ��ֻ���� ������
::/s ��ʾ����ɾ����Ŀ¼ ��ɾ����Ŀ¼�µ����ļ���Ŀ¼ /q��ʾ����ģʽ����ֱ��ɾ��������ѯ���㡣
rd /s /q "%startupBackup%"
mkdir "%startupBackup%"

::����startupĿ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
xcopy "%startupSource%" "%startupBackup%" /y /s 
::----------------����startupĿ¼-----------------------

::-----------------����ע���--------------
::����ϵͳע���,����·��Ϊ"F:\Config Backup\ ������ʽΪ[lab][��ǰ����].reg ��[lab][2011-05-07 ����һ].reg
::������������� ��˫���Ű�config backup�����������ܵ���ע���Ҳ��������֪Ϊ�Σ����Ƕ����������ù�������˫������������·�����������пո��Ŀ¼����һ����Ч����
set regeditBackup=%configBackupPath%\system\regedit
regedit /e "%regeditBackup%\[dorm][ע�����][%name%].reg"
::-----------------����ע���--------------


::-------------���±�����䶼�ѷϳ���������������档��crashplan��---------------------------------------------------

::-----����dorm�Ա������¼-----------------
::����ֻ�����Ա������¼����Ϊ�Ա����������û��ļ�����·��
::HaoZipC a -tzip "F:\ConfigBackup\�����¼\[dorm][ �Ա������¼][%name%]" "D:\Program Files\AliWangWang\profiles\cntaobaoman1m"
::-----����dorm�Ա������¼-----------------

::--------����vim---------
::set vimBackup=%configBackupPath%\vim
::set vimSource=d:\Program Files\Vim
::����vimĿ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
::xcopy "%vimSource%" "%vimBackup%" /y /s 
::--------����vim---------
::------------------����firefoxĿ¼-----------------------
::2013-03-14����crashplan���ݵ�firefox�����ã��ָ���һ�����⣬��������ָ���firefxo�����ļ��ı���
set firefoxBackup=%configBackupPath%\firefoxBackup\firefoxProfile
set firefoxSource=C:\Users\mang\AppData\Roaming\Mozilla\Firefox\Profiles
::�ص��ý����Ǳ���� �����ƺ�������ļ�ֻ��6MB ������û���𵽱��ݵ�����
taskkill /f /t /im firefox.exe
::��ɾ���ɵı����ٸ��ƣ���ǰ��ʱ�䷢��xcopy����ֻ�������������ӵĶ����ƹ����ˣ�ɾ�������ﲻɾ����
rd /s /q "%firefoxBackup%\"
::ɾ��������ٴ�����ôһ��Ŀ¼����xcopy��������Ŀ¼�����ļ���
mkdir "%firefoxBackup%"
::����firefox�û�Ŀ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
xcopy  "%firefoxSource%" "%firefoxBackup%"  /y /s

::����pentadactyl��·��
::set pentadactylBackup=%configBackupPath%\firefoxBackup
::set pentadactylHome=C:\Users\mang
::����pentadactylĿ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
::xcopy "%pentadactylHome%\pentadactyl" "%pentadactylBackup%\pentadactyl" /y /s 
::����pentadactylrc
::copy /y "%pentadactylHome%"\_pentadactylrc "%pentadactylBackup%
::------------------����firefoxĿ¼-----------------------


::-----����FTP�����ļ�----------------
::����ftp�����ļ�
::rem ����ftp����
::@copy "D:\Program Files\FileZilla Server\FileZilla Server.xml" "%configBackupPath%\FTP\FileZilla Server[������dorm][%date%].xml"
::-----����FTP�����ļ�----------------
::pause
