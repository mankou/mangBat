::create:11:33 2012-7-31
::lastmodify:12:15 2012-7-31
::author:mang
::version:1.0
::funtion: ʹ��Time.log��ģ���滻�ɵ�Time.log��ÿ��ʹ���µ�timelog
::-------------�ر�ע��-------------------
::���и�������ǰ��ر���Timelog����Ϊ������������ԭ��Timelog����ʧ�������ڲ��Ը�������ʱ��


::����TimeNormalΪ Time.logģ���Դ·��
@set TimeLogSource=E:\ApplicationData\netDisk\klive\applicationData\TimeLog\TimeNormal.log
::����TimeLog ΪTime.log��Ŀ��·��
@set TimeLog=E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time.log
::�Ȱ�ԭ����Timelog�����£���ö�����и�������ʱ��ԭ����timelog��ʧ��
::��ע�������ַ���Ҳֻ�ܱ�֤�������λ�Ҫ���ҵ�ԭ��Timelog�ı��ݡ����е�һ�α�����Time_2.log�� ���еڶ��α�����Time_3.log��
copy "%TimeLog%" "E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time_2.log"
copy "E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time_2.log" "E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time_3.log"
::ʹ��Time.log��ģ���滻�ɵ�Time.log
copy "%TimeLogSource%" "%TimeLog%"
::pause
