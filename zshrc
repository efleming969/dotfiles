# general settings
# -----------------------------------------------------------------------------
#source ~/.zsh/settings.zsh

# Prompt
# -----------------------------------------------------------------------------
source ~/.zsh/prompt.zsh

# Aliases
# ----------------------------------------------------------------------------- 
alias t2='tree -L 2'
#compdef t2=tree
alias t3='tree -L 3'
#compdef t3=tree
alias tn='tree -I node_modules'
#compdef tn=tree

alias ls='ls -G -h'
alias ll='ls -l'
alias la='ll -a'

# use selection for xclip
#alias xclip='xclip -selection c'

# alias from running elm in a docker image
#alias elm='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID -p 8000:8000 codesimple/elm:0.16'
#alias jekyll='docker run -it --rm -v "$(pwd):/srv/jekyll" -p 4000:4000 jekyll/jekyll:latest jekyll serve'

#source ~/.zsh/git.zsh

# history substring search
# ----------------------------------------------------------------------------- 
#source ~/.zsh/history-search.zsh

#bindkey -M vicmd 'k' history-substring-search-up
#bindkey -M vicmd 'j' history-substring-search-down

# ls colors
# ----------------------------------------------------------------------------- 
#LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:';
#export LS_COLORS

#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Less Colors for Man Pages
# ----------------------------------------------------------------------------- 
# http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
#export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\E[0m'           # end mode
#export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\E[38;33;246m'   # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\E[0m'           # end underline
#export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# npm/nodes settings
#PACKAGES_NPM="$HOME/.npm-packages"

# ruby gems
#PACKAGES_GEM="$HOME/.gem/ruby/2.2.0"

# path settings
#export PATH="$HOME/Documents/bin:$PACKAGES_NPM/bin:$PACKAGES_GEM/bin:$PATH"

