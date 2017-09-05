export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export EDITOR="vim"

# Common PATHs
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.composer/vendor/bin:$PATH"  # getcomposer.org

# Common aliases
alias vi="vim"
alias c="clear"
alias ll="ls -al"
alias phplintall="find -L . -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l"

source ~/.zplug/init.zsh
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git", from:oh-my-zsh
zplug "lib/clipboard", from:oh-my-zsh
zplug "dracula/zsh", as:theme
zplug "zsh-users/zsh-completions"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose