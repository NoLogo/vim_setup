#run this from the top directory
git submodule init
git submodule update --init --recursive

mkdir ~/.vim
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.vimrc ~/.config/nvim/init.vim
ln -s $(pwd)/bundle ~/.vim/bundle

vim +PluginInstall +qall
