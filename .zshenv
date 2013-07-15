# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Set virtualenv wrappers
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/Projects

# add custom scripts to path
PATH="$HOME/.myscripts:$PATH"

# RVM
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

