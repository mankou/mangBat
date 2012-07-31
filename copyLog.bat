::author:mang
::create:2011年9月1日23时38分11秒　last modify:2011年9月1日23时38分15秒
::该批处理文件用来将一个文件拷备到另一个路径下，源路径与目标路径分别写在copyLogAid.txt的第三行与第四行


::不回显执行了哪些命令，只回显echo 输出的内容
@echo off & setlocal EnableDelayedExpansion

::以下两句将当前路径切换到批处理文件所在路径，由于for语句中的copyLogAid.txt是与该批处理文件在同一路径下，所以需要将当前目录切换到批处理文件所以路径。若是直接双击运行该批处理文件，则这几句无用，因为此时当前路径就在批处理文件所在路径下。但在vim中映射快捷键后，通过快捷键执行该批处理文件时当前路径在gvim快捷方式所在路径下，所以需要切换
::取得批处理文件所在盘符
set disk=%~d0
::取得批处理文件所在目录
set path=%~dp0
::切换到批处理文件所以盘符根目录
cd %disk%\
::切换到批处理文件所以目录
cd %path%

set j=0
::这里的delims目前我也不知道是以什么做分隔符的，默认的分隔符是指不写delims参数时，所以这里也不是默认的分隔符（空格和tab）。
for /f "delims=" %%i in (copyLogAid.txt) do (
set /a j+=1
set con!j!=%%i
call set a=%%con!j!%%
echo !a!
)
copy "%con3%" "%con4%"


