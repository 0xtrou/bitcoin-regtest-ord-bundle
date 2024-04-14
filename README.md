# Ordinals Devnet Installation

The repo contains the full stacks setup for ordinals development env: bitcoind, ordinals, an explorer and an RPC API (blockstream electrs and esplora), docker based.

## Getting started

### Prerequisites

- Install docker, following the docs here https://docs.docker.com/engine/install/
- Clone the `ord` repo in the root directory, install `ord` cli by building the latest version, following the docs https://github.com/casey/ord#building
- Install the latest node version (recommended 19.9 at least)

### Start bitcoind & esplora explorer + API

```bash
docker compose up -d
```

### Start ordinals server

```bash
bash ./ord.sh server --http-port 3003
```

### Start Ordinals Indexer

```bash
bash ./ordinals-indexer/install.sh
bash ./start_indexer.sh
```

### Local URLs

- Bitcoin RPC: [http://soloengineer:soloengineer@127.0.0.1:18443?timeout=10000](http://soloengineer:soloengineer@127.0.0.1:18443?timeout=10000)
- Ordinals API: http://127.0.0.1:3000/
- Explorer: http://127.0.0.1:3002/
- Ordinals Explorer: http://127.0.0.1:3003/
- Esplora RPC: http://127.0.0.1:3004/