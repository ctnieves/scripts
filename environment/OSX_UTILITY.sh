#!/bin/bash

show_spinner() {
    sp='/-\|'
    while true; do
        printf '\b%.1s' "$sp"
        sp=${sp#?}${sp%???}
    done
}

hr() {
    numlines=$(tput lines)
    numcols=$(tput cols)
    numcols=$(expr $numcols - 1)
    separator_line=$(for i in $(seq 0 $numcols);do printf "%s" "-";done;printf "\n")
    tput cup $numlines
    echo $separator_line
    echo "Status"
}

clear_line() {
    numlines=$(tput lines)
    numcols=$(tput cols)
    numcols=$(expr $numcols - 1)
    blank_line=$(for i in $(seq 0 $numcols);do printf "%s" " ";done;printf "\n")
    tput cup $numlines
    echo -ne "\r$blank_line\r"
}

FAIL="x"
PASS="\xE2\x9C\x94"
status_sym=" "
status_line=" "

status() {
    status_sym=$1
    if [ $# -eq 1 ] ; then
        clear_line
    elif [ $# -eq 2 ] ; then
        status_line=$2
        echo
    fi

    echo -ne "[$1] $status_line"
}

check_install() {
    which -s $1
    [ $? -eq 0 ] ; r=$?

    local arg="${1}_installed"

    # create global var with value 0 if it exists(since it just returns the
    # programs exit status)
    IFS="" read -d "" $arg <<<"$r"
}

# $1 = package name
# $2 = arguments for brew
# $3 = altername name
brew_install_pkg() {
    pkg=$1
    name=$1
    if [ $# -gt 1 ] ; then
        pkg="$pkg $2"
    fi
    if [ $# -gt 2 ] ; then
        name=$3
    fi

    status " " "Checking for $pkg installation..."
    check_install "$name"
    var="${name}_installed"

    if [[ $var = 0 ]] ; then
        status $FAIL
        status " " "Installing $pkg..."
        brew install $pkg
    fi

    status $PASS
}

echo "*** OSX Utility ***"

# agree to xcode terms
xcode-select --install

#
# Check if Homebrew is installed
#
status " " "Checking for Homebrew installation..."
check_install "brew"
if [ $brew_installed -eq 0 ] ; then
    status $FAIL
    # Install Homebrew
    status " " "Installing Homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
    #if [ $? -ne 0 ] ; then
        #exit
    #fi
else
    status $PASS
fi

brew_install_pkg "git"
brew_install_pkg "macvim"      "--with-override-system-vim"
brew_install_pkg "reattach-to-user-namespace" "" "reattach"
brew_install_pkg "gcc"
brew_install_pkg "tmux"
brew_install_pkg "cmake"
brew_install_pkg "go"
brew_install_pkg "grc"
brew_install_pkg "dfu-programmer" "" "dfup"
brew_install_pkg "dfu-util" "" "dfuu"

sleep 5

brew_install_pkg "rbenv"
