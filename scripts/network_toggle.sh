#!/bin/bash

if pgrep -x "nm-connection-editor" >/dev/null; then
    pkill -x "nm-connection-editor"
else
    nm-connection-editor &
fi
