git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo ". ~/.configs/bashrc" >> ~/.bashrc
rm -f ~/.tmux.conf
ln -s ~/.configs/tmux.conf ~/.tmux.conf
rm -f ~/.gitconfig
ln -s ~/.configs/gitconfig ~/.gitconfig
ln -s ~/.configs/vimrc ~/.vimrc

git config --global core.excludesfile ~/.configs/global_gitignore
