::create 21:04 2012-10-11
::lastmodify:21:05 2012-10-11
::author mang
::version 1.0
::���ܣ�����wiz�û����ݵ��������ļ������������ļ���������ƻ��������ڶ����Զ�����wiz����
::ʹ�ã���������ر������������Լ���·�����ļ�������21�� ��24��

::#########�ر���س���####################
::�ر�wiz��صĽ��̣�����wiz������index���ܱ�ѹ������
@echo off
title wizBackup  
taskkill /f /t /im Wiz.exe
taskkill /f /t /im WizTasks.exe

::########������ر���##########
::���û�������
path=%path%;"D:\Program Files\HaoZip";
::��ȡ��ǰ����
set name=%date%
::���ñ��ݵ�·��
set wizBackupPath="F:\ConfigBackup\wizbackup"
::������󱸷ݵ��ļ���
::����д��"%wizBackupPath%""[wizbackup][%name%]"��������Ϊ[]�������ַ�����Ҫ�����ţ������ط����˷�������
set wizBackupName=%wizBackupPath%"\wizbackup[%name%]"
::���ñ���Դ��·��
set wizSource="E:\ApplicationData\wiz"

::##########����####################
::ѹ������
HaoZipC a -tzip %wizBackupName% %wizSource% 
@rem ѹ�����


::@pause
