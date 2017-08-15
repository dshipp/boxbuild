#@IgnoreInspection BashAddShebang

source ${HOME}/.aliases

if [ -f $HOME/.sensitive ]; then
  source ${HOME}/.sensitive
fi

# Add ~/bin to path
export PATH="$HOME/bin:$PATH"

. $HOME/bin/z.sh

# Setup bash completion (brew bash-completion2)
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi

# Setup command prompt
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Improve command history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PROMPT_THEME=Solarized
  GIT_PROMPT_END="\n\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h\[\033[m\]\$ "
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# virtualenv
export WORKON_HOME=~/virtualenvs
export PROJECT_HOME=$HOME/projects
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

source /usr/local/bin/virtualenvwrapper.sh

# Setting PATH for Python 3.5
export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# Enable Autoenv for automatic virtualenv activation (brew autoenv)
source /usr/local/opt/autoenv/activate.sh
