#!/bin/bash
set -xe

export ARCH=arm64
export LLVM=1

[ -d build ] || git clone https://gitlab.com/ubports/community-ports/halium-generic-adaptation-build-tools -b main build
./build/build.sh "$@"
