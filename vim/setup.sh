# clang-format
sudo apt-get install vim clang-format-3.8
sudo ln -s /usr/bin/clang-format-3.8 /usr/bin/clang-format
ln -s ~/git/dot_files/vim/clang-format ~/.clang-format

# js-beautify
sudo npm install -g js-beautify
ln -s ~/git/dot_files/vim/jsbeautifyrc ~/.jsbeautifyrc

ln -s ~/git/dot_files/vim/vimrc ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/indent
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/ctrlpvim/ctrlp.vim
git clone https://github.com/junegunn/vim-easy-align
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/google/vim-maktaba.git  # used by codefmt
git clone https://github.com/google/vim-glaive.git  # used by codefmt
git clone https://github.com/google/vim-codefmt.git
git clone https://github.com/fatih/vim-go.git
echo "run in vim :GoInstallBinaries"

cd ~/.vim/indent
wget http://www.vim.org/scripts/download_script.php?src_id=14772 -O cpp.vim

# yapf
pip install yapf==0.16.2
ln -s ~/git/dot_files/vim/style.yapf ~/.style.yapf
