@echo off
::File saved in 866 encoding

:: ����稥 �ࠢ �����������
echo.
echo ����� 䠩� ������ ���� ����饭 � �ࠢ��� ����������� (��� ^> �������� �� ����� �����������).
echo �᫨ �� 㢥७�, ������ ���� �������, �⮡� �த������ 㤠����� �㦡
echo.
pause
cls

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
echo ������ ���� ������ �⮡� ������� ���� . . . & >nul pause & exit
