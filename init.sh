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


# readelf -h target/release/hello-world-rs
# file target/release/hello-world-rs
# ldd target/release/hello-world-rs
# hexdump -C  target/release/hello-world-rs | head
# strings target/release/hello-world-rs
# readelf -h target/release/hello-world-rs
# objdump -d  target/release/hello-world-rs | head
# strace -f   target/release/hello-world-rs
# nm target/release/hello-world-rs | tail
# Yes, Yes, I know gdb for something....
# gdb -q target/release/hello-world-rs

status=$?
[ $status -eq 0 ] && echo "[${SCRIPTDIRPATH}/${SCRIPTNAME}] successfully executed ....[DONE]" || exit $status
