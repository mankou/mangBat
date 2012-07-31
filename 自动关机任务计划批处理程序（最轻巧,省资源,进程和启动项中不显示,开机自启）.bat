@echo off&title 自定义关机时间
sc config   Schedule  start= DEMAND
net start Schedule 
color 17
mode con: cols=80 lines=25

:SetShutDownTime
echo\
for /f "tokens=1,2,3,4 delims=- " %%a in ('date /t') do set name=%%a年%%b月%%c日 %%d
echo.当前时间为%name% %time:~,-6%
set /p var=请以00:00格式输入一个关机时间(要消除之前设定请输入"C"): 
if "%var%"=="" echo 请输入时间&pause&goto :SetShutDownTime
if /i %var% == C goto :Clear
at %var% shutdown /f  /s /t 0 >nul 2>nul
if %errorlevel% EQU 0 goto :Dispaly
echo 格式有误,请重新输入.&pause&goto :SetShutDownTime

:Dispaly
color 1a
echo.系统将在%var%关机.
pause
Exit

:Clear
at /d /y >nul 2>nul
echo.已清除关机时间.
goto :SetShutDownTime
