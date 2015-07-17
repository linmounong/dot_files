# bashrc
# TODO supress tee's output
tail -n1 ~/.bashrc | grep yinong ||
  echo -e "\nsource ~/.bashrc_yinong" | tee -a ~/.bashrc
cp bash/bashrc_yinong ~/.bashrc_yinong

# xinput (mouse accel and key remapping)
# TODO supress tee's output
tail -n1 ~/.xinputrc | grep yinong ||
  echo -e "\nsource ~/.xinputrc_yinong" | tee -a ~/.xinputrc
cp xinput/xinputrc_yinong ~/.xinputrc_yinong

# tmux
cp tmux/tmux.conf ~/.tmux.conf

# vim
cp vim/vimrc ~/.vimrc
