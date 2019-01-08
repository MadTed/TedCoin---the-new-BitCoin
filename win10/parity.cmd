@ECHO OFF
ECHO .
ECHO Parity wird gestartet ...
rem  -c Ethereum/config.toml
ECHO parity.exe --can-restart --jsonrpc-interface all --jsonrpc-cors * --ws-interface all --ws-origins all --unsafe-expose -c Ethereum/config.toml
J:
cd J:\Parity\
parity.exe --can-restart --jsonrpc-interface all --jsonrpc-cors * --ws-interface all --ws-origins all --unsafe-expose -c Ethereum/config.toml
