default: dotfiles vimfiles

dotfiles:
	git clone https://github.com/fgrehm/dotfiles
	cd dotfiles && export HOME=/home/$$ENVY_USER && ./setup.sh
	cd dotfiles && export HOME=/root/$$ENVY_USER && ./setup.sh

vimfiles:
	git clone https://github.com/fgrehm/vimfiles
	cd vimfiles && export HOME=/home/$$ENVY_USER && ./setup.sh
	cd vimfiles && export HOME=/root/$$ENVY_USER && ./setup.sh
