#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
CERTS_FILE_PATH="$SCRIPT_DIR/../res/acme.json"

pushd . > /dev/null

rm "$CERTS_FILE_PATH" 2> /dev/null
touch "$CERTS_FILE_PATH"
chmod 600 "$CERTS_FILE_PATH"

echo "The new certificates file was created."

popd > /dev/null
