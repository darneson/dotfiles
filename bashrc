#!/bin/bash

alias emc='emacsclient -n'
alias ll='ls -lahG'
alias mkdir='mkdir -pv'
alias gitla='git log --graph --oneline --all --decorate'
alias gs='git status'
alias gb='git branch'
alias gp='git push origin master'
alias ks='tmux kill-session'
alias dfs='cd ~/dotfiles'
alias nb='cd ~/nerdbar.widget/'
alias pp='cd ~/Documents/Programming_Projects/'
alias pfizer='cd ~/Box\ Sync/Doug_Macbook_Air/Pfizer'
alias lab='cd ~/Box\ Sync/Doug_Macbook_Air/Yang_Lab'
alias dropseq='cd ~/Box\ Sync/Doug_Macbook_Air/Yang_Lab/DropSeq'
alias utricle='cd ~/Box\ Sync/Doug_Macbook_Air/Yang_Lab/Grants/Utricle_Rebuttal'
alias hoffman2='ssh darneson@hoffman2.idre.ucla.edu'
alias mergeomics='ssh darneson@mergeomics.research.idre.ucla.edu'
alias fipp='cd ~/feed-reader/'
alias ..='cd ..'
alias todo='emc ~/Box\ Sync/Doug_Macbook_Air/notes/todo.txt'
alias notes='cd ~/Box\ Sync/Doug_Macbook_Air/notes'
alias clock='tty-clock -c'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias fip='python3 -m core.fipp'

alias startwm='launchctl load -w ~/Library/LaunchAgents/com.koekeishiya.chunkwm.plist'
alias stopwm='launchctl unload -w ~/Library/LaunchAgents/com.koekeishiya.chunkwm.plist'

source ~/.git-completion.bash
source ~/.bash_git
source ~/.bash-powerline.sh

GIT_PS1_SHOWDIRTYSTATE=1

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }
