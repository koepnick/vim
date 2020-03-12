all:
	if [[ -L "../.vimrc" ]] ; then rm ../.vimrc ; elif [[ -f "../.vimrc" ]] ; then mv ../.vimrc ../.vimrc.bak ; fi
	ln -s .vim/vimrc.vim ../.vimrc
