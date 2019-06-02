@ECHO OFF
 

:RESTART
 

SET num=-1
 

tasklist | find /C "LuaStudio.exe">temp.txt
 

set /p num= < temp.txt 
 

:: echo 找到进程数：%num%
 

if "%num%" == "0"    (
 

echo 重启时间是：%date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% >>RestartLog.txt
 

start /D "C:\Program Files (x86)\LuaStudio\" LuaStudio.exe
 

)

ping -n 5 -w 1000 0.0.0.1>nul

goto RESTART