@echo off
set slection1=
set/p slection1=������IP��ַ��
netsh interface ip set address name="��������" source=static addr=%slection1% mask=255.255.255.0
set slection2=
set/p slection2=���������ص�ַ��
netsh interface ip set address name="��������" gateway=%slection2% gwmetric=0

set slection3=
set/p slection3=��������dns��ַ
netsh interface ip set dns name="��������" source=static addr=%slection3% register=PRIMARY

set slection4=
set/p slection4=�����뱸��dns��ַ
netsh interface ip add dns name="��������" addr=%slection4%
netsh interface ip set wins name="��������" source=static addr=none
pause 