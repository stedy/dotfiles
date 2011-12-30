# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true
umask 0007

alias sshp='/usr/bin/ssh -o PreferredAuthentications=password'

#PYTHONPATH = "${PYTHONPATH}:~/usr/lib64/python2.4/site-packages/"
#export PYTHONPATH

export WHISP_BUILD_DIR=$HOME/whisp-build
export PYTHONPATH=$HOME/lib/python2.6/site-packages:$HOME/lib64/python2.6/site-packages
#export PYTHONPATH=/usr/local/lib/python2.7/Bio/__init__.pyc
export MATSENGRP=/mnt/orca/home/phs_grp/matsengrp/local
export MATSENWRK=/shared/silo_researcher/Matsen_F/MatsenGrp/working/zstednic/

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64/R/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/lib
export LD_LIBRARY_PATH=/home/matsengrp/local/lib/:$LD_LIBRARY_PATH

#export PATH=/home/zstednic/Genepop:$PATH
export PATH=/mnt/orca/home/phs_grp/matsengrp/local/bin:$PATH

r () {
        if [[ -n $TMUX ]]
        then
                NEW_SSH_AUTH_SOCK=`tmux showenv|grep "^SSH_AUTH_SOCK"|cut -d = -f 2` 
                if [[ -n $NEW_SSH_AUTH_SOCK ]] && [[ -S $NEW_SSH_AUTH_SOCK ]]
                then
                        echo "New auth sock: $NEW_SSH_AUTH_SOCK"
                        SSH_AUTH_SOCK=$NEW_SSH_AUTH_SOCK 
                fi
                NEW_DISPLAY=`tmux showenv|grep "^DISPLAY"|cut -d = -f 2` 
                if [[ -n $NEW_DISPLAY ]]
                then
                        echo "New display: $NEW_DISPLAY"
                        DISPLAY=$NEW_DISPLAY 
                fi
	fi
}
