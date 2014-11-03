# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias ll='ls -lh'
    alias la='ls -Ah'
    alias l='ls -CF'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias dict='dict -d gcide'
alias iconv='iconv -f gbk -t utf8'
alias less='less -r'
alias logt='tail /var/log/syslog'
alias tree='tree -C'
alias trp='trash-put'
alias eclipse='/opt/adt-bundle/eclipse/eclipse &'

# Use vim keybindings
bindkey -v
bindkey -s jk '\e'
bindkey "^w" backward-kill-word    # vi-backward-kill-word
bindkey "^h" backward-delete-char  # vi-backward-delete-char
bindkey "^u" kill-line             # vi-kill-line
bindkey "^?" backward-delete-char  # vi-backward-delete-char
bindkey '^r' history-incremental-search-backward
bindkey '^p' up-history
bindkey '^n' down-history

source "/usr/share/autojump/autojump.zsh"

export PATH="$PATH:/opt/global/bin:/opt/nr-script/bin:/opt/Matlab/bin"

export ANDROID_HOME="/opt/adt-bundle/sdk"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

function erred {
  "$@" 2> >(while read line; do echo -e "\e[01;31m$line\e[0m"; done)
}
