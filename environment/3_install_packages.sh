# install homebrew bottles
brew install git
brew install cmake
brew install go
brew install gcc

# required for keyboard reprogramming/other microcontrollers
brew install dfu-programmer
brew install dfu-util

brew doctor

# necessary bottles
#brew install macvim --with-override-system-vim  # install correct version of Vim
brew install vim --override-system-vi

brew install reattach-to-user-namespace # required for macOS clipboard integration with Vim
brew install tmux

#generic colorizer
brew install grc

# setup ruby environment
brew install rbenv
