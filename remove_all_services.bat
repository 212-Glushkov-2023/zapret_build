@echo off

set SRVNAME=zapret

echo Windivert stopping . . .
sc stop windivert

echo.
echo �������� �㦡� zapret . . .
echo.
net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo.
echo �������� �㦡� zapret-discord . . .
echo.
set SRVNAME=zapret-discord

net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo.
echo �������� �㦡� zapret-discord-mgts . . .
echo.
set SRVCNAME=zapret-discord-mgts

net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo.
echo ������ ���� ������ �⮡� ������� ���� . . . & >nul pause & exit
