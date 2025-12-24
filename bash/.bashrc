#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load Omarchy settings if it running on it
if [ -f ~/.local/share/omarchy/default/bash/rc ]; then
    source ~/.local/share/omarchy/default/bash/rc
fi

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
