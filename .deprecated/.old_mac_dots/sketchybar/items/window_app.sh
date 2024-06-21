#!/usr/bin/env sh

sketchybar --add       event        window_focus                      \
           --add       item         system.yabai left                 \
           --set       system.yabai script="$PLUGIN_DIR/yabai.sh"     \
                                    icon.font="$FONT:Hack Nerd Font:Bold:14.0"       \
                                    label.drawing=off                 \
                                    icon.width=30                     \
                                    icon=$YABAI_GRID                  \
                                    icon.color=$GREEN                 \
                                    updates=on                        \
           --subscribe system.yabai window_focus mouse.clicked        \
                                                                      \
           --add       item         front_app left                    \
           --set       front_app    script="$PLUGIN_DIR/window_app.sh" \
                                    icon.drawing=off                  \
                                    background.padding_left=0         \
                                    background.padding_right=10       \
                                    label.color=$YELLOW               \
                                    label.font="$FONT:Bold:12.0"      \
           --subscribe front_app    front_app_switched

