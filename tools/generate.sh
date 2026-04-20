#!/bin/sh

set -e
set -x

./tools/merge-schema.py schema schema ucentral.yml ucentral.schema.json 1 1
./tools/merge-schema.py schema schema ucentral.yml ucentral.schema.pretty.json 0 1
./tools/merge-schema.py schema schema ucentral.yml ucentral.schema.full.json 0 0
./tools/merge-schema.py state state state.yml ucentral.state.pretty.json 0 1
mkdir -p ./validator/ucode ./validator/bash
./generators/ucode/generate-reader.uc > ./validator/ucode/schemareader.uc
./generators/bash/generate-bash-reader.uc > ./validator/bash/schemareader.sh
chmod +x ./validator/bash/schemareader.sh
