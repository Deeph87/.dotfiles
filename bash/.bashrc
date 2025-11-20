#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

if [ -f ~/.bashrc_extended ]; then
    source ~/.bashrc_extended
fi

if [ $OSTYPE == "msys" ]; then
    # Configuration de l'historique
    HISTFILE=~/.bash_history
    HISTSIZE=1000
    HISTFILESIZE=2000
    HISTCONTROL=ignoredups:erasedups

    # Sauvegarde l'historique après chaque commande
    shopt -s histappend
    PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
fi