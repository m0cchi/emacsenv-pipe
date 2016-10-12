plugin_file="$(cd $(dirname $0); pwd)/plugins/pipe.sh"
if [ -e "EMACSENV_PLUGINS_DIR/pipe.sh" ];
  ln -s "$plugin_file" $EMACSENV_PLUGINS_DIR/pipe.sh > /dev/null
fi

. $plugin_file
