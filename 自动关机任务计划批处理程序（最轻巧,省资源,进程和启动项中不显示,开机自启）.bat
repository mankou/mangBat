@echo off&title �Զ���ػ�ʱ��
sc config   Schedule  start= DEMAND
net start Schedule 
color 17
mode con: cols=80 lines=25

:SetShutDownTime
echo\
for /f "tokens=1,2,3,4 delims=- " %%a in ('date /t') do set name=%%a��%%b��%%c�� %%d
echo.��ǰʱ��Ϊ%name% %time:~,-6%
set /p var=����00:00��ʽ����һ���ػ�ʱ��(Ҫ����֮ǰ�趨������"C"): 
if "%var%"=="" echo ������ʱ��&pause&goto :SetShutDownTime
if /i %var% == C goto :Clear
at %var% shutdown /f  /s /t 0 >nul 2>nul
if %errorlevel% EQU 0 goto :Dispaly
echo ��ʽ����,����������.&pause&goto :SetShutDownTime

:Dispaly
color 1a
echo.ϵͳ����%var%�ػ�.
pause
Exit

:Clear
at /d /y >nul 2>nul
echo.������ػ�ʱ��.
goto :SetShutDownTime
