@echo off
if "%1"=="/?" goto help
if /i "%2"=="/v" cls&echo DreasPE 版本: 1.0.3.29.1&echo.
if /i "%3"=="/p" goto presettings
if /i "%4"=="/s" set name=default&set text=早上好 default!又是充满期待和阳光的一天呢~&goto main
if exist C:\Windows\explorer.exe goto systemerror
path=X:\;X:\windows\system32;X:\windows;X:\windows\System32\Wbem;X:\windows\System32\PETools;X:\Program Files\Ghost;X:\Program Files\DiskGenius;X:\Program Files\Dism++;X:\Program Files\7-Zip;X:\Program Files\BOOTICE;X:\Program Files\CPU-Z

:presettings
title DreasPE 预运行阶段
cls
echo DreasPE 全新设置体验
echo.
echo 新年快乐!
echo.
echo 感谢您使用 DreasPE!
echo.
echo 您需要做一些设置来配置 DreasPE，才能进入 DreasPE 维护系统。
echo.
echo 按任意键继续
pause >nul

:oneset
cls
echo (o A o)
echo.
echo 许可协议
echo.
echo 本产品禁止破解、售卖、在其他平台分享等违法操作！！！！！！！！！！！！！！！！！
echo 如果违反以上规则，则不得使用该产品。
echo 因为这玩意是免费的！
echo.
echo 认准 DreasPE 官网! :systemderasdhs-pe.mysxl.cn
echo 作者：DERASD
echo.
echo *接受协议-设置昵称-输入时间-准备就绪
echo.
echo 我接受     我不接受
echo  (A)         (D)
echo.
set /p xieyi=选项：
if /i "%xieyi%"=="A" goto continue
if /i "%xieyi%"=="D" exit

:xieyierror
cls
echo 错误
echo.
echo 您没有输入正确的内容
echo.
echo *接受协议-设置昵称-输入时间-准备就绪
echo.
echo 按任意键返回至许可协议
pause >nul
goto oneset

:continue
cls
echo (O v O)
echo.
echo 给自己设一个可爱的昵称吧~
echo. 
echo 昵称会在主页显示
echo.
echo 接受协议-*设置昵称-输入时间-准备就绪
echo.
set /p name=输入昵称:
if "%name%"=="" cls&echo 错误&echo.&echo 昵称不能为空&echo.&echo 接受协议-*设置昵称-输入时间-准备就绪&echo.&echo 按任意键返回至设置昵称&pause >nul&goto continue

:settime
cls
echo 00:00 12:00 13:00 18:00
echo 上午  中午  下午  傍晚
echo  (M)  (L)   (A)   (E) 
echo.
echo 输入现在的时间段(见上面对应的英文字母)
echo.
echo 不同时间段会有不同的开场白
echo.
echo 接受协议-设置昵称-*输入时间-准备就绪
echo.
set /p petime=时间:
if /i "%petime%"=="M" set text=早上好 %name%!又是充满期待和阳光的一天呢~&goto continue1
if /i "%petime%"=="L" set text=%name%,到中午了,肚子饿了吧？&goto continue1
if /i "%petime%"=="A" set text=下午茶时间到!这种时间应该就要放松一点呢,是吧 %name%?&goto continue1
if /i "%petime%"=="E" set text=%name%,晚风轻佛,该睡觉了呢。&goto continue1

:timeerror
cls
echo 错误
echo.
echo 您没有输入正确的内容
echo.
echo 接受协议-设置昵称-*输入时间-准备就绪
echo.
echo 按任意键返回至时间输入
pause >nul
goto settime

:continue1
cls
echo (O v O)
echo.
echo 恭喜你,已经完成了 DreasPE 的设置!
echo.
echo 接受协议-设置昵称-输入时间-*准备就绪
echo.
echo 按任意键进入 DreasPE 主页!
echo.
pause >nul
goto main

:main
mode con cols=80 lines=30
cls
title DreasPE (版权所有 DERASD)
echo 欢迎 %name% 使用 DreasPE!
echo.
echo %text%
echo.
echo DreasPE——独特的命令行 PE
echo.
echo -程序列表
echo 1.Ghost 备份还原
echo 2.DiskGenius 磁盘分区
echo 3.安装 Windows
echo 4.Dism++
echo 5.7-Zip
echo 6.BOOTICE 引导工具
echo 7.CPU-Z
echo 8.注册表
echo 9.记事本
echo 10.命令提示符
echo.
echo -功能列表
echo 11.浏览文件
echo 12.运行程序
echo 13.查看时间
echo 14.查看日期
echo 15.关于 DreasPE
echo.
echo -电源操作 
echo A.关机
echo B.重启
echo.
set /p choice=输入你的选项: 
if "%choice%"=="1" start Ghost64.exe&set choice=&goto main
if "%choice%"=="2" start DiskGenius.exe&set choice=&goto main
if "%choice%"=="3" set choice=&goto installsystem
if "%choice%"=="4" start Dism++x64.exe&set choice=&goto main
if "%choice%"=="5" start 7zFM.exe&set choice=&goto main
if "%choice%"=="6" start BOOTICE.exe&set choice=&goto main
if "%choice%"=="7" start cpuz.exe&set choice=&goto main
if "%choice%"=="8" start regedit.exe&set choice=&goto main
if "%choice%"=="9" start notepad.exe&set choice=&goto main
if "%choice%"=="10" start cmd.exe&set choice=&goto main
if "%choice%"=="11" set choice=&goto files
if "%choice%"=="12" set choice=&goto runapp
if "%choice%"=="13" set choice=&start petime.bat&goto main
if "%choice%"=="14" set choice=&goto viewdate
if "%choice%"=="15" set choice=&goto version
if /i "%choice%"=="A" shutdown -s -t 0&cls&echo 正在关机&timeout /t 30 /nobreak >nul
if /i "%choice%"=="B" shutdown -r -t 0&cls&echo 正在重启&timeout /t 30 /nobreak >nul
if /i "%choice%"=="startdreasterminal" start dreasterminal.bat&set choice=&goto main
if "%choice%"=="derasd" set choice=&goto ovum

