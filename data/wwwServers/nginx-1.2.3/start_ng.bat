@ECHO OFF
start nginx.exe
V:\commands\RunHiddenConsole.exe V:\SciTE\php-5.4.10-nts-Win32-VC9-x86\php-cgi.exe -b 127.0.0.1:9000 -c V:\SciTE\php-5.4.10-nts-Win32-VC9-x86\php.ini