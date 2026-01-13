@echo off
title BasicEdit 0.02a for Windows 独立版
cls
echo BasicEdit
echo.
echo 作者尽力了！编辑不能空行[大哭]！
echo.
set /p txtdir=输入要编辑的文件路径 (例如 C:\text.txt) :
if "%txtdir%"=="" exit

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
if exist %txtdir% type %txtdir%
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
if /i "%choice1%"=="N" exit
set /p basicedit=要继续编辑 %txtdir% 吗? (Y/N) :
if /i "%basicedit%"=="Y" goto startedit
if /i "%basicedit%"=="N" exit
