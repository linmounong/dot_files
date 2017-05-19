ln -s $HOME/git/dot_files/tmux/tmux.conf $HOME/.tmux.conf
mkdir -p $HOME/.tmux/plugins && git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
echo "1) if you have sudo, run:"
echo "    sudo apt-get install libevent-dev libncurses-dev"
echo "    download tmux from https://tmux.github.io/"
echo "  otherwise run ./install-tmux.sh"
echo "2) run tmux and then ctrl+I"
