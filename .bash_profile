# .bash_profile

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

alias ls='ls --color=auto'
LS_COLORS='di=32:fi=33:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

alias l='ls -l -GFh'

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# bash history completion to complete line

if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

# u: username, h: hostname, w: path of cwd

PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;96m\]\h'; else echo '\[\033[01;36m\]\h'; fi)\[\033[01;35m\] \w \$([[ \$? != 0 ]] && echo \"\[\033[01;35m\]:(\[\033[01;34m\] \")\\$\[\033[00m\] "

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH

#export PATH=/data/cephfs/punim0010/local/development/bin:$PATH
