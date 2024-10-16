@echo off
chcp 65001 >nul
::UTF-8

:: Проверка пути
set scriptPath=%~dp0
set "path_no_spaces=%scriptPath: =%"
if not "%scriptPath%"=="%path_no_spaces%" (
    echo Путь содержит пробелы. 
    echo Пожалуйста, переместите скрипт в папку без пробелов.
    >nul pause
    exit /b
)


:: Наличие прав администратора
echo.
echo Данный файл должен быть запущен с правами администратора (ПКМ ^> Запустить от имени администратора).
echo Если вы уверены, нажмите любую клавишу, чтобы продолжить создание службы
echo.
pause

:: Предупреждение о GDPI
echo.
echo Данный сервис работает ТОЛЬКО с службой GoodbyeDPI.
echo Если вы уверены, нажмите любую клавишу, чтобы продолжить создание службы
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
echo Нажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit
