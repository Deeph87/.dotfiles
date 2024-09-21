#!/bin/bash

for i in "1:1" "2:2" "3:3" "4:4"
do
    switch_to_workspace_shortcut="['<Super>`echo $i | grep -oE "^[^:]+"`']"    
    move_to_workspace_shortcut="['<Super><Shift>`echo $i | grep -oE "^[^:]+"`']"
    switch_to_workspace_action="switch-to-workspace-`echo $i | grep -oE "[^:]+$"`"
    move_to_workspace_action="move-to-workspace-`echo $i | grep -oE "[^:]+$"`"
    gsettings set "org.gnome.desktop.wm.keybindings" "$switch_to_workspace_action" "$switch_to_workspace_shortcut" && \
    gsettings set "org.gnome.desktop.wm.keybindings" "$move_to_workspace_action" "$move_to_workspace_shortcut"
    echo "Shortcut : $switch_to_workspace_shortcut, Action : $switch_to_workspace_action"
    echo "Shortcut : $move_to_workspace_shortcut, Action : $move_to_workspace_action"
done
