# agree to xcode terms
xcode-select --install

# install iterm
cd ~/Downloads/
curl -O "https://iterm2.com/downloads/stable/iTerm2-3_1_2.zip"
unzip iTerm2-3_1_2.zip
mv iTerm.app/ /Applications/
rm iTerm2-3_1_2.zip
spctl --add /Applications/iTerm.app/

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
