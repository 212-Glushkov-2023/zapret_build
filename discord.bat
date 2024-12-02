cd /d "%~dp0"
set BIN=%~dp0zapret\zapret-winws\
start "zapret: discord" /min "%BIN%winws.exe" ^
set ARGS=--wf-tcp=443 --wf-udp=443 ^
--filter-udp=443 --hostlist=\"%~dp0list-discord.txt\" --dpi-desync=fake --dpi-desync-udplen-increment=10 --dpi-desync-repeats=6 --dpi-desync-udplen-pattern=0xDEADBEEF --dpi-desync-fake-quic=\"%BIN%quic_initial_www_google_com.bin\" --new ^
--filter-tcp=443 --hostlist=\"%~dp0list-discord.txt\" --dpi-desync=fake,split2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=\"%BIN%tls_clienthello_www_google_com.bin\"
