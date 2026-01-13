@echo off
if "%1"=="/?" goto parhelp
cls

:main
title DreasPE 终端 (简易版)
set input=
if exist C:\Windows\Explorer.exe (
    set /p input=#%username%@%computername%:
) else (
    set /p input=#%name%@DreasPE:
)
if /i "%input%"=="help" goto help&set input=
if /i "%input%"=="exit" set input=&exit
if /i "%input%"=="cmd" start cmd&set input=&goto main
if /i "%input%"=="systemscan" goto systemscan&set input=
if /i "%input%"=="edit" goto basicedit&set input=
if /i "%input%"=="new" goto viewnewver&set input=
if /i "%input%"=="ver" goto terversion&set input=
if /i "%input%"=="date" echo.&echo %date%&echo.&set input=&goto main
if /i "%input%"=="time" start petime.bat&set input=&goto main

:inputerror
echo.
echo 输入 help 获取帮助, 输入 exit 退出并返回 DreasPE/Windows。
echo.
goto main

:help
echo.
echo DreasPE 终端操作帮助
echo.
echo help 显示此帮助
echo exit 退出
echo systemscan 检测并修复系统文件
echo edit 启动 BasicEdit
echo cmd 启动一个新的命令提示符窗口以获得更多功能
echo ver 查看 DreasPE 的版本
echo new 查看 DreasPE 的新增功能
echo date 查看当前日期
echo time 查看当前时间
set input=
echo.
goto main

:systemscan
title 系统扫描实用程序
cls
set /p scanwindir=输入指定的系统路径 (例如 C:\Windows) :
set /p scanbootdir=输入指定的启动路径 (例如 C:\) :
echo.
sfc /scannow /offwindir:%scanwindir% /offbootdir:%scanbootdir%
set scanwindir=
set scanbootdir=
echo.
pause
cls
goto main

:basicedit
title BasicEdit 0.02a for DreasPE/Windows
cls
echo BasicEdit
echo.
set /p txtdir=输入要编辑的文件路径 (例如 C:\text.txt) :
if "%txtdir%"=="" goto main
:startedit
cls
echo ============================= BasicEdit Launcher ==============================
echo.
echo -------------------------- 当前编辑的文件: %txtdir% ---------------------------
echo.
set lnone=
set lntwo=
set lnthr=
set lnfur=
set lnfiv=
set lnsix=
set lnsvn=
set lnegt=
set lnnin=
set lnten=
if exist %txtdir% type %txtdir%&echo.
set /p lnone=内容:
set /p lntwo=内容:
set /p lnthr=内容:
set /p lnfur=内容:
set /p lnfiv=内容:
set /p lnsix=内容:
set /p lnsvn=内容:
set /p lnegt=内容:
set /p lnnin=内容:
set /p lnten=内容:
echo.
set /p choice1=要保存到 %txtdir% 吗？(Y/N) :
if /i "%choice1%"=="Y" echo %lnone% >> %txtdir%&echo %lntwo% >> %txtdir%&echo %lnthr% >> %txtdir%&echo %lnfur% >> %txtdir%&echo %lnfiv% >> %txtdir%&echo %lnsix% >> %txtdir%&echo %lnsvn% >> %txtdir%&echo %lnegt% >> %txtdir%&echo %lnnin% >> %txtdir%&echo %lnten% >> %txtdir%
if /i "%choice1%"=="N" goto main
set /p basicedit=要继续编辑 %txtdir% 吗? (Y/N) :
if /i "%basicedit%"=="Y" goto startedit
if /i "%basicedit%"=="N" goto main

:terversion
echo.
echo DreasPE 终端版本: 0.02
echo DreasPE 版本: 1.0.3.29.1
echo.
goto main

:viewnewver
echo.
echo DreasPE 1.0.3.29.1 的新增功能
echo.
echo - 加入许可协议
echo - 新增 DreasPE 终端 (systemscan和BasicEdit)
echo - 新增 CPU-Z
echo.
echo 下载　DreasPE: systemderasdhs-pe.mysxl.cn
echo.
goto main

:parhelp
echo.
echo 运行 DreasPE 终端
echo.
