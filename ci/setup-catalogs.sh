#!/usr/bin/env bash

set -euo pipefail

echo "Setting up user catalogs..."
raco pkg config \
     --user \
     --set catalogs \
     https://download.racket-lang.org/releases/8.5/catalog/ \
     https://racksnaps.defn.io/snapshots/2022/06/16/catalog/
