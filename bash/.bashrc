#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

if [ $OSTYPE == "msys" ]
then
    alias stow='MSYS="winsymlinks:nativestrict" stow'
fi

if [ -f ~/.bashrc_extended ]; then
    source ~/.bashrc_extended
fi