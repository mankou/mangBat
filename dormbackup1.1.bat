::create:2011��7��28��01ʱ23��11�� lastmodify:2011��8��15��20ʱ23��22��
::author:mang
::version:1.1
::����drom���ݵ��������ļ�

::���û�������
path=%path%;"C:\WINDOWS";"D:\Program Files\HaoZip"
::��ȡ��ǰ����
set name=%date%
::����ϵͳע���,����·��Ϊ"F:\Config Backup\ ������ʽΪ[lab][��ǰ����].reg ��[lab][2011-05-07 ����һ].reg
::������������� ��˫���Ű�config backup�����������ܵ���ע���Ҳ��������֪Ϊ�Σ����Ƕ����������ù�������˫������������·�����������пո��Ŀ¼����һ����Ч����
regedit /e "F:\ConfigBackup\ע�����\[dorm][ע�����][%name%].reg"
::����dorm�Ա������¼
HaoZipC a -tzip "F:\ConfigBackup\�����¼\[dorm][ �Ա������¼][%name%]" "D:\Program Files\AliWangWang\profiles\cntaobaoman1m"
::����dorm���������¼
::����fetion��2011��ʼ�����Լ����������¼·���ˣ��������ﲻ�ڱ���
::HaoZipC a -tzip "F:\ConfigBackup\�����¼\[dorm][ ���������¼][%name%]" "F:\�ҵ��ĵ�\Fetion"
::����QQ�����Լ����������¼·�����������豸��
::����windows��vim�������ļ�
copy "D:\Program Files\Vim" "F:\ConfigBackup\-vimrc[dorm][windows][%date%backup]"

