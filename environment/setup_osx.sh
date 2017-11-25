# necessary bottles
brew install git
brew install macvim --with-override-system-vim  # install correct version of Vim
brew install reattach-to-user-namespace # required for macOS clipboard integration with Vim
brew install tmux

#generic colorizer
brew install grc

# setup ruby environment
brew install rbenv
rbenv init
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
rbenv install 2.3.1

gem install tmuxinator # (must have ran the above block for this to work)


ln -s ~/Dropbox/dev ~/ # symlink development directory to home folder
ln -s ~/Dropbox/dotfiles/vim ~/.vim                 # symlink vim directory
ln -s ~/Dropbox/dotfiles/.vimrc ~/.vimrc            # symlink vim configuration
ln -s ~/Dropbox/dotfiles/.tmux ~/.tmux              # symlink tmux directory
ln -s ~/Dropbox/dotfiles/.tmux.conf ~/.tmux.conf    # symlink tmux configuration

ln -s ~/Dropbox/dotfiles/.grc ~/.grc    # symlink grc configuration

ln -s ~/Dropbox/dotfiles/.bash_profile ~/.bash_profile    # symlink bash profile/aliases

ln -s ~/Dropbox/dotfiles/.gitconfig ~/.gitconfig                  # symlink git configuration/aliases
ln -s ~/Dropbox/dotfiles/.gitignore_global ~/.gitignore_global    # symlink global gitignore

cp "~/Dropbox/dotfiles/fonts/Hack for Powerline.ttf" ~/Library/Fonts # copy preferred font for this user only
