#!/bin/bash
set -e

echo "=== Bluewater Git Hooks Installer (Linux/macOS) ==="

HOOKS_DIR="$(git rev-parse --show-toplevel)/.githooks"
GIT_HOOKS_DIR="$(git rev-parse --show-toplevel)/.git/hooks"

# List of hooks to install (add more if needed)
HOOKS=("pre-commit")

for HOOK in "${HOOKS[@]}"; do
    SRC="$HOOKS_DIR/$HOOK"
    DEST="$GIT_HOOKS_DIR/$HOOK"

    if [ -f "$SRC" ]; then
        cp "$SRC" "$DEST"
        chmod +x "$DEST"
        echo "Installed: $HOOK"
    else
        echo "Warning: Hook script $SRC not found."
    fi
done

echo "All supported hooks installed."
echo "You may now commit with project-standard hooks enforced."
