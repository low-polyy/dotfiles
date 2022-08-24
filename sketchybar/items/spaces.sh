#!/usr/bin/env sh

SPACE_ICONS=("" "" "" "" "")

for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space      space.$sid left                    	  \
             --set space.$sid associated_space=$sid              	  \
                              icon=${SPACE_ICONS[i]}             	  \
							  icon.color=$WHITE 					  \
							  icon.font="Hack Nerd Font:Bold:16.0" \
                              icon.padding_left=17                    \
                              icon.padding_right=17              	  \
                              icon.highlight_color=$MAGENTA       	  \
                              background.padding_left=-8        	  \
                              background.padding_right=-8        	  \
                              background.height=18              	  \
                              background.corner_radius=2         	  \
                              background.color=0xff484848        	  \
                              background.drawing=on              	  \
                              label.drawing=off                   	  \
                              click_script="$SPACE_CLICK_SCRIPT"
done

sketchybar   --add item       separator left                          \
             --set separator  icon=                                  \
                              icon.font="Hack Nerd Font:Bold:16.0" \
                              background.padding_left=26              \
                              background.padding_right=15             \
                              label.drawing=off                       \
                              icon.color=$YELLOW

