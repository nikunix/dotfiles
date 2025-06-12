{pkgs, ...}:

pkgs.writeShellScriptBin "screenshot" ''
case $@ in
  screen)
    ${pkgs.grim}/bin/grim - | ${pkgs.wl-clipboard}/bin/wl-copy
    ;;
  region)
    ${pkgs.slurp}/bin/slurp | ${pkgs.grim}/bin/grim -g - - | ${pkgs.wl-clipboard}/bin/wl-copy
    ;;
  window)
    swaymsg -t get_tree | ${pkgs.jq}/bin/jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"' | ${pkgs.grim}/bin/grim -g - - | ${pkgs.wl-clipboard}/bin/wl-copy
    ;;
esac
if [ $(${pkgs.libnotif}/bin/notify-send --action 'default=default' "Edit or save screenshot?") == default ]; then
  ${pkgs.wl-clipboard}/bin/wl-paste | swappy -f -
fi
''
