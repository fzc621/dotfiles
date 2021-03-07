# Allow local customizations in the ~/.zshrc_local_before file
if [[ -f ~/.zshrc_local_before ]]; then
    source ~/.zshrc_local_before
fi

# Locale and LANGUAGE configurations
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# zplug configuration
export ZPLUG_HOME="$HOME/.zplug"
if [[ ! -d $ZPLUG_HOME ]]; then
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

# Use alias to avoid alias tips.
MAGIC_ENTER_GIT_COMMAND="g st -u"
MAGIC_ENTER_OTHER_COMMAND="ll"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
export CONDA_HOME="$HOME/anaconda3"
if [[ -d $CONDA_HOME ]]; then
    __conda_setup="$("$CONDA_HOME/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "$CONDA_HOME/etc/profile.d/conda.sh" ]; then
            . "$CONDA_HOME/etc/profile.d/conda.sh"
        else
            export PATH="$CONDA_HOME/bin:$PATH"
        fi
    fi
    unset __conda_setup
fi

# Software mirrors when in China
if [[ -f ~/.zshrc_cn ]]; then
    source ~/.zshrc_cn
fi

# Alias
alias mkcd="function _mkcd(){ mkdir $@;cd $_ };_mkcd"

# Allow local customizations in the ~/.zshrc_local_after file
if [[ -f ~/.zshrc_local_after ]]; then
    source ~/.zshrc_local_after
fi
