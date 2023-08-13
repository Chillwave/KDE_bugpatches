#!/bin/bash

# KDE Common Bugpatches

echo "KDE Common Bugpatches (Kubuntu 22.04 / Aug 2023)"
echo "---------------------"
echo "1. Restart KDE environment - Night Shift and other UI bugs"
echo "2. Restart Bluetooth Audio stack - devices not connecting"
echo "3. Exit"
echo -n "Please choose an option [1-3]: "

read option

case $option in
    1)
        kquitapp5 plasmashell && kstart5 plasmashell > /dev/null 2>&1
        echo "KDE environment restarted."
        ;;
    2)
        systemctl --user enable pulseaudio && systemctl --user start pulseaudio
        echo "Bluetooth Audio stack restarted. Try reconnecting your device."
        ;;
    3)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid option!"
        ;;
esac
