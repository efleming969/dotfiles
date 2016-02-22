# ----------------------------------------------------------------------------- 
# tree aliases for quickly viewing driectories
alias t2='tree -L 2'
compdef t2=tree
alias t3='tree -L 3'
compdef t3=tree
alias tn='tree -I node_modules'
compdef tn=tree

# standard ls settings
alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -lAh'

# when pipping to xclip, default to usable selection mode
alias xclip='xclip -selection c'     

# change to the current git repo's root directory
alias cdgr='cd $(git rev-parse --show-toplevel)'
