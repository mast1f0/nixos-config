{...}:
{
  services.xserver = {
    enable = true;
  };
  services.displayManager.gdm.enable = true;
  services.displayManager.defaultSession = "hyprland";
  services.libinput.enable = true;
}
