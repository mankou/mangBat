TITLE Windows 7���񱸷ݹ���
@echo off
@echo ========================================================================
@echo Windows 7���񱸷ݹ��� (C) 2011
@echo ========================================================================
@echo.
@echo �ù����ܹ��Զ�����Windows 7�ķ���״̬���Է����պ���л�ԭ��
@echo.
pause
REM ��ȡ��ǰ���ں�ʱ��
for /f "tokens=1, 2, 3, 4 delims=-/. " %%j in ('Date /T') do set FILENAME=�ָ�����_%%j_%%k_%%l_%%m
for /f "tokens=1, 2 delims=: " %%j in ('TIME /T') do set FILENAME=%FILENAME%_%%j_%%k.cmd
REM ��ȡ���з�������
sc query type= service state= all| findstr /r /C:"SERVICE_NAME:" >tmpsrv.txt
echo ���ڱ������״̬�� %FILENAME% �ļ������Ժ򡭡�
REM ����ǰ����״̬�������������ļ�
echo @echo ����״̬������%TIME% %DATE% >"%FILENAME%"
echo @pause >>"%FILENAME%"
for /f "tokens=2 delims=:" %%j in (tmpsrv.txt) do @( sc qc %%j |findstr  START_TYPE >tmpstype.txt &&  for /f "tokens=4 delims=:_ " %%s in (tmpstype.txt) do @echo sc config  %%j start= %%s >>"%FILENAME%")
echo @pause >>"%FILENAME%"
del tmpsrv.txt
del tmpstype.txt
echo ����״̬�Ѿ�������%FILENAME%�ļ����ˣ���������ʱ���������ָ�����
pause