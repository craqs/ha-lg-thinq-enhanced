#!/bin/bash
# Deploy enhanced lg_thinq to Home Assistant
# Run this on the HA server (via terminal addon or SSH)

set -e
HA_CONFIG="/config"
TARGET="$HA_CONFIG/custom_components/lg_thinq"

echo "Deploying lg_thinq (enhanced) to $TARGET..."
mkdir -p "$TARGET"
cp -r custom_components/lg_thinq/* "$TARGET/"
echo "Deploy complete. Restart HA to load the custom integration."
