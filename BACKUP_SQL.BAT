@echo off
:: variables

set source=Z:\wamp\bin\mysql\mysql5.5.24\data\simrskb
set Target=D:\BACKUP\"%date:~6,4%-%date:~3,2%-%date:~0,2%"\MYSQL\SIMRSKB
set Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

echo ### Backing up directory SDM 
%Cmdnya% %Source% %Target%
REM echo Backup Complete MYSQL! on %date%

REM echo Backup Complete! on %date%
REM @pause