#!/bin/bash
echo "Starte bitcoind ..."
# path to bitcoind
cd /media/ted/udata/ubuntu/btc_node/btc_working/
bitcoind -conf=/media/ted/udata/ubuntu/btc_node/btc_working/bitcoin.conf -datadir=/media/ted/udata/ubuntu/btc_node/btc_working/ -daemon
exit


