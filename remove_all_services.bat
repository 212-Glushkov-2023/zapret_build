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

net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo Windivert stopping . . .

sc stop windivert
net stop "WinDivert"
net stop "WinDivert14"

echo Windivert stopping . . .
sc stop windivert

echo.
echo ������ ���� ������ �⮡� ������� ���� . . . & >nul pause & exit
