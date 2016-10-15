plugin_file="plugins/pipe.sh"

if [ ! -e "EMACSENV_PLUGINS_DIR/pipe.sh" ]; then
  # automapping
  ln -s "$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/$plugin_file" $EMACSENV_PLUGINS_DIR/pipe.sh > /dev/null
fi

echo $plugin_file
