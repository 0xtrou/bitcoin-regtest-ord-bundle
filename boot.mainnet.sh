#!/usr/bin/env bash

bitcoind -daemon=0 -zmqpubhashblock="tcp://0.0.0.0:29000" -zmqpubrawblock="tcp://0.0.0.0:29001" -zmqpubhashtx="tcp://0.0.0.0:29002"  -zmqpubrawtx="tcp://0.0.0.0:29003" -zmqpubhashtxhwm=10000 -printtoconsole=1 -txindex=1 -rpcuser=soloengineer -rpcpassword=soloengineer -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 -rpcport=8332 -fallbackfee=0.00001 -server &

echo "Booting bitcoind ..."