(reg Query HKCU\Software\Microsoft\Windows\Currentversion\Explorer\Advanced /v Hidden|findstr "2">nul&&goto s1)||goto s2
:s1
reg add HKCU\Software\Microsoft\Windows\Currentversion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f
exit
:s2
reg add HKCU\Software\Microsoft\Windows\Currentversion\Explorer\Advanced /v Hidden /t REG_DWORD /d 2 /f
exit