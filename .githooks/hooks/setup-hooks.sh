#!/bin/bash

# Bluewater: Git Hook Installer for Unix/Linux/macOS
# Copies all files from .githooks/ to .git/hooks/ (except itself)
# Updates "Last Modified: {{YYYY-MM-DD}}" in both source and dest with today's date

set -e

SRC_DIR=".githooks"
DST_DIR=".git/hooks"
TODAY=$(date +%F)

if [ ! -d "$DST_DIR" ]; then
  echo "[ERROR] No .git directory found. Please run this script at your repository root."
  exit 1
fi

echo "--------------------------------------------------"
echo "🔧 Syncing Git hooks to $DST_DIR"
echo "📅 Last Modified: $TODAY"
echo "--------------------------------------------------"

cd "$SRC_DIR"
for SRC in *; do
  # Skip this script itself
  [ "$SRC" = "setup-hooks.sh" ] && continue
  DST="../$DST_DIR/$SRC"

  # Copy or update if source is newer or destination doesn't exist
  if [ ! -f "$DST" ]; then
    echo "📥 Copying new hook: $SRC"
    cp "$SRC" "$DST"
  elif [ "$SRC" -nt "$DST" ]; then
    echo "🔄 Updating hook: $SRC (Newer version)"
    cp "$SRC" "$DST"
  else
    echo "✅ Up-to-date: $SRC"
  fi

  # Update Last Modified token in both SRC and DST
  sed -i'' -E "s|Last Modified: \{\{[0-9\-]*\}\}|Last Modified: $TODAY|g" "$SRC"
  sed -i'' -E "s|Last Modified: \{\{[0-9\-]*\}\}|Last Modified: $TODAY|g" "$DST"

  # Ensure executable
  chmod +x "$DST"
done

cd ..
echo "--------------------------------------------------"
echo "✅ Hook installation complete."
