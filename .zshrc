ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/dre/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="cloud"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# START aliases

# Misc
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias hostfile="sudo vim /etc/hosts"
alias server="php -S localhost:8888"
alias publickey="pbcopy < ~/.ssh/id_rsa.pub"

# Laravel
alias a="php artisan"
alias tinker="php artisan tinker"
alias mfs="php artisan migrate:fresh --seed"
alias phpunit="vendor/bin/phpunit"
alias pest="vendor/bin/pest"
alias vapor="vendor/bin/vapor"

# Git
alias nah="git reset --hard && git clean -df"
alias gs="git status"
alias ga="git add -A"
alias gc="git commit"
alias gp="git push origin master"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Composer
alias cda="composer dump-autoload"
alias cu="composer update"

# Filesystem
alias o="open ."
alias s="sublime ."
alias c="code ."

# END Aliases

# Paths
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"

# fnm
eval "$(fnm env)"
