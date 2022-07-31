#!/usr/bin/env sh

if [ "$SELECTED" = "true" ]; then
  args+=(--set $NAME icon.background.y_offset=-12)
else
  args+=(--set $NAME icon.background.y_offset=-20)
fi

args+=(icon.highlight=$SELECTED)

sketchybar --animate tanh 20 "${args[@]}"
