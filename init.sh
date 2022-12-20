#!/usr/bin/env bash
# set -e # This setting is telling the script to exit on a command error.
if [[ "$1" == "-v" ]]; then
  set -x # You refer to a noisy script.(Used to debugging)
fi

export DEBIAN_FRONTEND=noninteractive

SCRIPTNAME=$0
SCRIPTDIRPATH=$(realpath $(dirname $0))

if [ "$(whoami)" != "root" ]; then
  SUDO=sudo
fi

echo "I am located at  "
cargo fix --allow-dirty

status=$?
[ $status -eq 0 ] && echo "[${SCRIPTDIRPATH}/${SCRIPTNAME}] successfully executed ....[DONE]" || exit $status