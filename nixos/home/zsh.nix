{...}:
{
    programs.zsh = {
    	enable = true;
	enableCompletion = true;
	autosuggestion.enable = true;
	syntaxHighlighting.enable = true;

	history.size = 1000;
	shellAliases = {
		la = "ls -a";
		ga = "git add";
		ls = "eza";
	};
    };
}
