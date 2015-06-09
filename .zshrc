#
export LANG=ja_JP.UTF-8

# enable emacs keybinds
bindkey -e

# autocomplete
autoload -U compinit; compinit
zstyle ':completion:*:default' menu select=1

# autocd
setopt auto_cd

# directory stack
setopt auto_pushd
setopt pushd_ignore_dups

# history optimization
setopt hist_ignore_all_dups

# word chars
# WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# colors
autoload -Uz colors
colors

# prompt
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
