# agree to xcode terms
xcode-select --install

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install homebrew bottles
brew install git
brew install cmake
brew install go
brew install gcc

# required for keyboard reprogramming/other microcontrollers
brew install dfu-programmer
brew install dfu-util

brew doctor

# install iterm
cd ~/Downloads/
curl -O "https://iterm2.com/downloads/stable/iTerm2-3_1_2.zip"
unzip iTerm2-3_1_2.zip
mv iTerm.app/ /Applications/
rm iTerm2-3_1_2.zip
spctl --add /Applications/iTerm.app/
