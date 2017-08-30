# VIM
echo "Installing Vim"
brew install vim

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing vim plugins"
vim +PluginInstall +qall

# YouCompleteMe dependencies
echo "Installing YCM dependencies"
brew install cmake 
echo "compiling YCM"
~/.vim/bundle/YouCompleteMe/install.py 
brew install reattach-to-user-namespace
cat ./dotfiles_extensions/vimrc >> ~/.vimrc
