for /f "tokens=*" %%a IN ('where python') do set py=%%a
for /f "tokens=3" %%a in ('wmic process call create "%py% monitor.py > %~dp0\1.txt"^,"%~dp0"^|find "ProcessId"') do set pid=%%a
echo %pid% > pid.txt