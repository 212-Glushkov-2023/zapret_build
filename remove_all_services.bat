@echo off

set SRVNAME=zapret

echo.
echo �������� �㦡� zapret . . .
echo.
net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo.
echo �������� �㦡� zapret-discord . . .
echo.
set SRVNAME=zapret-discord

sc stop windivert
net stop "%SRVNAME%"
sc delete "%SRVNAME%"

echo.
echo ������ ���� ������ �⮡� ������� ���� . . . & >nul pause & exit
