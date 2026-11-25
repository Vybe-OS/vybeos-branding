#!/bin/sh
install -Dm644 /usr/share/vybeos/os-release /usr/lib/os-release
install -Dm644 /usr/share/vybeos/issue /etc/issue

if [ -d /etc/sway ]; then
    printf 'include /usr/share/vybeos/sway/config\n' > /etc/sway/config
fi
