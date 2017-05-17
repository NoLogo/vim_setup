#run this from the top directory
git submodule init
git submodule update --init --recursive


ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/bundle ~/.vim/bundle

vim +PluginInstall +qall
