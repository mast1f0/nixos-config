{...}:
{
    programs.git = {
	enable = true;


	settings = {
	    user = {
	        email = "avorobev602@gmail.com";
	        name = "Alex";
	    };

	    pull = {
		rebase = true;
	    };

	    safe.directory = [
		"/etc/nixos"
	    ];
	};

	ignores = [
	    ".env"
	];
    };
}
