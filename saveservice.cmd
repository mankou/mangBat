TITLE Windows 7服务备份工具
@echo off
@echo ========================================================================
@echo Windows 7服务备份工具 (C) 2011
@echo ========================================================================
@echo.
@echo 该工具能够自动备份Windows 7的服务状态，以方便日后进行还原！
@echo.
pause
REM 获取当前日期和时间
for /f "tokens=1, 2, 3, 4 delims=-/. " %%j in ('Date /T') do set FILENAME=恢复服务_%%j_%%k_%%l_%%m
for /f "tokens=1, 2 delims=: " %%j in ('TIME /T') do set FILENAME=%FILENAME%_%%j_%%k.cmd
REM 获取所有服务名称
sc query type= service state= all| findstr /r /C:"SERVICE_NAME:" >tmpsrv.txt
echo 正在保存服务状态至 %FILENAME% 文件，请稍候……
REM 将当前服务状态保存至批处理文件
echo @echo 服务状态保存于%TIME% %DATE% >"%FILENAME%"
echo @pause >>"%FILENAME%"
for /f "tokens=2 delims=:" %%j in (tmpsrv.txt) do @( sc qc %%j |findstr  START_TYPE >tmpstype.txt &&  for /f "tokens=4 delims=:_ " %%s in (tmpstype.txt) do @echo sc config  %%j start= %%s >>"%FILENAME%")
echo @pause >>"%FILENAME%"
del tmpsrv.txt
del tmpstype.txt
echo 服务状态已经保存至%FILENAME%文件中了，您可以随时运行它来恢复服务。
pause