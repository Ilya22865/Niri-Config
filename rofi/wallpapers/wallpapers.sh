#!/usr/bin/env bash

dir="$HOME/.config/rofi"
theme='style-1'

## Run
rofi \
  -dmenu \
  -theme ${dir}/${theme}.rasi
