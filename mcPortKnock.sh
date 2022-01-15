#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ ! -z "${MC_PORT_KNOCK_CONFIG_BASE64:-}" ]
then
  echo -n ${MC_PORT_KNOCK_CONFIG_BASE64} | base64 -d > config.json
fi

exec /mcPortKnock/mcPortKnock
