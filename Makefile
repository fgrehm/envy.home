default: dotfiles vimfiles bin/docker-machine bin/docker-compose

dotfiles:
	git clone https://github.com/fgrehm/dotfiles
	cd dotfiles && export HOME=/home/$$ENVY_USER && ./setup.sh
	cd dotfiles && export HOME=/root/$$ENVY_USER && ./setup.sh

vimfiles:
	git clone https://github.com/fgrehm/vimfiles
	cd vimfiles && export HOME=/home/$$ENVY_USER && ./setup.sh
	cd vimfiles && export HOME=/root/$$ENVY_USER && ./setup.sh

bin/docker-machine:
	curl -L https://github.com/docker/machine/releases/download/v0.3.0/docker-machine_linux-amd64 \
		> bin/docker-machine
	chmod +x bin/docker-machine

bin/docker-compose:
	curl -L https://github.com/docker/compose/releases/download/1.3.1/docker-compose-`uname -s`-`uname -m` \
		> bin/docker-compose
	chmod +x bin/docker-compose
