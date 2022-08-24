#!/usr/bin/env sh

sketchybar --add item     clock right                   \
           --set clock update_freq=1                    \
		   			      icon=						\
                          icon.color=$BLACK             \
                          icon.font="Hack Nerd Font:Bold:14.0" \
                          icon.padding_left=5           \
                          icon.padding_right=5          \
                          label.color=$WHITE            \
                          label.padding_left=5          \
                          label.padding_right=5         \
                          width=100                     \
                          align=center                  \
                          script="$PLUGIN_DIR/clock.sh" \
                          background.color=0xff484848   \
                          background.height=18          \
                          background.corner_radius=2

