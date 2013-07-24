##############################################################################
##
##	MAIN BASH CONFIGFILE
##  --------------------
##
##  interactive non-login bash reads this
##  because iTerm/Terminal.app and other terminal-emulators
##  always open a login-shell, this file gets sourced by .bash_profile
##
##  stuff to put in here: anything that is spezific to bash, like bash-prompt 
##
##############################################################################

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

## source .profile, because bash ignores it if ~/.bash_profile exists
if [ -f ~/.profile ]; then
   source ~/.profile
fi

## source bash_aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

## i want a beautiful prompt
if [ -f ~/.bash_prompt ]; then
   source ~/.bash_prompt
fi

# don't put duplicate lines in the history.
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# Increase the maximum number of lines contained in the ~/.bash_history
# (default is 500)
export HISTFILESIZE=10000
# Increase the maximum number of commands to remember in ~/.bash_history
# (default is 500)
export HISTSIZE=2000000
# Make some commands not show up in history
#export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

## source bashrc_osx
if [ -f ~/.bashrc_osx ]; then
    source ~/.bashrc_osx
fi
