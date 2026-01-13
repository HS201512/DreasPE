@echo off
title BasicEdit 0.02a for Windows 獨立版
cls
echo BasicEdit
echo.
set /p txtdir=輸入要編輯的檔案路徑 (例如 C:text.txt) :
if "%txtdir%"=="" exit

:startedit
cls
echo ============================= BasicEdit Launcher ==============================
echo.
echo -------------------------- 當前編輯的文件: %txtdir% ---------------------------
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
set /p lnone=內容:
set /p lntwo=內容:
set /p lnthr=內容:
set /p lnfur=內容:
set /p lnfiv=內容:
set /p lnsix=內容:
set /p lnsvn=內容:
set /p lnegt=內容:
set /p lnnin=內容:
set /p lnten=內容:
echo.
set /p choice1=要保存到 %txtdir% 嗎？(Y/N) :
if /i "%choice1%"=="Y" echo %lnone% >> %txtdir%&echo %lntwo% >> %txtdir%&echo %lnthr% >> %txtdir%&echo %lnfur% >> %txtdir%&echo %lnfiv% >> %txtdir%&echo %lnsix% >> %txtdir%&echo %lnsvn% >> %txtdir%&echo %lnegt% >> %txtdir%&echo %lnnin% >> %txtdir%&echo %lnten% >> %txtdir%
if /i "%choice1%"=="N" exit
set /p basicedit=要繼續編輯 %txtdir% 嗎? (Y/N) :
if /i "%basicedit%"=="Y" goto startedit
if /i "%basicedit%"=="N" exit
