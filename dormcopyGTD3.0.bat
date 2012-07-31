::{create:2011年6月27日23时41分23秒}{last modify:2012年1月1日11时46分03秒秒
::version:3.0
::该批处理文件用来备份WorkListBackward(C).xlsx。该文件在网盘中。
::由于GTD相关文档目前用git进行版本控制，所以不再备份 gtd手册 流程。

::注意编辑该bat文件时一定要以ansi格式编码。否则复制中文路径时将产生乱码，找不到文件。由于你用notepad++编辑，而notepad++默认格式是utf-8所以很容易出错的。
::注意导入wiz中的gtd手册和流程后必须重命名笔记，否则该批处理文件复制手册和流程的部分将无效。如：将GTD运行基本流程4.9C.doc 改为GTD运行基本流程  
::注意以下命令中的/Y 不要写成\Y。至于是用小写y还是大写Y都没有关系
::注意xcopy命令的第一个参数指定了源文件目录的路径而不是源文件的路径

::设置环境变量
path=c:\windows\system32
::从网盘备份worklistbackward.xlsx
copy E:\netDisk\klive\文档\pomodoro\WorkListBackward(C).xlsx  E:\GTD 

::----------------------------------------------------------------------
::以上命令还可以用以下写法  注意第一个参数是是源文件的路径而不是源文件目录的路径
::copy /y 源文件路径   目标目录
::如 copy /y E:\Document\Wiz\Data\Default\GTD\weekwork_Attachments\WeekWork C.xlsx E:\GTD
::---------------------------------\\

::-----------------------------
::以下内容已经不要了，这里为了以后参考方便，所以把以前用过的命令都保存下来
::move  /y E:\GTD\GTD系统使用手册*.doc*  E:\GTD\原来的手册及流程及作废的表
::move  /y E:\GTD\GTD运行基本流程*.doc*  E:\GTD\原来的手册及流程及作废的表

::手册将作为wiz--流程的附件，所以不再单独复制
::xcopy F:\我的文档\ApplicationData\wiz\Data\Default\GTD\GTD系统使用手册_Attachments 	E:\GTD /Y
::xcopy F:\我的文档\ApplicationData\wiz\Data\Default\Knows\@GTD\GTD运行基本流程_Attachments 	E:\GTD /Y
::\\~
pause
