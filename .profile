# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Remap capslock as control
/usr/bin/setxkbmap -option 'ctrl:nocaps'

# virtualenvwrapper variables
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/Projects

# Heroku to Path
PATH="/usr/local/heroku/bin:$PATH"

# add custom scripts to path
PATH="$HOME/.myscripts:$PATH"