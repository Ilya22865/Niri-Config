#!/bin/bash

DIR="$HOME/.config/waybar"
WAYBAR_CSS="$DIR/style.css"
WAYBAR_BAK="$DIR/style.css.bak"
WAYBAR_TMP="$DIR/.waybar_swap_tmp"
EWW_DIR="$HOME/.config/eww/sysstat/"
EWW_CSS="$EWW_DIR/sysstat.scss"
EWW_BAK="$EWW_DIR/sysstat.scss.bak"
EWW_TMP="$EWW_DIR/.eww_tmp"
# Основное действие: переключение тем
if [[ -f "$WAYBAR_CSS" && -f "$WAYBAR_BAK" && -f "$EWW_CSS" && -f "$EWW_BAK" ]]; then
  mv "$WAYBAR_CSS" "$WAYBAR_TMP"
  mv "$WAYBAR_BAK" "$WAYBAR_CSS"
  mv "$WAYBAR_TMP" "$WAYBAR_BAK"

  mv "$EWW_CSS" "$EWW_TMP"
  mv "$EWW_BAK" "$EWW_CSS"
  mv "$EWW_TMP" "$EWW_BAK"

  pkill -SIGUSR2 waybar
fi
