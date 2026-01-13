@echo off
title BasicEdit 0.02a for Windows
cls
echo BasicEdit
echo.
set /p txtdir=Input want edit's file (e.g C:\text.txt) :
if "%txtdir%"=="" exit

:startedit
cls
echo ============================= BasicEdit Launcher ==============================
echo.
echo -------------------------- Edit's File: %txtdir% ---------------------------
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
set /p lnone=Content:
set /p lntwo=Content:
set /p lnthr=Content:
set /p lnfur=Content:
set /p lnfiv=Content:
set /p lnsix=Content:
set /p lnsvn=Content:
set /p lnegt=Content:
set /p lnnin=Content:
set /p lnten=Content:
echo.
set /p choice1=Do you want save as %txtdir% ？(Y/N) :
if /i "%choice1%"=="Y" echo %lnone% >> %txtdir%&echo %lntwo% >> %txtdir%&echo %lnthr% >> %txtdir%&echo %lnfur% >> %txtdir%&echo %lnfiv% >> %txtdir%&echo %lnsix% >> %txtdir%&echo %lnsvn% >> %txtdir%&echo %lnegt% >> %txtdir%&echo %lnnin% >> %txtdir%&echo %lnten% >> %txtdir%
if /i "%choice1%"=="N" exit
set /p basicedit=Do you want continue edit? (Y/N) :
if /i "%basicedit%"=="Y" goto startedit
if /i "%basicedit%"=="N" exit
