@echo off
echo ######################################
echo ##        BACKUP DATA MY-SQL        ##
echo ######################################

REM Import Database : 
REM D:/xampp/mysql/bin/mysql – u root -p databasename < D:/test.sql (sql file name)

REM Export Database : 
REM D:/xampp/mysql/bin/mysqldump -u root -p databasename > D:/text.sql(sql file name)

REM SETING TANGGAL DAN JAM - GUNAKAN INI
REM SET datetimef=%date:~-4%-%date:~3,2%-%date:~0,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%

REM SETING TANGGAL SAJA - GUNAKAN INI
SET datetimef=%date:~-4%-%date:~3,2%-%date:~0,2%

echo ##   BACKUP DATA TGL : %datetimef%   ##
echo ######################################

SET backupdir=D:\Backup-DB
SET mysqluername=[username]
SET mysqlpassword=[Password]

SET Target="Z:\"
SET Cmdnya=xcopy /s /c /d /e /h /i /r /k /y

REM SET database1=aset_db
REM d:\xampp\mysql\bin\mysqldump.exe -u%mysqluername% -p%mysqlpassword% %database% > %backupdir%\%database%_%mydate%_%mytime%.sql

SET database1=aset_db
SET source="%backupdir%\%datetimef%-%database1%.sql"
d:\xampp\mysql\bin\mysqldump.exe -u%mysqluername% -p%mysqlpassword% %database1% > %source%
echo ## %datetimef%-%database1%.sql   Selesai ##
%Cmdnya% %Source% %Target%

SET database2=sa-smsd
SET source="%backupdir%\%datetimef%-%database2%.sql"
d:\xampp\mysql\bin\mysqldump.exe -u%mysqluername% -p%mysqlpassword% %database2% > %source%
echo ## %datetimef%-%database2%.sql   Selesai ##
%Cmdnya% %Source% %Target%

SET database3=pagesit
SET source="%backupdir%\%datetimef%-%database3%.sql"
d:\xampp\mysql\bin\mysqldump.exe -u%mysqluername% -p%mysqlpassword% %database3% > %source%
echo ## %datetimef%-%database3%.sql   Selesai ##
%Cmdnya% %Source% %Target%

SET database4=sdm2
SET source="%backupdir%\%datetimef%-%database4%.sql"
d:\xampp\mysql\bin\mysqldump.exe -u%mysqluername% -p%mysqlpassword% %database4% > %source%
echo ## %datetimef%-%database4%.sql      Selesai ##
%Cmdnya% %Source% %Target%

SET database5=surat_db
SET source="%backupdir%\%datetimef%-%database5%.sql"
d:\xampp\mysql\bin\mysqldump.exe -u%mysqluername% -p%mysqlpassword% %database5% > %source%
echo ## %datetimef%-%database5%.sql  Selesai ##
%Cmdnya% %Source% %Target%


SET database6=db_sijamu
SET source="%backupdir%\%datetimef%-%database6%.sql"
d:\xampp\mysql\bin\mysqldump.exe -u%mysqluername% -p%mysqlpassword% %database6% > %source%
echo ## %datetimef%-%database6%.sql  Selesai ##
%Cmdnya% %Source% %Target%

echo ######################################
REM pause
