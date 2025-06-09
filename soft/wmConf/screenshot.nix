{pkgs}:

pkgs.writeShellScriptBin "screenshot" ''
case $@ in
  screen)
    grim - | wl-copy
    ;;
  region)
    slurp | grim -g - - | wl-copy
    ;;
  window)
    swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"' | grim -g - - | wl-copy
    ;;
esac
if [ $(notify-send --action 'default=default' "Edit or save screenshot?") == default ]; then
  wl-paste | swappy -f -
fi
''
