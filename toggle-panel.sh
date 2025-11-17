#!/bin/bash
PANEL_ID=3
HIDDEN=$(xfconf-query -c xfce4-panel -p /panels/panel-$PANEL_ID/autohide-behavior)
if [ "$HIDDEN" -eq 0 ]; then
    xfconf-query -c xfce4-panel -p /panels/panel-$PANEL_ID/autohide-behavior -s 2
else
    xfconf-query -c xfce4-panel -p /panels/panel-$PANEL_ID/autohide-behavior -s 0
fi
