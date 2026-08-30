{config, pkgs, ...}: {
   	imports = [
	./zsh.nix
	./git.nix
	./kitty.nix
	./starship.nix
	./qs.nix
	./eza.nix
	./nvim.nix
	];
	
	nixpkgs.config.allowUnfree = true;
	fonts.fontconfig.enable = true;
	home.stateVersion = "26.05";
	home.pointerCursor = {
	    package = pkgs.adwaita-icon-theme;
	    name = "Adwaita";
	};
	

	home.packages = with pkgs; [
	    google-chrome
	    fastfetch
	    jetbrains-mono
	    nerd-fonts.jetbrains-mono
	    gcc
	    gnumake
    	    wofi
	    go
	    swaybg
	    unzip
	    nodejs
	    qt6Packages.qtdeclarative
	    nautilus
	    vscode
	];
	
	xdg.configFile."wofi".source = ./wofi;
	xdg.configFile."fastfetch".source = ./fastfetch;
	xdg.configFile."quickshell".source = ./quickshell;
	xdg.configFile."nvim".source = ./nvim;
	xdg.configFile."hypr".source = ../desktop/hypr/hypr;
}
