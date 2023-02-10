@echo off
:: variables

set source=Y:\
set Target="F:\Backup SQLServer\%date:~6,4%-%date:~3,2%-%date:~0,2%"
set Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

echo ### Backing up directory SQL Server
%Cmdnya% %Source% %Target%
REM echo Backup Complete SQL Server ! on %date%

REM echo Backup Complete! on %date%
REM @pause