#run this from the top directory
git submodule init
git submodule update

mkdir ~/.vim ~/.vim/autoload

ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
ln -s $(pwd)/bundle ~/.vim/bundle

