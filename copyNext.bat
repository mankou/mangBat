::修改时只修改copy命令的源路径即可

::切换到该批处理文件所在分区的根目录
cd %~d0\ 
::切换到该批处理文件所在目录
cd %~dp0
::复制html文件
copy "%~dp0\vimwiki\vimwiki_html\nextStep*.html" .
