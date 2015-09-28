# bashrc
# TODO supress tee's output
tail -n1 ~/.bashrc | grep yinong ||
  echo -e "\nsource ~/.bashrc_yinong" | tee -a ~/.bashrc
cp bash/bashrc_yinong ~/.bashrc_yinong

# tmux
cp tmux/tmux.conf ~/.tmux.conf

# vim
cp vim/vimrc ~/.vimrc
