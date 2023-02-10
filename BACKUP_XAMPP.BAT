@echo off
:: variables

set Source=D:\xampp
set Target=E:\BACKUP\"%date:~6,4%-%date:~3,2%-%date:~0,2%"\XAMPP
set Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

echo ### Backing up directory XAMPP
%Cmdnya% %Source% "%Target%"

REM echo Backup Complete! on %date%
REM @pause