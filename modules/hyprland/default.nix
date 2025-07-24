{ pkgs, config, inputs, ... }:
{

#  hyprland = {
#    enable = true;
#    xwayland.enable = true;
#  };
    wayland.windowManager.hyprland = {
        enable = true;
        package = pkgs.hyprland;
#        xwayland.enable = true;
#        systemd.enable = true;
    };
}
