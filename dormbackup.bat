::create:2011��7��28��01ʱ23��11��
::lastmodify:18:09 2012-7-27
::author:mang
::version:2.0
::����drom���ݵ��������ļ�,��Ҫ���ڱ���C�����Ŀ¼��d��program Ŀ¼�²��������û�·���ĳ�����û�Ŀ¼��vim

::���û�������
path=%path%;"C:\WINDOWS";"D:\Program Files\HaoZip"
::��ȡ��ǰ����
set name=%date%
::���ñ��ݵ���Ŀ¼
set configBackupPath=F:\ConfigBackup


::-----����dorm�Ա������¼-----------------
HaoZipC a -tzip "F:\ConfigBackup\�����¼\[dorm][ �Ա������¼][%name%]" "D:\Program Files\AliWangWang\profiles\cntaobaoman1m"
::-----����dorm�Ա������¼-----------------

::--------����vim---------
copy "D:\Program Files\Vim" "F:\ConfigBackup\-vimrc[dorm][windows][%date%backup]"
::--------����vim---------
set vimBackup=%configBackupPath%\vim
set vimSource=d:\Program Files\Vim
::����vimĿ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
xcopy "%vimSource%" "%vimBackup%" /y /s 

::------------------����firefoxĿ¼-----------------------
set firefoxBackup=%configBackupPath%\firefoxBackup
set firefoxSource=C:\Users\mang\AppData\Roaming\Mozilla\Firefox\Profiles
taskkill /f /t /im firefox.exe
::����firefox�û�Ŀ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
xcopy  "%firefoxSource%" "%firefoxBackup%"  /y /s
::����pentadactyl��·��
set pentadactylBackup=%configBackupPath%\firefoxBackup
set pentadactylHome=C:\Users\mang
::����pentadactylĿ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
xcopy "%pentadactylHome%\pentadactyl" "%pentadactylBackup%\pentadactyl" /y /s 
::����pentadactylrc
copy /y "%pentadactylHome%"\_pentadactylrc "%pentadactylBackup%
::------------------����firefoxĿ¼-----------------------

::-----------------���ݼƻ�����Ŀ¼----------------------
::���ñ��ݼƻ�������صı���
set taskBackup=%configBackupPath%\system\Tasks
set taskSource=C:\Windows\System32\Tasks
::���ݼƻ�����Ŀ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
xcopy "%taskSource%" "%taskBackup%" /y /s 
::-----------------���ݼƻ�����Ŀ¼----------------------

::----------------����startupĿ¼-----------------------
::����startup��صı���
set startupBackup=%configBackupPath%\system\startup
set startupSource=C:\Users\mang\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
::����startupĿ¼,/y :ǿ�Ƹ��� /s ����Ŀ¼����Ŀ¼
xcopy "%startupSource%" "%startupBackup%" /y /s 
::----------------����startupĿ¼-----------------------

::-----------------����ע���--------------
::����ϵͳע���,����·��Ϊ"F:\Config Backup\ ������ʽΪ[lab][��ǰ����].reg ��[lab][2011-05-07 ����һ].reg
::������������� ��˫���Ű�config backup�����������ܵ���ע���Ҳ��������֪Ϊ�Σ����Ƕ����������ù�������˫������������·�����������пո��Ŀ¼����һ����Ч����
set regeditBackup=%configBackupPath%\system\regedit
regedit /e "%regeditBackup%\[dorm][ע�����][%name%].reg"
::-----------------����ע���--------------
