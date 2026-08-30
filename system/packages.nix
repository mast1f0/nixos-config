{ pkgs, ...}:
{
    services.spice-vdagentd.enable = true;
  environment.systemPackages = with pkgs; [
    git
    wget
    curl
    htop
  ];
}

