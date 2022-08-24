sketchybar --add item 		battery right		\
           --set battery 	script="$PLUGIN_DIR/battery.sh" \
           --subscribe battery system_woke				 \
           					battery.update_freq=3                   \
							battery.font="$FONT:Bold:14.0" \
	   	   					battery.icon=					
