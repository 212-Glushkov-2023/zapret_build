@echo off
::File saved in 866 encoding

:: ����稥 �ࠢ �����������
echo.
echo ����� 䠩� ������ ���� ����饭 � �ࠢ��� ����������� (��� ^> �������� �� ����� �����������).
echo �᫨ �� 㢥७�, ������ ���� �������, �⮡� �த������ 㤠����� �㦡
echo.
pause
cls

echo Windivert deleting . . .

sc stop windivert
sc delete windivert

net stop "WinDivert"
net delete "WinDivert"

net stop "WinDivert14"
net delete "WinDivert14"

echo.
echo ������ ���� ������ �⮡� ������� ���� . . . & >nul pause & exit
