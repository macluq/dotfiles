echo -e "Loading configuration file ~/.zshrc"

export EDITOR="/usr/local/bin/vim"
export ZSH=~/.oh-my-zsh
export PATH="$DROPBOX_HOME/dev/util/scripts/tmux:$DROPBOX_HOME/dev/bin:/usr/local/sbin:/usr/local/bin:~/go/bin:$HOME/.local/bin:$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export JAVA_HOME=$(/usr/libexec/java_home)
export WS=$DROPBOX_HOME/dev/ws
export DWS=~/dpg/dws

plugins=(git brew aws bundler chucknorris common-aliases dircycle dirhistory docker encode64 httpie history jira lol mvn node npm osx redis-cli rand-quote sbt scala sudo ssh-agent terraform tmux urltools vagrant vi-mode)
ZSH_THEME="random"

source ~/.zsh_private
source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases

alias git='LANG=en_GB git'

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

chuck | cowsay | lolcat
cal
dws

