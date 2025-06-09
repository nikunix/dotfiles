{config, ...}:
let
  # Set the modifier key.
  mod = "Mod4";
in
{
  wayland.windowManager.sway = {
    # Let home-manager configure sway
    enable = true;
    package = null;
    config = {
      # Set the wallpaper.
      output."*".bg = "~/.local/wallpaper.png fill";

      # Set the gaps.
      gaps = {
        inner = 5;
        smartGaps = true;
      };

      # Disable window titlebars and set the border.
      window = {
        border = 3;
        titlebar = false;
      };
      floating = {
        titlebar = false;
        modifier = "${mod} normal";
      };

      # Set the colors to the ones set in home.
      colors.focused = {
        background = "#${config.col.bgCol}";
        border = "#${config.col.priCol}";
        childBorder = "#${config.col.priCol}";
        indicator = "#${config.col.magenta1}";
        text = "#${config.col.txtCol}";
      };

      # Set waybar as the status bar.
      bars = [
        {
          command = "waybar";
          position = "top";
        }
      ];

      # Open workspace 1 by default.
      defaultWorkspace = "workspace number 1";

      # Set screen to go idle after a certain time.
      startup = [
        {command = "workstyle";}
      ];

      # Set keybindings to follow QWERTY.
      bindkeysToCode = true;
      keybindings = {
        # Launch and kill apps.
        "${mod}+d" = "exec rofi -show drun";
        "${mod}+q" = "exec foot";
        "${mod}+w" = "exec rofi -show filebrowser";
        "${mod}+e" = "exec firefox";
        "${mod}+f" = "fullscreen toggle";
        "${mod}+r" = "mode resize";
        "${mod}+c" = "kill";
      
        "${mod}+p" = "gaps inner all plus 5px";
        "${mod}+o" = "gaps inner all minus 5px";
        "${mod}+Escape" = "exec wlogout";
	      "${mod}+Shift+r" = "reload";

        # Take screenshots.
        "Print" = "exec screenshot region";
        "Print+Shift" = "exec screenshot window";
        "Print+${mod}" = "exec screenshot output";

        # Controll system.
        "XF86AudioRaiseVolume" = "exec wpctl set-volume @DEFAULT_SINK@ 5%+";
        "XF86AudioLowerVolume" = "exec wpctl set-volume @DEFAULT_SINK@ 5%-";
        "XF86AudioMute" = "exec wpctl set-mute @DEFAULT_SINK@ toggle";
        "XF86AudioMicMute" = "exec wpctl set-mute @DEFAULT_SOURCE@ toggle";

        "XF86MonBrightnessUp" = "exec brightnessctl set 5%+";
        "XF86MonBrightnessDown" = "exec brightnessctl set 5%-";

        # Layout.
        "${mod}+a" = "floating toggle";
        "${mod}+z" = "layout toggle tabbed";
        "${mod}+s" = "splith";
        "${mod}+x" = "splitv";

        # Focus on windows.
        "${mod}+h" = "focus left";
        "${mod}+j" = "focus down";
        "${mod}+k" = "focus up";
        "${mod}+l" = "focus right";

        # Move windows.
        "${mod}+Shift+h" = "move left";
        "${mod}+Shift+j" = "move down";
        "${mod}+Shift+k" = "move up";
        "${mod}+Shift+l" = "move right";

        # Switch to workspaces.
        "${mod}+1" = "workspace number 1";
        "${mod}+2" = "workspace number 2";
        "${mod}+3" = "workspace number 3";
        "${mod}+4" = "workspace number 4";
        "${mod}+5" = "workspace number 5";
        "${mod}+6" = "workspace number 6";
        "${mod}+7" = "workspace number 7";
        "${mod}+8" = "workspace number 8";
        "${mod}+9" = "workspace number 9";
        "${mod}+0" = "workspace number 10";

        # Move to workspaces.
        "${mod}+Shift+1" = "move container to workspace number 1";
        "${mod}+Shift+2" = "move container to workspace number 2";
        "${mod}+Shift+3" = "move container to workspace number 3";
        "${mod}+Shift+4" = "move container to workspace number 4";
        "${mod}+Shift+5" = "move container to workspace number 5";
        "${mod}+Shift+6" = "move container to workspace number 6";
        "${mod}+Shift+7" = "move container to workspace number 7";
        "${mod}+Shift+8" = "move container to workspace number 8";
        "${mod}+Shift+9" = "move container to workspace number 9";
        "${mod}+Shift+0" = "move container to workspace number 10";
      };
    };
  };
}
