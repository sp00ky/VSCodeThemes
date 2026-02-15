#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_DIR="$ROOT_DIR/.build"
DIST_DIR="$ROOT_DIR/dist"
PLUGIN_DIR_NAME="base16-dark-ashes-kelly-rider-theme"
PLUGIN_DIR="$BUILD_DIR/$PLUGIN_DIR_NAME"
PLUGIN_JAR="$PLUGIN_DIR/lib/$PLUGIN_DIR_NAME.jar"
PLUGIN_ZIP="$DIST_DIR/$PLUGIN_DIR_NAME.zip"

rm -rf "$PLUGIN_DIR"
mkdir -p "$PLUGIN_DIR/lib" "$DIST_DIR"

(
  cd "$ROOT_DIR"
  zip -qr "$PLUGIN_JAR" META-INF themes
)

rm -f "$PLUGIN_ZIP"
(
  cd "$BUILD_DIR"
  zip -qr "$PLUGIN_ZIP" "$PLUGIN_DIR_NAME"
)

echo "Created plugin ZIP: $PLUGIN_ZIP"
