@echo off
set Disk=v
REM 關閉 mongoose
taskkill /IM mongoose.exe /F
REM 關閉 SciTE
taskkill /IM SciTE.exe /F
REM 關閉 ipython
REM taskkill /IM ipython3.exe /F
REM 關閉 chrome
taskkill /IM chrome.exe /F
REM 關閉 php-cgi.exe
taskkill /IM php-cgi.exe /F
REM 關閉 python
taskkill /IM python.exe /F
REM 關閉 stunnel
REM taskkill /IM stunnel.exe /F
REM 關閉 nginx
taskkill /IM nginx.exe /F
REM 關閉 mysqld1.exe
taskkill /IM mysqld1.exe /F
REM 關閉 RunHiddenConsole
taskkill /IM RunHiddenConsole.exe /F
REM 終止虛擬硬碟與目錄的對應
subst %Disk%: /D
REM 關閉 cmd 指令視窗
taskkill /IM cmd.exe /F
EXIT
