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
echo ����� 䠩� ������ ���� ����饭 � �ࠢ��� ����������� (��� -^> �������� �� ����� �����������).
echo �᫨ �� 㢥७�, ������ ���� �������, �⮡� �த������ ᮧ����� �㦡�
echo.
pause


set BIN=%~dp0zapret\zapret-winws\
set ARGS=--wf-tcp=443-65535 --wf-udp=443-65535 ^
--wf-tcp=80,443,50000-65535 --wf-udp=443,50000-65535 ^
--filter-udp=443 --hostlist="%BIN%list-general.txt" --dpi-desync=fake --dpi-desync-udplen-increment=10 --dpi-desync-repeats=6 --dpi-desync-udplen-pattern=0xDEADBEEF --dpi-desync-fake-quic="%BIN%quic_initial_www_google_com.bin" --new ^
--filter-udp=50000-65535 --dpi-desync=fake,tamper --dpi-desync-any-protocol --dpi-desync-fake-quic="%BIN%quic_initial_www_google_com.bin" --new ^
--filter-tcp=80 --dpi-desync=fake,split2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=443 --hostlist="%BIN%list-general.txt" --dpi-desync=fake --dpi-desync-autottl=2 --dpi-desync-autottl6=2 --dpi-desync-fooling=md5sig --dpi-desync-fake-tls="%BIN%tls_clienthello_www_google_com.bin" --new ^
--dpi-desync=fake,disorder2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig

set SRVNAME=zapret

net stop "%SRVNAME%"
sc delete "%SRVNAME%"
sc create "%SRVNAME%" binPath="\"%BIN%winws.exe\" %ARGS%" DisplayName="zapret DPI bypass: General" start=auto
sc description "%SRVNAME%" "zapret DPI bypass software"
sc start "%SRVNAME%"


echo.
echo ������ ���� ������ �⮡� ������� ���� . . . & >nul pause & exit
