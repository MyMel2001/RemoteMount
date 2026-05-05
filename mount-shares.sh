#!/bin/bash

# Replace this array of shares to have your shares, this is an example using my shares!
SHARES=(
    "smb://100.107.19.67/Public"
    "smb://100.107.19.67/remote-storage"
)

for SHARE in "${SHARES[@]}"; do
    echo "🔗 Connecting to $SHARE..."
    # The AppleScript magic
    osascript -e "mount volume \"$SHARE\""
done

echo "✨ All set. Happy trails."
exit 0
