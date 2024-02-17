#!/bin/bash
source="$PWD/kitty.conf"
destination="$HOME/.config/kitty/kitty.conf"

echo "Copy \"$source\" to \"$destination\""

cp -R "$source" "$destination"
