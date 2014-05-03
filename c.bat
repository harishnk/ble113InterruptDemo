@echo off
.\bin\bgbuild.exe project.bgproj
set /p ANSWER=Do you want to update the firmware (Y/N): 

if /i {%ANSWER%}=={y} (goto :yes) 
if /i {%ANSWER%}=={yes} (goto :yes) 
goto:no

:yes
c:\program2\bleupdate-cli.exe update out.hex
echo Attempted update
exit /b 0

:no
echo Not updated
exit /b 1