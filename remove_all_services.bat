@echo off


echo Windivert stopping . . .
sc stop windivert


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

net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo.
echo �������� �㦡� zapret-discord-mgts . . .
echo.
set SRVNAME=zapret-discord-mgts

net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo.
echo ������ ���� ������ �⮡� ������� ���� . . . & >nul pause & exit
