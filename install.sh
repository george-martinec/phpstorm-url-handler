#!/bin/bash

if (( $EUID != 0 )); then
    echo "Run as root/sudo required"
    exit
fi

cp ./phpstorm-url-handler /usr/bin/phpstorm-url-handler
chmod +x /usr/bin/phpstorm-url-handler

desktop-file-install ./phpstorm-url-handler.desktop
update-desktop-database

echo "Successful"