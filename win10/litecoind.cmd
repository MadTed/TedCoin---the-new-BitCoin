rem starting Litecoin Daemon
@ECHO OFF
ECHO now starting Litecoin ...
ECHO Z:\Litecoin\litecoin-qt.exe -debug=1 -uacomment=UnseenGhost -shrinkdebugfile 
Z:
cd Z:\Litecoin\
litecoin-qt.exe -debug=1 -uacomment=UnseenGhost -shrinkdebugfile
