ln -s ~/git/dot_files/vim/vimrc ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/indent
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/ctrlpvim/ctrlp.vim
git clone https://github.com/junegunn/vim-easy-align
git clone https://github.com/scrooloose/nerdtree.git

cd ~/.vim/indent
wget http://www.vim.org/scripts/download_script.php?src_id=14772 -O cpp.vim

# scala https://github.com/derekwyatt/vim-scala
mkdir -p ~/.vim/{ftdetect,indent,syntax} && for d in ftdetect indent syntax ; do wget -O ~/.vim/$d/scala.vim https://raw.githubusercontent.com/derekwyatt/vim-scala/master/$d/scala.vim; done
