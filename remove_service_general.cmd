@echo off
chcp 65001 >nul

set SRVNAME=zapret

sc stop windivert
net stop "%SRVNAME%"
sc delete "%SRVNAME%"

echo Нажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit /b
