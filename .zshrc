# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallifrey"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

 #Customize to your needs...
export MATSENWRK=/shared/silo_researcher/Matsen_F/MatsenGrp/working/zstednic
export PATH=/shared/silo_researcher/Matsen_F/MatsenGrp/working/zstednic/mothur/Mothur.source/:/home/zstednic/Genepop/:optional/bin:/mnt/orca/home/phs_grp/matsengrp/local/bin:/shared/silo_researcher/Matsen_F/MatsenGrp/working/zstednic/mothur/Mothur.source/:/home/zstednic/Genepop/:optional/bin:/mnt/orca/home/phs_grp/matsengrp/local/bin:/home/zstednic/bin:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/X11R6/bin:/usr/games:/usr/lib/mit/bin:/home/zstednic/bin:/home/zstednic/bin

export REFPKG=/shared/silo_researcher/Matsen_F/MatsenGrp/micro_refset/refset/build/targets
export MATSENGRP=/mnt/orca/home/phs_grp/matsengrp/local/bin
export LD_LIBRARY_PATH=/mnt/orca/home/phs_grp/matsengrp/local/lib

aptx () {
    java -jar /home/matsen/src/archaeopteryx/forester_dev.jar -c /home/matsen/src/archaeopteryx/_aptx_configuration_file_dev $@
}

