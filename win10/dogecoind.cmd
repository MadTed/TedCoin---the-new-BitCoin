rem starting Dogecoin Daemon
@ECHO OFF
ECHO .
ECHO now starting Dogecoin Daemon  ...
ECHO J:\Dogecoin\daemon\dogecoind -debug=1 -uacomment=UnseenGhost -shrinkdebugfile
ECHO .
J:
cd J:\Dogecoin\daemon\
dogecoind -debug=1 -uacomment=UnseenGhost -shrinkdebugfile
