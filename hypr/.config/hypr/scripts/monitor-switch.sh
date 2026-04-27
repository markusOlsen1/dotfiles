#!/bin/bash

echo "Monitor Presets:"
echo "1) Laptop Only"
echo "2) Laptop + External (right)"
echo "3) External Only"
echo "4) External + Laptop (right)"
echo "5) Mirror"

read -p "Select preset [1-5]: " choice

case $choice in
1)
    hyprctl keyword monitor "eDP-2, 2880x1800@120, 0x0, 2"
    hyprctl keyword monitor "DP-3, disable"
    ;;
2)
    hyprctl keyword monitor "eDP-2, 2880x1800@120, 0x0, 2"
    hyprctl keyword monitor "DP-3, 3840x2160@60, 2880x0, 1.5"
    ;;
3)
    hyprctl keyword monitor "eDP-2, disable"
    hyprctl keyword monitor "DP-3, 3840x2160@60, 0x0, 1.5"
    ;;
4)
    hyprctl keyword monitor "DP-3, 3840x2160@60, 0x0, 1.5"
    hyprctl keyword monitor "eDP-2, 2880x1800@120, 3840x0, 2"
    ;;
5)
    hyprctl keyword monitor "eDP-2, 2880x1800@120, 0x0, 2"
    hyprctl keyword monitor "DP-3, 3840x2160@60, 0x0, 2, mirror, eDP-2"
    ;;
*)
    echo "Invalid option"
    ;;
esac