#!/usr/bin/env bash
echo "Booting bitcoind ..."
bitcoind -daemon=0 -rpcuser=soloengineer -rpcpassword=soloengineer -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 -rpcport=8332 -server

