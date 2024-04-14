#!/usr/bin/env bash

$(pwd)/ord/target/release/ord --regtest --bitcoin-rpc-username soloengineer --bitcoin-rpc-password soloengineer --data-dir ./ord-data "$@"
