{...}:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./system/packages.nix
      ./desktop/hypr/hypr.nix
      ./system/services.nix
      ./system/boot.nix
      ./system/users.nix
      ./system/networking.nix
      <home-manager/nixos>
    ];
  
  home-manager.users.mast1f0 = import ./home/common.nix;

  time.timeZone = "Europe/Moscow";

programs.mtr.enable = true;

   programs.gnupg.agent = {
     enable = true;
     enableSSHSupport = true;
   };
  system.stateVersion = "26.05";
}

