::create:23:29 2012-4-8 lastmodify:23:30 2012-4-8
::author:mang
::version:1.0  preversion:--
::目的:自动对Time.log文件添加时间戳,实现事物流水帐
::具体操作流程:ahk 通过快捷键调用该批处理,先用记事本打开Time.log,系统会自动添加时间戳,然后用gvim打开刚保存的Time.log这样编辑浏览方便.
::-------------------------
@path=%path%;"C:\WINDOWS\";"D:\Program Files\Vim\vim73\"
@set TimeLog="E:\ApplicationData\netDisk\klive\applicationData\TimeLog\Time.log"
::加上start的用意：只有这样用taskkill才可以关掉notepad.exe当然也可以直接用命令　NOTEPAD %TimeLog% 但用taskkill并不掉窗口.
start NOTEPAD %TimeLog% 
taskkill  /t /im notepad.exe
::加pause的用意,因为taskkill关闭notepad窗口时会提示保存,目前还没有发现自动保存的命令,所以这里暂停下手动确认保存,再随便按个键继续.如果用 taskkill /f /t /im notepad.exe 则不保存直接关闭了,达不到效果
pause
start gvim  %TimeLog%
