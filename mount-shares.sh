#!/bin/bash

# Replace this array of shares to have your shares, this is an example using my shares!
SHARES=(
    "smb://100.107.19.67/Public"
    "smb://100.107.19.67/remote-storage"
)

echo "🚀 Initiating vibe-check on Samba shares..."

for SHARE in "${SHARES[@]}"; do
    # Check if already mounted to avoid duplicates
    if mount | grep -q "$SHARE"; then
        echo "✅ $SHARE is already vibing with your system."
    else
        echo "🔗 Connecting to $SHARE..."
        # The AppleScript magic
        osascript -e "mount volume \"$SHARE\""
    fi
done

echo "✨ All set. Happy trails."
