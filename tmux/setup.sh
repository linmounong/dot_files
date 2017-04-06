sudo apt-get install tmux &&
  ln -s $HOME/git/dot_files/tmux.conf $HOME/.tmux.conf &&
  git clone https://github.com/tmux-plugins/tpm $HOME/tmux/plugins/tpm &&
  echo "run tmux and then ctrl+I"
