@ECHO OFF
rem Kills process that takes port given by first argument
for /f "delims=" %%i in ('netstat -ano ^| findstr :%1') do set row=%%i
for /F "tokens=1,2,3,4,5" %%A in ("%row%") DO (
  set pid=%%E
)
taskkill /PID %pid% /F