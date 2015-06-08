# vim 
cp .vimrc ~
rm -rf ~/.vim # clear repo .vim folder
cp -r .vim ~

# zsh
cp .zshrc ~

# mux
cp .tmux.conf .
rm -rf ~/.tmuxinator
cp -r .tmuxinator ~
