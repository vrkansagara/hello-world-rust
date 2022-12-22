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

if [[ "$1" == "-f" ]]; then
    cargo fmt
    exit 0
fi



if [[ "$1" == "--install=nightly" ]]; then
    rustup update
    rustup update nightly
    #    cargo +nightly fmt --check
    exit 0
fi

echo "Lets update the rust"
rustup self update
rustup update

# If you want to install stable then ...
#rustup install stable
#rustup default stable


echo "I am located at  "
cargo fix --allow-dirty

echo " rustup show"
rustup show

echo " rustup version"
rustup -V

echo " rustc version"
rustc -V

echo " cargo version"
cargo -V

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
# size target/release/hello-world-rs

# Let's measure timing
#time target/release/hello-world-rs > /dev/null 2>&1

status=$?
[ $status -eq 0 ] && echo "[${SCRIPTDIRPATH}/${SCRIPTNAME}] successfully executed ....[DONE]" || exit $status
