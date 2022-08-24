#!/usr/bin/env sh

sketchybar --add item     calendar right                \
           --set calendar update_freq=1                 \
		   			      icon=						\
                          icon.color=$BLACK             \
                          icon.font="Hack Nerd Font:Bold:14.0" \
                          icon.padding_left=5           \
                          icon.padding_right=5          \
                          label.color=$WHITE            \
                          label.padding_left=5          \
                          label.padding_right=5         \
                          width=125                     \
                          align=center                  \
                          script="$PLUGIN_DIR/date.sh"  \
                          background.color=0xff484848   \
                          background.height=18          \
						  background.padding_left=2		\
						  background.padding_right=2	\
                          background.corner_radius=2

