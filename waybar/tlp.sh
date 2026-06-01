#!/bin/bash

MODE=$(tlp-stat -m)

if [[ "$MODE" == "performance/AC" ]]; then
  echo '{"text": "Performance", "class": "tlp-ac" }'
else
  echo '{"text": "Power save", "class": "tlp-bat" }'
fi
