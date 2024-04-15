#!/usr/bin/env bash

$(pwd)/ord/target/release/ord --index-runes --bitcoin-rpc-username soloengineer --bitcoin-rpc-password soloengineer --data-dir ./mainnet-ord-data "$@"
