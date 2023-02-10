@echo off
:: variables

set Source=D:\xampp\htdocs\mutu2
set Target=Z:\WEBSERVER\"%date:~6,4%-%date:~3,2%-%date:~0,2%"\mutu2
set Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

echo ### Backing up directory Mutu
%Cmdnya% %Source% "%Target%"

set Source=D:\xampp\htdocs\sdm2
set Target=Z:\WEBSERVER\"%date:~6,4%-%date:~3,2%-%date:~0,2%"\sdm2
set Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

echo ### Backing up directory SDM
%Cmdnya% %Source% "%Target%"

set Source=D:\xampp\htdocs\rsummi-aset
set Target=Z:\WEBSERVER\"%date:~6,4%-%date:~3,2%-%date:~0,2%"\rsummi-aset
set Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

echo ### Backing up directory RS UMMI Aset
%Cmdnya% %Source% "%Target%"

set Source=D:\xampp\htdocs\pras
set Target=Z:\WEBSERVER\"%date:~6,4%-%date:~3,2%-%date:~0,2%"\pras
set Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

echo ### Backing up directory RS UMMI Aset
%Cmdnya% %Source% "%Target%"

set Source=D:\xampp\htdocs\rsummi-api
set Target=Z:\WEBSERVER\"%date:~6,4%-%date:~3,2%-%date:~0,2%"\rsummi-api
set Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

echo ### Backing up directory RS UMMI API
%Cmdnya% %Source% "%Target%"

REM echo Backup Complete! on %date%
REM @pause