[alias]
	co = checkout
	br = branch
	ci = commit
	st = status
	graph = log --oneline --graph --decorate --all
	branches = branch -v
	tags = tag
	stashes = stash list
	discard = checkout --
	uncommit = reset --mixed HEAD~
	remotes = remote -v
	agc = gc --aggressive --prune=all
	lg = log --color --graph --pretty=format\"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\" --abbrev-commit
	up = "!git remote update -p; git merge --ff-only @{u}; git submodule update --init --recursive"
