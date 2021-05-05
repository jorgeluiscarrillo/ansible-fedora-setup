#!/usr/bin/sh
# Workaround for https://bugzilla.redhat.com/show_bug.cgi?id=1622259
_address="$(systemctl --user show-environment | grep -E '^DBUS_SESSION_BUS_ADDRESS=')"
if [ $? -eq 0 ]; then
    export "$_address"
fi
