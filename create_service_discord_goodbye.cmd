@echo off
::All files saved in 866

:: �஢�ઠ ���
set scriptPath=%~dp0
set "path_no_spaces=%scriptPath: =%"
if not "%scriptPath%"=="%path_no_spaces%" (
    echo ���� ᮤ�ন� �஡���. 
    echo ��������, ��६���� �ਯ� � ����� ��� �஡����.
    >nul pause
    exit /b
)


:: ����稥 �ࠢ �����������
echo.
echo ����� 䠩� ������ ���� ����饭 � �ࠢ��� ����������� (��� ^> �������� �� ����� �����������).
echo �᫨ �� 㢥७�, ������ ���� �������, �⮡� �த������ ᮧ����� �㦡�
echo.
pause

:: �।�०����� � GDPI
echo.
echo ����� �ࢨ� ࠡ�⠥� ������ � �㦡�� GoodbyeDPI.
echo �᫨ �� 㢥७�, ������ ���� �������, �⮡� �த������ ᮧ����� �㦡�
echo.
pause


set BIN=%~dp0zapret\zapret-winws\
set LISTS=%~dp0lists\
set ARGS=--wf-raw=\"@%LISTS%rules.txt\" ^
--filter-udp=443 --hostlist=\"%LISTS%list-discord.txt\" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic=\"%BIN%quic_initial_www_google_com.bin\" --new ^
--filter-udp=50000-65535 --dpi-desync=fake --dpi-desync-any-protocol --dpi-desync-cutoff=d3 --dpi-desync-repeats=6 --dpi-desync-fake-quic=\"%BIN%quic_initial_www_google_com.bin\" --new ^
--filter-tcp=443 --hostlist=\"%LISTS%list-discord.txt\" --dpi-desync=fake,split --dpi-desync-autottl=2 --dpi-desync-repeats=6 --dpi-desync-fooling=badseq --dpi-desync-fake-tls=\"%BIN%tls_clienthello_www_google_com.bin\"

set SRVNAME=zapret

net stop "%SRVNAME%"
sc delete "%SRVNAME%"
sc create "%SRVNAME%" binPath="\"%BIN%winws.exe\" %ARGS%" DisplayName="zapret DPI bypass: Discord (GoodbyeDPI)" start=auto depend="GoodbyeDPI"
sc description "%SRVNAME%" "zapret DPI bypass software"
sc start "%SRVNAME%"


echo.
echo ������ ���� ������ �⮡� ������� ���� . . . & >nul pause & exit
