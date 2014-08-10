## Environment variables
export LANG=ja_JP.UTF-8

# Prompt
autoload -U colors; colors
case ${UID} in
0)
    PROMPT="%{[31m%}%/%%%{[m%}
%{[31m%}[%n]$%{[m%} "
    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%B%{[34m%}${HOST%%.*} ${PROMPT}%b"
    ;;
*)
    PROMPT="%{[32m%}%/%%%{[m%}
%{[32m%}[%n]$%{[m%} "
    PROMPT2="%B%{[32m%}%_#%{[m%}%b "
    SPROMPT="%B%{[32m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%B%{[34m%}${HOST%%.*} ${PROMPT}%b"
    ;;
esac

# Terminal
#case "${TERM}" in
#kterm*|xterm)
#    precmd() {
#        echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
#    }
#    ;;
#esac

# set keybind to emacs mode
bindkey -e

# Editor
export EDITOR=vim

# Pager
export PAGER=less

# set history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end


# auto change directory
# setopt auto_cd

# auto directory pushd that you can get dirs list by cd -[tab]
 setopt auto_pushd

# command correct edition before each completion attempt
setopt correct

# compacked complete list display
setopt list_packed

# no beep sound when complete list displayed
setopt nolistbeep
setopt nobeep


# Ignore case
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


# Aliases
setopt complete_aliases # aliased ls needs if file/dir completions work

alias where="command -v"
alias j="jobs -l"

case "${OSTYPE}" in
freebsd*|darwin*)
  alias ls="ls -G -w"
  ;;
linux*)
  alias ls="ls --color"
  ;;
esac

alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"
alias du="du -h"
alias df="df -h"
alias su="su -l"
alias rm="rm -i"

## terminal configuration
unset LSCOLORS
case "${TERM}" in
xterm)
	export TERM=xterm-color
	;;
kterm)
	export TERM=kterm-color
	# set BackSpace control character
	stty erase
	;;
cons25)
	unset LANG
	export LSCOLORS=ExFxCxdxBxegedabagacad
	export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
	zstyle ':completion:*' list-colors \
	   'di=;34;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34'
   ;;
esac

# Complementation
autoload -U compinit
compinit

#autoload predict-on
#predict-on

export LSCOLORS=gxfxcxdxbxegedabagacad

