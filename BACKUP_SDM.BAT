@echo off
:: variables

set Source=M:\SDMdata
set Target=D:\BACKUP\"%date:~6,4%-%date:~3,2%-%date:~0,2%"\SDM\SDMdata
set Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

echo ### Backing up directory SDM 
%Cmdnya% %Source% %Target%
REM echo Backup Complete SDM! on %date%

REMecho Backup Complete! on %date%
REM @pause