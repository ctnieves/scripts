#install bash on Windows 10... then run this guy
ln -s ~/Dropbox/dev ~/ # symlink development directory to home folder

# load this in .bashrc    haven't done yet
ln -s /mnt/e/Dropbox/dotfiles/.bash_profile ~/.bash_profile    # symlink bash profile/aliases

ln -s /mnt/e/Dropbox/dotfiles/vim ~/.vim                # symlink vim directory
ln -s /mnt/e/Dropbox/dotfiles/.vimrc ~/            # symlink vim configuration
ln -s /mnt/e/Dropbox/dotfiles/.tmux ~/.tmux              # symlink tmux directory
ln -s /mnt/e/Dropbox/dotfiles/.tmux.conf ~/.tmux.conf    # symlink tmux configuration

ln -s /mnt/e/Dropbox/dotfiles/.grc ~/.grc    # symlink grc configuration

ln -s /mnt/e/Dropbox/dotfiles/.gitconfig ~/.gitconfig                  # symlink git configuration/aliases
ln -s /mnt/e/Dropbox/dotfiles/.gitignore_global ~/.gitignore_global    # symlink global gitignore

apt-get install git
apt-get install tmux
apt-get install go

#generic colorizer
apt-get install grc

# setup ruby environment
apt-get install rbenv
rbenv init
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
rbenv install 2.3.1

gem install tmuxinator # (must have ran the above block for this to work)

ln -s /mnt/e/Dropbox/dotfiles/.gitconfig ~/.gitconfig                  # symlink git configuration/aliases
ln -s /mnt/e/Dropbox/dotfiles/.gitignore_global ~/.gitignore_global    # symlink global gitignore
