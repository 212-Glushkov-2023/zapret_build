@echo off

set SRVNAME=zapret

sc stop windivert
net stop "%SRVNAME%"
sc delete "%SRVNAME%"

echo ������ ���� ������ �⮡� ������� ���� . . . & >nul pause & exit /b
