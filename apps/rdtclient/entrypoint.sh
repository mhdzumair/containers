#!/usr/bin/env bash

#shellcheck disable=SC1091
source "/scripts/vpn.sh"

#shellcheck disable=SC2086
exec \
    dotnet RdtClient.Web.dll