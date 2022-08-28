sketchybar --add item battery right                      \
           --set battery script="$PLUGIN_DIR/battery.sh" \
           --set battery update_freq=3                   \
           --subscribe battery system_woke				 \
		   --set battery icon=	