:error
cls
echo 错误
echo.
echo 您没有输入正确的内容
echo 按任意键返回
pause >nul
goto main

:installsystem
cls
echo 即将打开 Dism++, 选择"工具箱", 然后选择"系统还原", 最后选择 Windows 映像即可安装 Windows。
echo 忘说了, 还能选择版本!
echo 不要问我为什么不放 WinNTSetup。
echo.
echo 1.返回
echo 2.安装 Windows
echo.
set /p installsystem=输入你的选项: 
if "%installsystem%"=="1" set installsystem=&goto main
if "%installsystem%"=="2" set installsystem=&Dism++x64.exe&goto main

:installsystemerror
cls
echo 错误
echo.
echo 您没有输入正确的内容
echo 按任意键返回
pause >nul
goto installsystem

:files
cls
echo 浏览文件
echo.
echo 即将打开记事本, 请点顶部菜单栏的 "文件" , 然后点 "打开(O)" 。最后把 "文本文件(*.txt)" 改为 "所有文件 (*.*)" 即可浏览文件。
echo.
echo 1.返回
echo 2.浏览文件
echo.
set /p files=输入你的选项: 
if "%files%"=="1" set files=&goto main
if "%files%"=="2" set files=&notepad&goto main

:fileserror
cls
echo 错误
echo.
echo 您没有输入正确的内容
echo 按任意键返回
pause >nul
goto files

:runapp
cls
echo 运行程序
echo.
echo 如果您不知道文件的路径, 请返回, 选择浏览文件, 然后输入到此处。
echo 如要返回, 请留空。
echo.
set /p run=输入程序的路径:
if "%run%"=="" set run=&goto main
start %run%
set run=
goto main

:runapperror
cls
echo 错误
echo.
echo 您没有输入正确的内容
echo 按任意键返回
pause >nul
goto runapp

:viewdate
cls
echo %date%
echo.
echo 按任意键返回
pause >nul
goto main

:version
title 关于 DreasPE
cls
echo 关于 DreasPE
echo.
echo 版本: 1.0.3.29.1 新春限定版
echo 架构: x64
echo.
echo 作者邮箱: derasd201512@outlook.com
echo 作者官网: systemderasdhs.mysxl.cn
echo 作者抖音: derasd (运行中)
echo 作者快手: ADMIN-DERASD
echo 作者B站: SYSTEM-DERASD
echo.
echo 按任意键返回
pause >nul
goto main

:ovum
cls
echo DreasPE 1.0.3.29.1 新春限定版 x64
echo.
echo 上一个版本: DreasPE 1.0.3.29.0
echo.
echo DreasPE——为简洁而生 一个独特的命令行 PE
echo.
echo 感谢:
echo.
echo 抖音
echo @.bat
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo.
echo 上一个版本: DreasPE 1.0.3.29.0
echo.
echo DreasPE——为简洁而生 一个独特的命令行 PE
echo.
echo 感谢:
echo.
echo 抖音
echo @.bat
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo 上一个版本: DreasPE 1.0.3.29.0
echo.
echo DreasPE——为简洁而生 一个独特的命令行 PE
echo.
echo 感谢:
echo.
echo 抖音
echo @.bat
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo.
echo DreasPE——为简洁而生 一个独特的命令行 PE
echo.
echo 感谢:
echo.
echo 抖音
echo @.bat
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo DreasPE——为简洁而生 一个独特的命令行 PE
echo.
echo 感谢:
echo.
echo 抖音
echo @.bat
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo.
echo 感谢:
echo.
echo 抖音
echo @.bat
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo 感谢:
echo.
echo 抖音
echo @.bat
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo.
echo 抖音
echo @.bat
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo 抖音
echo @.bat
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo @.bat
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo @秋叶
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo @苏星源电脑工作室.Sxydngzs
echo.
echo B站
echo @开朗的显眼包vv
cls
echo.
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo B站
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
echo @开朗的显眼包vv
timeout /t 1 /nobreak >nul
cls
timeout /t 1 /nobreak >nul
goto main

:systemerror
cls
echo DreasPE 不能在正常的 Windows 中运行
echo.
echo 按任意键退出
pause >nul
exit

:help
echo.
echo 运行 DreasPE.
echo.
echo 参数:
echo.
echo ^/v 显示 DreasPE 的版本
echo ^/p 不设定变量(用默认变量)
echo ^/s 应急模式(跳过个性化设置)
echo.
echo 你可以将这些参数写入 winpeshl.ini
echo.
