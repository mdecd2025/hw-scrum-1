@echo off
set "Disk=y"
subst %Disk%: "data"

%Disk%:

set "HomePath=%Disk%:\home_ipv6"
set "USERPROFILE=%Disk%:\home_ipv6"

REM 將系統 Python 程式的 io 設為 utf-8
set "PYTHONIOENCODING=utf-8"

set "PYTHONPATH=%Disk%:\Python313\DLLs;%Disk%:\Python313\Lib;%Disk%:\Python313\Lib\site-packages;"
set "PYTHONHOME=%Disk%:\Python313"

REM 設定跟 Python 有關的命令搜尋路徑
set "path_python=%Disk%:\Python313;%Disk%:\Python313\Scripts;"
REM 設定跟Git 有關的命令搜尋路徑
set "path_git=%Disk%:\portablegit\bin;"

set GIT_SSH=%Disk%:\PuTTY\plink.exe

REM for execute scite directly
set "path_scite=%Disk%:\wscite\;"

set "path=%Disk%:;%path_python%;%path_git%;%path_scite%;%path%;"

echo %Path%

start /MIN cmd.exe
start /MIN SciTE.exe

Exit