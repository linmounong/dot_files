sudo apt-get install vim clang-format-3.8
sduo ln -s /usr/bin/clang-format-3.8 /usr/bin/clang-format
ln -s ~/git/dot_files/vim/vimrc ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/indent
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/ctrlpvim/ctrlp.vim
git clone https://github.com/junegunn/vim-easy-align
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/rhysd/vim-clang-format
cd ~/.vim/indent
wget http://www.vim.org/scripts/download_script.php?src_id=14772 -O cpp.vim
