# OLG uCentral Schema

Collection of JSON schemas used by uCentral for validating the data model.

## Building

### Dependencies

In order to generate and validate schema artifacts you will need the following tools:
* python3
* PyYAML (`pip3 install pyyaml`)
* [ucode](https://github.com/jow-/ucode)
* jq

### Generation

Run the repo generator from the repository root:

```sh
./tools/generate.sh
```

This regenerates:
- `ucentral.schema.json`
- `ucentral.schema.pretty.json`
- `ucentral.schema.full.json`
- `ucentral.state.pretty.json`
- `validator/ucode/schemareader.uc`
- `validator/bash/schemareader.sh`

### Layout

The repository is organized as follows:
- `schema/` - schema source definitions
- `state/` - state schema source definitions
- `tools/merge-schema.py` - merges schema YAML into generated JSON artifacts
- `tools/generate.sh` - regenerates schema and validator artifacts
- `generators/ucode/generate-reader.uc` - generates `validator/ucode/schemareader.uc`
- `generators/bash/generate-bash-reader.uc` - generates `validator/bash/schemareader.sh`
- `validator/ucode/schemareader.uc` - ucode validator returning the prepared JSON object
- `validator/bash/schemareader.sh` - bash validator returning the prepared JSON object
