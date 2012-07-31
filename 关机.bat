@echo off

　　title 系统关机

　　:loop

　　cls

　　color bc

　　echo.

　　echo.

　　echo *** WindowsXP 快速关机系统 ***

　　echo.

　　echo 快速关机……………………请直接回车

　　echo 开始倒计时关机……………请输入1+回车

　　echo 设定时间点关机……………请输入2+回车

　　echo 显示计时关机………………请输入3+回车

　　echo 设定每天关机………………请输入4+回车

　　echo 取消系统关机………………请输入空格+回车

　　echo 退出…………………………请输入Q+回车

　　echo.

　　echo.

　　set a=

　　set /p a= 【 请输入 】:

　　if "%a%"=="1" goto aaa

　　if "%a%"=="2" goto bbb

　　if "%a%"==" " goto ccc

　　if "%a%"=="" goto ddd

　　if "%a%"=="3" goto eee

　　if "%a%"=="4" goto fff

　　if "%a%"=="q" exit

　　goto loop

　　:ddd

　　@echo off

　　color e5

　　cls

　　echo.

　　echo.

　　echo 〖系统即将关机并结束进程〗

　　pause

　　echo.

　　::ntsd -c q -pn %run%

　　taskkill /f /t /im pfw.exe /f /t /im internat.exe /f /t /im explorer.exe

　　shutdown -s -f -t 0 -c "取消请运行shutdown -a"

　　exit

　　:aaa

　　@echo off

　　color f4

　　echo.

　　echo.

　　echo.

　　echo 现在将设置系统自动关机,请在此输入倒计时秒数后回车,系统将在设定时间自动关闭

　　set mytime=

　　set /p mytimes= 【 倒计时关机请输入 小时数】:

　　set /a mytimes=%mytimes%*3600

　　set /p mytimef= 【 倒计时关机请输入 分钟数】:

　　set /a mytimef=%mytimef%*60

　　set /p mytimem= 【 倒计时关机请输入 秒 数】:

　　set /a mytime=%mytimes%+%mytimef%+%mytimem%

　　shutdown -s -t %mytime% -c "取消请运行shutdown -a"

　　cls

　　echo.

　　echo 〖系统将在%mytime%秒后关机〗

　　echo.

　　pause

　　goto loop

　　:bbb

　　@echo off

　　color f9

　　echo.

　　echo.

　　echo.

　　echo 现在将设置系统自关机,请在此输入关机时间(如12:00)回车,系统将定时自动关闭

　　set mytimes=

　　set mytimef=

　　set /p mytimes= 【 定时关机请输入 时】:

　　set /p mytimef= 【 定时关机请输入 分】:

　　at %mytimes%:%mytimef% shutdown -s -t 0

　　::这表示在mytime分执行shutdown -s -t 0操作.如果当前时间大于任务执行时间,则默认为明日执行,0为倒计时时间.

　　echo.

　　echo 〖现在将显示所有计划〗

　　echo ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

　　at

　　echo ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

　　pause

　　::显示计划并暂停

　　goto loop

　　:ccc

　　@echo off

　　color f2

　　echo.

　　echo.

　　echo.

　　echo 〖现在将设置取消系统自动关机〗

　　echo.

　　pause

　　shutdown -a

　　echo.

　　echo.

　　echo 〖现在将显示所有计划,在回车后取消计划且无须确认〗

　　echo ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

　　at

　　echo ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

　　pause

　　at /del /yes

　　::取消所有计划并无须确认

　　cls

　　echo.

　　echo 〖系统已经取消自动关机〗

　　echo 〖系统已经取消所有计划任务〗

　　echo.

　　pause

　　goto loop

　　:eee

　　@echo off

　　color f4

　　echo.

　　echo.

　　echo.

　　echo 现在将设置系统自动关机,请在此输入倒计时秒数后回车,系统将在设定时间自动关闭

　　set mytime=

　　::此行是为了清mytime变量值,以免在不注意的情况下存在变量值,此为一种好的习惯.

　　set mytimes=0

　　::赋值为0是为了使%mytimes%不致于无意义,下同.

　　set mytimef=0

　　set mytimem=0

　　set /p mytimes= 【 倒计时关机请输入 小时数】:

　　set /a mytimes=%mytimes%*3600

　　set /p mytimef= 【 倒计时关机请输入 分钟数】:

　　set /a mytimef=%mytimef%*60

　　set /p mytimem= 【 倒计时关机请输入 秒 数】:

　　color a3

　　mode con cols=30 lines=4

　　set /a mytime=%mytimes%+%mytimef%+%mytimem%

　　SET wait=ping -n 2 127.0.0.1 ^>^nul

　　for /l %%n in (%mytime%,-1,0) do (

　　rem cls

　　echo *******************

　　echo 〖%%n秒后自动关机〗

　　echo *******************

　　%wait%

　　cls

　　)

　　shutdown -s -t 0

　　goto loop

　　:fff

　　@echo off

　　color f9

　　echo.

　　echo.

　　echo.

　　echo 现在将设置系统每天运行自关机

　　echo.

　　set myopengs=

　　set /p myopengs= 【重复设定请输入单空格+回车,单次及最后一次设定请回车】

　　echo.

　　echo 请在此输入关机时间(如12:00)后回车,系统将定时关闭

　　echo.

　　set mytimes=

　　set mytimef=

　　set /p mytimes= 【 定时关机请输入 时】:

　　set /p mytimef= 【 定时关机请输入 分】:

　　at %mytimes%:%mytimef% /every:M,T,W,Th,F,S,Su shutdown -s -f

　　echo.

　　echo 〖现在将显示所有计划〗

　　echo ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

　　at

　　echo ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

　　pause

　　::显示计划并暂停

　　if "%myopengs%"==" " goto :fff

　　goto loop