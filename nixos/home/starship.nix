{ pkgs, ... }: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      command_timeout = 1300;
      scan_timeout = 50;
      
      format =  ''$username $directory  $git_branch $git_status $golang $python $rust $cpp 
$character'';
      
      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };
username = {
show_always = true;
};
hostname = {
ssh_only = false;
};
directory = {
truncation_length = 3;
};
git_branch = {
 symbol = " ";
};

git_status = {};

golang = {
symbol = " ";
};
python = {
symbol = " ";
};
nodejs = {
symbol = " ";
};
rust = {
symbol = "🦀 ";
};
cpp = {
symbol = " ";
};
    };
  };
}

