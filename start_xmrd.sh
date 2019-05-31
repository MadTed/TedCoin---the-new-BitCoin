#!/bin/bash
# batch file for starting monero xmr daemon
# mad666ted@gmail.com 2019-03-24
#####################
echo "Starte monerod ..."
cd /media/ted/udata1/monero/sources/monero-v0.14.0.2/
./monerod --config-file=/media/ted/udata1/monero/sources/monero-v0.14.0.2/bitmonero.conf
exit



