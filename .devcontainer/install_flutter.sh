#!/usr/bin/env bash
set -e

FLUTTER_DIR="/usr/local/flutter"

# Install deps
sudo apt-get update
sudo apt-get install -y git curl unzip xz-utils zip libglu1-mesa

# Install Flutter (stable)
if [ ! -d "$FLUTTER_DIR" ]; then
  sudo git clone https://github.com/flutter/flutter.git -b stable --depth 1 "$FLUTTER_DIR"
    sudo chown -R "$(whoami)":"$(whoami)" "$FLUTTER_DIR"
    fi

    # Add to PATH for all shells
    echo 'export PATH=/usr/local/flutter/bin:$PATH' | sudo tee /etc/profile.d/flutter.sh >/dev/null

    # Make it available in current session too
    export PATH="/usr/local/flutter/bin:$PATH"

    flutter --version
    flutter doctor -v || true