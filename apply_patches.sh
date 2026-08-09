#!/bin/bash

OPENWRT_DIR="$1"

if [ -z "$OPENWRT_DIR" ]; then
    echo "Usage: $0 <openwrt_dir>"
    exit 1
fi

if [ -d "msm89xx" ]; then
    cp -r msm89xx "$OPENWRT_DIR/target/linux/"
fi

if [ -d "packages" ]; then
    cp -r packages "$OPENWRT_DIR/package/msm8916"
fi

echo "Patches applied successfully to $OPENWRT_DIR"
