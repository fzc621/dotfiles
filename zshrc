# Locale and LANGUAGE configurations
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# zplug configuration
export ZPLUG_HOME="$HOME/.zplug"
if [[ ! -d $ZPLUG_HOME ]];then
  git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi
source $ZPLUG_HOME/init.zsh

# oh-my-zsh configuration
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# User configuration

# zplug config

## Theme
zplug "themes/robbyrussell", from:oh-my-zsh, as:theme

##oh-my-zsh plugins
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/magic-enter", from:oh-my-zsh
zplug "plugins/systemadmin", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gitignore", from:oh-my-zsh

## external plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "djui/alias-tips"

## Todo
# https://github.com/changyuheng/fz#zsh
# zplug "changyuheng/fz", defer:1
# zplug "rupa/z", use:z.sh

# https://github.com/bigH/git-fuzzy
# zplug "bigH/git-fuzzy", as:command, use:"bin/git-fuzzy"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# Plugin config
### zsh-history-substring-search
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=blue,fg=white"
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="bg=magenta,fg=white"
HISTORY_SUBSTRING_SEARCH_FUZZY=true

### zsh-autosuggest
bindkey '^B' backward-word
bindkey '^F' forward-word
bindkey '^ ' autosuggest-accept

# Settings for homebrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles

alias mkcd="function _mkcd(){ mkdir $@;cd $_ };_mkcd"
