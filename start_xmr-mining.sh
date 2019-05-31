#!/bin/bash
# cli option: x threads for mining = $1
echo "Starte XMR mining mit $1 threads..."
cd /home/ted/cpuminer-multi
sudo ./minerd -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u ted.varg@hotmail.com -t $1
exit

