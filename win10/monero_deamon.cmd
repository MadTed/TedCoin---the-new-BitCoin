@ECHO OFF
ECHO .
ECHO =================================================
ECHO starting Monero XMR deamon ...
ECHO .
Z:
cd Z:\Monero\
REM monerod.exe --db-salvage --data-dir Z:\Monero\blockchain\
ECHO monerod.exe --data-dir Z:\Monero\blockchain\
ECHO .
monerod.exe --data-dir Z:\Monero\blockchain\
ECHO .
ECHO done.
ECHO =================================================
ECHO .
PAUSE