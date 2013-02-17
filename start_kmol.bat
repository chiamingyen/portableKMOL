@echo off
REM 設定 V 硬碟代號與 data 目錄對應
set Disk=v
subst %Disk%: "data"
REM 將後續的指令執行, 以 %Disk% 為主
%Disk%:
REM 指令搜尋路徑設定
path=%PATH%;%Disk%:\commands;%Disk%:\SciTE\Lib\site-packages\pywin32_system32;%Disk%:\SciTE\scripts;%Disk%:\SciTE\php-5.4.10-nts-Win32-VC9-x86;%Disk%:\extensions\oce10;%Disk%:\extensions\Ruby193\bin;%Disk%:\extensions\portable_git\bin
REM 啟動 MySQL 資料庫伺服器
REM start %Disk%:\MySQL\bin\mysqld1.exe --defaults-file=%Disk%:\MySQL\bin\my.ini
REM 使用隱藏指令畫面的方式啟動 mongoose www 伺服器
REM 1
%Disk%:\commands\RunHiddenConsole %Disk%:\wwwServers\mongoose-3.5\mongoose.exe %Disk%:\wwwServers\mongoose-3.5\mongoose.conf
REM
REM 使用隱藏指令畫面的方式啟動 mongoose www 伺服器, 8081, 主要給 cherrypy 使用
REM 2
%Disk%:\commands\RunHiddenConsole %Disk%:\wwwServers\mongoose-3.5\mongoose.exe %Disk%:\wwwServers\mongoose-3.5\mongoose_cherrypy.conf
REM
REM 啟動 nginx
cd wwwServers
cd nginx-1.2.3
start nginx.exe -c %Disk%:\wwwServers\nginx-1.2.3\conf\nginx.conf
%Disk%:\commands\RunHiddenConsole.exe %Disk%:\SciTE\php-5.4.10-nts-Win32-VC9-x86\php-cgi.exe -b 127.0.0.1:9000 -c %Disk%:\SciTE\php-5.4.10-nts-Win32-VC9-x86\php.ini
REM 配合 Openshift 中的 cmsimple-cycuorg.rhcloud.com 而啟動 ,連線 https://localhost:8443
%Disk%:\commands\RunHiddenConsole.exe %Disk%:\SciTE\php-5.4.10-nts-Win32-VC9-x86\php-cgi.exe -b 127.0.0.1:9001 -c %Disk%:\SciTE\php-5.4.10-nts-Win32-VC9-x86\php.ini
cd ..
cd ..
REM 啟動 mysql
start %Disk%:\extensions\mysql\bin\mysqld1.exe
REM 使用隱藏指令畫面的方式啟動 stunnel, 8000->8444, 主要給 django 使用
REM 3
REM RunHiddenConsole %Disk%:\stunnel\stunnel.exe
REM 啟動 ipython, 並且以 %Disk%:\ipython 目錄作為 config 與 資料檔案儲存目錄
REM RunHiddenConsole %Disk%:\SciTE\Scripts\ipython3 notebook --ipython-dir=%Disk%:\ipython
REM for 2 second wait to make sure ipython is ready
REM RunHiddenConsole PING 127.0.0.1 -n 3
REM 開啟瀏覽器與所需的 URL
REM start %Disk%:\Chrome\chrome.exe -app "http://localhost:8080" "http://localhost:1234" "http://localhost:8080/cms" "http://blog.kmol.info" "http://cd.mde.tw/cmss" "http://www.google.com"
REM 4
start %Disk%:\tools\GoogleChromePortable\GoogleChromePortable.exe -app "https://localhost" "https://localhost/sgw" "http://localhost:8081" "http://localhost:89" "https://localhost:9443" "http://nx.mde.tw" "http://www.google.com"
REM 啟動 SciTE 編輯器
start %Disk%:\SciTE\SciTE.exe
REM 以最小畫面開啟一個指令視窗備用
start cmd.exe /MIN
EXIT