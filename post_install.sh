#!/bin/sh

# Install the binary package
pkg add --force https://github.com/MediaBrowser/Emby.Releases/releases/download/4.6.4.0/emby-server-freebsd12_4.6.4.0_amd64.pkg

# Enable the service
sysrc -f /etc/rc.conf emby_server_enable="YES"

# Start the service
service emby-server start 2>/dev/null
