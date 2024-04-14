#!/usr/bin/env bash

bitcoind -zmqpubhashblock="tcp://0.0.0.0:29000" -zmqpubrawblock="tcp://0.0.0.0:29001" -zmqpubhashtx="tcp://0.0.0.0:29002"  -zmqpubrawtx="tcp://0.0.0.0:29003" -zmqpubhashtxhwm=10000 -printtoconsole=1 -txindex=1 -regtest=1 -rpcuser=soloengineer -rpcpassword=soloengineer -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 -rpcport=18443 -fallbackfee=0.00001 &

echo "Booting bitcoind ..."

sleep 2;
bitcoin-cli -regtest=1 -rpcuser=soloengineer -rpcpassword=soloengineer createwallet genesis || bitcoin-cli -regtest=1 -rpcuser=soloengineer -rpcpassword=soloengineer loadwallet genesis

while true; do bitcoin-cli -rpcwallet=genesis -regtest=1 -rpcuser=soloengineer -rpcpassword=soloengineer -generate 1; sleep 10; done