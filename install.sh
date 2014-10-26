echo ". ~/.configs/bashrc" >> ~/.bashrc
rm ~/.tmux.conf
ln -s ~/.configs/tmux.conf ~/.tmux.conf
rm ~/.gitconfig
ln -s ~/.configs/gitconfig ~/.gitconfig
ln -s ~/.configs/vimrc ~/.vimrc
