#!/usr/bin/env bash
set -eu
echo ORG_CHECK_START
printf 'TS_UTC: '; date -u +%Y-%m-%dT%H:%M:%SZ
printf 'HEAD_SHA: '; git rev-parse --short HEAD
printf 'SCRIPT_SHA256: '; sha256sum "$0" | awk '{print $1}'
printf 'PWD: '; pwd
printf 'UNAME: '; uname -a
echo ORG_CHECK_END
