set path==%path%;%appdata%\hiper
mode con cols=42 lines=25
@echo off

%appdata%\hiper\wget.exe  -q -P %appdata%\hiper  -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/hiper.exe

%appdata%\hiper\wget.exe  -q -P %appdata%\hiper  -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/tap-windows.exe

:abc
if not exist %appdata%\hiper\hiper.exe goto nofile
goto menu

:nofile
set /a n+=1
echo ********************************************
echo ********************************************
echo **                                        **
echo **  未能测到hiper程序，正在尝试重新下载 **
echo **  当前重试次数→%n%←(60次封顶)  **
echo ********************************************
echo ********************************************
%appdata%\hiper\wget.exe -q -P %appdata%\hiper -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/hiper.exe
%appdata%\hiper\wget.exe  -q -P %appdata%\hiper  -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/tap-windows.exe
if %n% GEQ 60 goto shibai
goto abc

:shibai
echo ********************************************
echo ********************************************
echo **      未能测到hiper程序，且无法下载       **
echo **        请检查网络环境或联系管理员          **
echo **              作者QQ：944390394               **
echo ********************************************
echo ********************************************
cls





title "HiPer启动菜单"
goto menu
:menu
ECHO. -----------HiPer启动程序---------------
ECHO. -    （1）→ 安装HiPer虚拟网卡←      -
ECHO. -     （↑首次启动请先运行此项↑）    -
ECHO. ---------------------------------------
ECHO. -    （2） 启动HiPer程序 （凭证入网） -
ECHO. -    （3） 启动HiPer程序（无凭证入网）-
ECHO. ---------------------------------------
ECHO. -    （4）启动HiPer聊天室             -
ECHO. ---------------------------------------
ECHO. -    （5） 打开凭证购买页面           -
ECHO. -    （6） 打开HiPer教程              -
ECHO. -    （7） 创建快捷方式到桌面         -
ECHO. -    （8） 手动检查更新              -
ECHO. ---------------------------------------
ECHO. -  注：无凭证入网每30分钟切断一次连接 -
ECHO. -      版本：0.4.1   作者：梦游泪世   -
ECHO. -    （u） 打开网页检查更新           -
ECHO. -      BUG反馈/邀请码购买/使用咨询    -
ECHO. ---------------------------------------
ECHO. -             作者QQ:944390394        -
ECHO. -          官方①群：235256586        -
ECHO. -          官方②群：212927890        -
ECHO. ---------------------------------------
echo.请输入选择项目的序号：
set /p ID=
if “%id%”==“1” goto cmd1

if “%id%”==“2” goto cmd2

if “%id%”==“3” goto cmd3

if “%id%”==“4” goto cmd4

if “%id%”==“5” goto cmd5

if “%id%”==“6” goto cmd6

if “%id%”==“7” goto cmd7

if “%id%”==“8” goto cmd9

if “%id%”==“114514” goto cmd8

if “%id%”==“u” goto cmdu

if “%id%”==“U” goto cmdu

:cmd1
start %appdata%\hiper\tap-windows.exe
goto menu::或者是goto menu回到主菜单

:cmd2
start saterhiper
cls
goto menu

:cmd3
start saterhiperfree
cls
goto menu

:cmd4
start chatfree
cls
goto menu

:cmd5
start https://mcer.cn/shop?ref=azAtwBwzp
cls
goto menu

:cmd6
start https://mcer.cn/463.html?ref=azAtwBwzp
cls
goto menu

:cmd7
@echo off
set "exe=HiPer启动程序.exe"
set "lnk=HiPer启动程序"
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\%lnk%.lnk""):b.TargetPath=""%~dp0%exe%"":b.WorkingDirectory=""%~dp0"":b.Save:close")
echo 完成
cls
goto menu

:cmd8
echo 【彩蛋】好臭的数字啊 @a@
goto menu

:cmdu
start https://mcer.cn/circle/491.html?ref=azAtwBwzp
cls
goto menu

:cmd9
%appdata%\hiper\wget.exe  -P %appdata%\hiper -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/hiper.exe
%appdata%\hiper\wget.exe  -P %appdata%\hiper  -S -N -t 50  https://matrix-1300179650.cos.ap-shanghai.myqcloud.com/res/tap-windows.exe
pause
cls
goto menu
