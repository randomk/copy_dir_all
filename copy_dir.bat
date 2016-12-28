:: Author Rodrigo Melgar
:: Simple batch for my friend use on your minecraft server 
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
SET arg1=%1
SET dir_name=%date:~6,4%%date:~3,2%%date:~0,2%_%mytime%
robocopy I:\%arg1% I:\%dir_name% /e /mir /np /log:backup_log.txt
