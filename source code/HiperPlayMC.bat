@echo off
set path==%path%;%appdata%\hiper
title "Minecraft（我的世界）Hiper启动程序专用版"
if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
if not exist %appdata%\hiper\hiper.exe goto nofile
goto start
:nofile
echo ********************************************
echo ********************************************
echo **                                        **
echo **  未能测到hiper程序，请返回菜单检查更新 **
echo **                                        **
echo ********************************************
echo ********************************************
pause
exit
:start
echo 当前运行路径是：%CD%
echo 已获取管理员权限
set n=0
:abc
set /a n+=1
echo *********************************
echo ***Minecraft（我的世界）Hiper启动程序专用版***
echo *********************************
echo **      脚本作者：梦游泪世     **
echo **      凭证 邀请码  有售      **
echo **       QQ：944390394         **
echo *+++++++++++++++++++++++++++++++*
echo *=     联机时请勿关闭此窗口    =*
echo ————————————————
注意，接下来启动会分两个形式，一个是
set /p ID=
if “%id%”==\n goto f

if “%id%”==t goto t

:f
echo 创建方要做到：
echo 打开游戏 》选择一个存档（世界）进入 》对局域网开放
echo 然后，聊天栏会出现开放的端口，然后 Set interface IP Address: 和 /7 之间的 IP ，组合形成：IP:端口 ，发送给你的好友，下面会叫他“加入IP”
echo 加入方要做的：
echo 在启动 Hiper 后，打开游戏 》点击 多人游戏、直接连接 》将创建方发给你的 “加入IP” 输入进入并加入即可
echo 可访问网站获取更多信息：https://zkitefly.github.io/hiper-d/playminecraft.html#一些常见问题
hiper v 
if %n% GEQ 60 goto xx
cls
goto abc
:xx
echo.
echo.
echo [免费版本提示：请检查是否已自动重启60次，或检查是否有文件更新]
pause

:t
echo 创建方要做到：
echo 打开游戏 》选择一个存档（世界）进入 》对局域网开放
echo 然后，聊天栏会出现开放的端口，然后 Set interface IP Address: \7 之间的 IP ，组合形成：IP:端口 ，发送给你的好友
set /p mm=输入你的秘钥：
@echo on
hiper v -t "%mm%"
@echo off
echo.
echo.
echo 抱歉，Hiper启动程序非正常退出，可能原因：
echo 凭证输入错误
echo 凭证已超过限期
echo 使用一次凭证后需要未等待10分钟后才能使用，否侧会报错
echo 使用的是旧版，请在 HiPer启动菜单 中检查更新软件
pause
