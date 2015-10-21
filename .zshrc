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
    alias l='ls ' #-CF'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Use vim keybindings
bindkey -v
bindkey -s '^k' '_'
bindkey "^w" backward-kill-word    # vi-backward-kill-word
bindkey "^h" backward-delete-char  # vi-backward-delete-char
bindkey "^u" kill-line             # vi-kill-line
bindkey "^?" backward-delete-char  # vi-backward-delete-char
bindkey '^r' history-incremental-search-backward
bindkey '^p' up-history
bindkey '^n' down-history

source "/usr/share/autojump/autojump.zsh"

function erred {
  "$@" 2> >(while read line; do echo -e "\e[01;31m$line\e[0m"; done)
}

alias dict='dict -d gcide'
alias eclipse='/opt/adt-bundle/eclipse/eclipse &'
alias ev='evince'
alias gdb='gdb -q'
alias iconv='iconv -f gbk -t utf8'
alias less='less -r'
alias logt='tail /var/log/syslog'
alias pe='ps -e'
alias tree='tree -C'
alias trp='trash-put'
alias uname='uname -r'
alias tmux='tmux -2'

ECLIPSE_PATH='/opt/eclipse';
if [ -e "$ECLIPSE_PATH" ]; then
	alias eclipse="$ECLIPSE_PATH/eclipse";
fi

if [ -e ~/.zsh_localrc ]; then
	. ~/.zsh_localrc
fi

if [ -e '/opt/nr-script' ]; then
	PATH="$PATH:/opt/nr-script/bin";
	export PATH;
fi

if [ -e '/opt/global' ]; then
	PATH="$PATH:/opt/global/bin";
	export PATH;
fi

if [ -e '/opt/Matlab' ]; then
	PATH="$PATH:/opt/Matlab/bin";
	export PATH;
fi

TEXDIR='/opt/texlive';
if [ -e "$TEXDIR" ]; then
	PATH="$PATH:$TEXDIR/bin/x86_64-linux";
	export PATH;

	INFOPATH="$INFOPATH:$TEXDIR/texmf-dist/doc/info";
	MANPATH="$MANPATH:$TEXDIR/texmf-dist/doc/man";
	export INFOPATH MANPATH;
fi

CUDA_PATH='/usr/local/cuda';
if [ -e "$CUDA_PATH" ]; then
	PATH="$PATH:$CUDA_PATH/bin";
	export PATH;

	LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$CUDA_PATH/lib64";
	export LD_LIBRARY_PATH;
fi

if [ "$CUDNN_PATH" ] && [ -e "$CUDNN_PATH" ]; then
	CPATH="$CPATH:$CUDNN_PATH";
	export CPATH;

	LIBRARY_PATH="$LIBRARY_PATH:$CUDNN_PATH";
	export LIBRARY_PATH;

	LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$CUDNN_PATH";
	export LD_LIBRARY_PATH;
fi

if [ ! "$JDK7_PATH" ]; then
	JDK7_PATH='/usr/lib/jvm/java-7-openjdk-amd64';
fi

if [ -e "$JDK7_PATH" ]; then
	PATH="$PATH:$JDK7_PATH/bin";
	export PATH;

	JAVA_HOME="$JDK7_PATH";
	export JAVA_HOME;
fi

if [ ! "$HADOOP_PATH" ]; then
	HADOOP_PATH='/opt/hadoop';
fi

if [ -e "$HADOOP_PATH" ]; then
	PATH="$PATH:$HADOOP_PATH/bin";
	export PATH;

	HADOOP_CLASSPATH="$JAVA_HOME/lib/tools.jar";
	export HADOOP_CLASSPATH;

	CLASSPATH="$CLASSPATH:`hadoop classpath`";
	export CLASSPATH;

	#ANT_CLASSPATH="$ANT_CLASSPATH:$CLASSPATH:$HADOOP_CLASSPATH";
	#export ANT_CLASSPATH;
fi

if [ ! "$ANACONDA_PATH" ]; then
	ANACONDA_PATH='/opt/anaconda';
fi

if [ -e "$ANACONDA_PATH" ]; then
	PATH="$ANACONDA_PATH/bin:$PATH";
	export PATH;
fi
