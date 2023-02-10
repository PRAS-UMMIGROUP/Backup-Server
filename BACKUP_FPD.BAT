@echo off
:: variables

set Source=F:\FPD26\DATARSKB
set Target=D:\BACKUP\"%date:~6,4%-%date:~3,2%-%date:~0,2%"\FPD26
set Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

echo ### Backing up directory DATARSKB 
%Cmdnya% %Source% "%Target%\DATARSKB"
REM echo Backup Complete DATARSKB! on %date%

set Source=F:\FPD26\DATARIP

echo ### Backing up directory DATARIP
%Cmdnya% %Source% "%Target%\DATARIP"
REM echo Backup Complete DATARIP! on %date%

set Source=F:\FPD26\MyRevisi

echo ### Backing up directory DATA REVISI
%Cmdnya% %Source% "%Target%\MyRevisi"
REM echo Backup Complete DATARIP! on %date%

set Source=F:\FPD26\NEWtarip

echo ### Backing up directory DATA NEW TARIP
%Cmdnya% %Source% "%Target%\NEWtarip"
REM echo Backup Complete DATARIP! on %date%

REM echo Backup Complete! on %date%
REM @pause