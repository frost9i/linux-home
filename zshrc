
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle :compinstall filename '/home/ftor/.zshrc'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

bindkey -e


eval `dircolors`
alias lsa='ls -ld .*'
alias f='find |grep'
alias reboot='sudo reboot'
alias halt='sudo halt'

#export GREP_OPTIONS='--color=auto'
#export GREP_COLOR='1;35'

#alias more='less'
#alias df='df -h'
#alias du='du -c -h'
#alias mkdir='mkdir -p -v'
#alias nano='nano -w'
#alias ping='ping -c 5'





bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[Z" reverse-menu-complete # Shift+Tab

PATH=/usr/share/perl5/site_perl/auto/share/dist/Cope:$PATH
export PATH

HISTFILE=~/.histzsh
HISTSIZE=1000
SAVEHIST=1000

autoload -U colors && colors
PROMPT='%{%F{white}%}%n%{%f%}%{%F{cyan}%}@%{%f%}%m%{%F{yellow}%}%#%{%f%} '
RPROMPT="%{%F{white}%}%~%{%f%}"

autoload -U promptinit
promptinit
autoload -U compinit
compinit

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -lA'
alias c='clear'
alias svim='sudo vim'
alias grep='grep --color=auto'
alias ..='cd ..'

alias pac='pacman'
alias spac='sudo pacman'

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

