@echo off
:: variables

set Source=X:\
set Target=H:\Backup SQLServer\"%date:~6,4%-%date:~3,2%-%date:~0,2%"
set Cmdnya=xcopy /c /d /h /i /r /k /y
%Cmdnya% %Source% "%Target%"

REM set Source=X:\
REM set Target=G:\"%date:~6,4%-%date:~3,2%-%date:~0,2%"
REM set Cmdnya=xcopy /c /d /h /i /r /k /y
REM %Cmdnya% %Source% "%Target%"