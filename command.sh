#!/usr/bin/env bash

docker exec --user bitcoin bitcoin-server bitcoin-cli -regtest -rpcuser=soloengineer -rpcpassword=soloengineer "$@"