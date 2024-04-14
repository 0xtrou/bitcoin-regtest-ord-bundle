#!/usr/bin/env bash

$(pwd)/ord/target/release/ord --index-runes --regtest --bitcoin-rpc-username soloengineer --bitcoin-rpc-password soloengineer --data-dir ./ord-data "$@"
