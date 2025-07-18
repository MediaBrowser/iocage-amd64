#!/bin/sh

# Install the binary package
pkg add --force https://github.com/MediaBrowser/Emby.Releases/releases/download/4.9.0.70/emby-server-freebsd13_4.9.0.70_amd64.pkg

# Enable the service
sysrc -f /etc/rc.conf emby_server_enable="YES"

# Start the service
service emby-server start 2>/dev/null
