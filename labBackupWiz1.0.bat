::create 2011��12��24��14ʱ35��14�� 
::lastmodify:2011��12��24��14ʱ35��23��
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
path=%path%;"C:\Program Files\HaoZip";
::��ȡ��ǰ����
set name=%date%
::���ñ��ݵ�·��
set wizBackupPath="E:\labBackup\Wiz backup\"
::������󱸷ݵ��ļ���
::����д��"%wizBackupPath%""[wizbackup][%name%]"��������Ϊ[]�������ַ�����Ҫ�����ţ������ط����˷�������
set wizBackupName=%wizBackupPath%"[wizbackup][%name%]"

::##########����####################
::ѹ������
HaoZipC a -tzip %wizBackupName%  "E:\Document\ApplicationData\Wiz"
