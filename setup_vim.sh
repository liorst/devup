set -e
# VIM
sudo apt-get install -y vim 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# YouCompleteMe dependencies
sudo apt-get -y install cmake python-dev libxml2-dev libxslt-dev
~/.vim/bundle/YouCompleteMe/install.py 
