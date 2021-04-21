" $HOME/.vimrc
"
execute pathogen#infect()
source $HOME/.vim/init/plug.vimrc      " plugin loader
source $HOME/.vim/init/general.vimrc   " general settings
source $HOME/.vim/init/leader.vimrc    " key mappings
source $HOME/.vim/init/functions.vimrc " custom functions
source $HOME/.vim/init/plugins.vimrc   " plugin specific settings
