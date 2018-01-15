# For some reason tmux 2.5 && 2.6 have issues with tmux currently. So we're
# going to install tmux 2.4 from an old batch in order to force compatibility.
# Clone homebrew-core to either ~/dev/clones or ~/Desktop
#       cd ~/dev/clones
#       git clone git@github.com:Homebrew/homebrew-core.git
#       cd homebrew-core
#       git log master -- Formula/tmux.rb
#       Find the version you want...(2.4)
#       brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/<COMMIT-SHA>/Formula/tmux.rb
#
# Or simply :
#       brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/04c280961f568c8fcd25aa35d58834e016ccbd64/Formula/tmux.rb
#
# And then we want to pin the version to prevent upgrades "brew pin tmux"

read -p "Have you read the comment in this file? (y/N)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # I do it for you anyway for simplicity but this is just a reminder for
    # myself in case I need to update the script
    brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/04c280961f568c8fcd25aa35d58834e016ccbd64/Formula/tmux.rb
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
    rbenv install 2.5.0
    rbenv global 2.5.0
    rbenv rehash
    gem install tmuxinator
fi
