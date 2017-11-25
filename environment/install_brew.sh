#
# Check if Homebrew is installed
#
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
else
    brew update
fi

