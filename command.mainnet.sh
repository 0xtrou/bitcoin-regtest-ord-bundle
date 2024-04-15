#!/usr/bin/env bash

docker exec --user bitcoin bitcoin-server bitcoin-cli -rpcuser=soloengineer -rpcpassword=soloengineer "$@"