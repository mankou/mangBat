@echo off

����title ϵͳ�ػ�

����:loop

����cls

����color bc

����echo.

����echo.

����echo *** WindowsXP ���ٹػ�ϵͳ ***

����echo.

����echo ���ٹػ�������������������ֱ�ӻس�

����echo ��ʼ����ʱ�ػ�����������������1+�س�

����echo �趨ʱ���ػ�����������������2+�س�

����echo ��ʾ��ʱ�ػ�������������������3+�س�

����echo �趨ÿ��ػ�������������������4+�س�

����echo ȡ��ϵͳ�ػ�������������������ո�+�س�

����echo �˳���������������������������Q+�س�

����echo.

����echo.

����set a=

����set /p a= �� ������ ��:

����if "%a%"=="1" goto aaa

����if "%a%"=="2" goto bbb

����if "%a%"==" " goto ccc

����if "%a%"=="" goto ddd

����if "%a%"=="3" goto eee

����if "%a%"=="4" goto fff

����if "%a%"=="q" exit

����goto loop

����:ddd

����@echo off

����color e5

����cls

����echo.

����echo.

����echo ��ϵͳ�����ػ����������̡�

����pause

����echo.

����::ntsd -c q -pn %run%

����taskkill /f /t /im pfw.exe /f /t /im internat.exe /f /t /im explorer.exe

����shutdown -s -f -t 0 -c "ȡ��������shutdown -a"

����exit

����:aaa

����@echo off

����color f4

����echo.

����echo.

����echo.

����echo ���ڽ�����ϵͳ�Զ��ػ�,���ڴ����뵹��ʱ������س�,ϵͳ�����趨ʱ���Զ��ر�

����set mytime=

����set /p mytimes= �� ����ʱ�ػ������� Сʱ����:

����set /a mytimes=%mytimes%*3600

����set /p mytimef= �� ����ʱ�ػ������� ��������:

����set /a mytimef=%mytimef%*60

����set /p mytimem= �� ����ʱ�ػ������� �� ����:

����set /a mytime=%mytimes%+%mytimef%+%mytimem%

����shutdown -s -t %mytime% -c "ȡ��������shutdown -a"

����cls

����echo.

����echo ��ϵͳ����%mytime%���ػ���

����echo.

����pause

����goto loop

����:bbb

����@echo off

����color f9

����echo.

����echo.

����echo.

����echo ���ڽ�����ϵͳ�Թػ�,���ڴ�����ػ�ʱ��(��12:00)�س�,ϵͳ����ʱ�Զ��ر�

����set mytimes=

����set mytimef=

����set /p mytimes= �� ��ʱ�ػ������� ʱ��:

����set /p mytimef= �� ��ʱ�ػ������� �֡�:

����at %mytimes%:%mytimef% shutdown -s -t 0

����::���ʾ��mytime��ִ��shutdown -s -t 0����.�����ǰʱ���������ִ��ʱ��,��Ĭ��Ϊ����ִ��,0Ϊ����ʱʱ��.

����echo.

����echo �����ڽ���ʾ���мƻ���

����echo ����������������������������������������������������������������

����at

����echo ����������������������������������������������������������������

����pause

����::��ʾ�ƻ�����ͣ

����goto loop

����:ccc

����@echo off

����color f2

����echo.

����echo.

����echo.

����echo �����ڽ�����ȡ��ϵͳ�Զ��ػ���

����echo.

����pause

����shutdown -a

����echo.

����echo.

����echo �����ڽ���ʾ���мƻ�,�ڻس���ȡ���ƻ�������ȷ�ϡ�

����echo ��������������������������������������������������������������

����at

����echo ��������������������������������������������������������������

����pause

����at /del /yes

����::ȡ�����мƻ�������ȷ��

����cls

����echo.

����echo ��ϵͳ�Ѿ�ȡ���Զ��ػ���

����echo ��ϵͳ�Ѿ�ȡ�����мƻ�����

����echo.

����pause

����goto loop

����:eee

����@echo off

����color f4

����echo.

����echo.

����echo.

����echo ���ڽ�����ϵͳ�Զ��ػ�,���ڴ����뵹��ʱ������س�,ϵͳ�����趨ʱ���Զ��ر�

����set mytime=

����::������Ϊ����mytime����ֵ,�����ڲ�ע�������´��ڱ���ֵ,��Ϊһ�ֺõ�ϰ��.

����set mytimes=0

����::��ֵΪ0��Ϊ��ʹ%mytimes%������������,��ͬ.

����set mytimef=0

����set mytimem=0

����set /p mytimes= �� ����ʱ�ػ������� Сʱ����:

����set /a mytimes=%mytimes%*3600

����set /p mytimef= �� ����ʱ�ػ������� ��������:

����set /a mytimef=%mytimef%*60

����set /p mytimem= �� ����ʱ�ػ������� �� ����:

����color a3

����mode con cols=30 lines=4

����set /a mytime=%mytimes%+%mytimef%+%mytimem%

����SET wait=ping -n 2 127.0.0.1 ^>^nul

����for /l %%n in (%mytime%,-1,0) do (

����rem cls

����echo *******************

����echo ��%%n����Զ��ػ���

����echo *******************

����%wait%

����cls

����)

����shutdown -s -t 0

����goto loop

����:fff

����@echo off

����color f9

����echo.

����echo.

����echo.

����echo ���ڽ�����ϵͳÿ�������Թػ�

����echo.

����set myopengs=

����set /p myopengs= ���ظ��趨�����뵥�ո�+�س�,���μ����һ���趨��س���

����echo.

����echo ���ڴ�����ػ�ʱ��(��12:00)��س�,ϵͳ����ʱ�ر�

����echo.

����set mytimes=

����set mytimef=

����set /p mytimes= �� ��ʱ�ػ������� ʱ��:

����set /p mytimef= �� ��ʱ�ػ������� �֡�:

����at %mytimes%:%mytimef% /every:M,T,W,Th,F,S,Su shutdown -s -f

����echo.

����echo �����ڽ���ʾ���мƻ���

����echo ����������������������������������������������������������������

����at

����echo ����������������������������������������������������������������

����pause

����::��ʾ�ƻ�����ͣ

����if "%myopengs%"==" " goto :fff

����goto loop