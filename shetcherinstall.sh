#!/bin/bash

# Define variables
ETCHER_VERSION="1.18.11"  # You can update this to the latest version if needed
ETCHER_URL="https://github.com/balena-io/etcher/releases/download/v${ETCHER_VERSION}/balenaEtcher-${ETCHER_VERSION}-x64.AppImage"
DOWNLOAD_DIR="$HOME/Downloads"
ETCHER_APPIMAGE="${DOWNLOAD_DIR}/balenaEtcher-${ETCHER_VERSION}-x64.AppImage"

# Download the Balena Etcher AppImage
echo "Downloading Balena Etcher v${ETCHER_VERSION}..."
wget -O "${ETCHER_APPIMAGE}" "${ETCHER_URL}"

# Make the AppImage executable
echo "Making the AppImage executable..."
chmod +x "${ETCHER_APPIMAGE}"

# Launch Balena Etcher
echo "Launching Balena Etcher..."
"${ETCHER_APPIMAGE}"
