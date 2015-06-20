# Originally from https://gist.github.com/mplacona/5286861/raw/bootstrap.sh
########## Variables

dir=~/boggs-dotfiles                    # dotfiles directory
olddir=~/boggs-dotfiles_old             # old dotfiles backup directory
files=".zshrc .vimrc .vim .tmuxinator .tmux.conf .fonts .oh-my-zsh .tmux-powerlinerc .i3"        # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file ~/boggs-dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done
