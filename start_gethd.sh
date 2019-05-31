#!/bin/bash
echo "Starte ETH geth daemon ..."
cd /media/ted/udata1/ethereum/work/
geth --datadir "/media/ted/udata1/ethereum/work/" --syncmode "light" --cache 14000 --ethash.dagdir "/media/ted/udata1/ethereum/work/" --rpc --verbosity 2 --config "/media/ted/udata1/ethereum/work/config.toml" console
exit

