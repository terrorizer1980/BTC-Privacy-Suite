#!/bin/bash

# Print macaroons in hex format for Zeus app

network="mainnet"
macaroon_name="admin"

if [ -n "$1" ]; then
    network="$1"
fi

if [ -n "$2" ]; then
    macaroon_name="$2"
fi

macaroon_hex="$(docker-compose exec -u lnd lnd sh -c "cat /home/lnd/.lnd/data/chain/bitcoin/\"$network\"/\"$macaroon_name\".macaroon" | xxd -p | tr -d '\n')"

echo "$network $macaroon_name macaroon (in hex):"
echo "$macaroon_hex"
