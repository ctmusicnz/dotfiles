#neofetch
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/chris/.oh-my-zsh"
  export EDITOR='nvim'
  export WPCLI='/usr/local/bin/wp'
  export BROWSER='/home/chris/bin/firefox'
  eval $(thefuck --alias)
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Tmuxinator
# source ~/.bin/tmuxinator.zsh

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
   fzf colored-man-pages zsh-syntax-highlighting zsh-autosuggestions
   tmux tailf history-substring-search z pure fancy-ctrl-z
   frontend-search gitfast magic-enter man alias-finder wp-cli
   z zsh-vi-mode 
 )

source $HOME/.fzf/shell/completion.zsh
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="vim ~/.zshrc"
 alias ohmyzsh="vim ~/.oh-my-zsh"
 alias python="python3"
 alias pip="pip3"
 alias ze="zshconfig"
 alias zr="source ~/.zshrc"
# alias ve="vim ~/.vimrc"
 alias ve="nvim ~/.config/nvim/init.lua"
 # alias vim="lvim"
 alias vim="nvim"
alias v="nvim"
alias agrep="alias | grep"
alias ee="espanso edit"
alias tx="tmuxinator"
alias txn="tx new"
alias txs="tx start"
alias txst="tx stop"

 # Django Aliases
 alias managepy="python manage.py"
 alias djrs="managepy runserver"
 alias djtest="managepy test"
 alias djlint="flake8 --exclude=migrations --max-line-length=120"
 alias migrations="managepy makemigrations"
 alias migrate="managepy migrate"
 alias creategroups="managepy createGroups"
 alias loaddata="managepy loaddata"
 alias venv=". venv/bin/activate"
 alias liver="managepy livereload"
 alias apacheon="sudo service nginx stop && sudo service apache2 start"
alias apacheoff="sudo service apache2 stop"


 alias wemo-on="wemo -h 192.168.1.64 --action  ON"
 alias wemo-off="wemo -h 192.168.1.64 --action  OFF"
 alias reload-browser='sh ~/.bin/reload-browser'


 # Path Aliases
 alias cd-isite="cd /hdd/Coding/Coded-Projects/isite/"
 alias cd-bizzcentral="cd /hdd/Coding/Coded-Projects/bizzcentral/"
 alias cd-localhost="cd /mnt/Storage/www/"


# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function emacs(){
        nohup emacs "$1" >/dev/null 2>&1 &
}

# Current Projects
  alias pipeline="cd /mnt/Storage/Coding/pipeline && venv"
  alias coded-site="/mnt/Storage/Coding/00_Current/coded-website-gatsby3"
  alias coded-re="/var/www/codedRealEstate/wp-content/plugins/coded-realestate-for-divi/"
  alias clients="/mnt/Storage/Coded/Clients/"
  alias test-site="cd /var/www/wp-test-site/"
  alias wpplugins="cd wp-content/plugins"
  alias divi-cpt="cd /var/www/wp-test-site/wp-content/plugins/coded-divi-cpt && code"
  alias g="git"
  alias gaa="git add all"
  alias gb="git branch"
  alias gcb="git checkout -b"
  alias gcm="git checkout master"
  alias gdca="git diff --cached"
  alias gf="git fetch"
  alias gm="git merge"
  alias gp="git push"
  alias glog="git log --oneline --decorate --graph"
  alias nz-ice="cd /var/www/nz-icescapes; nohup brave-browser http://localhost/nz-icescapes; vim ."

  alias npmg="npm install --global"
  alias npmS="npm install --save"
  alias npmD="npm install --save-dev"
  alias npmO="npm outdated"
  alias npmL="npm list"
  alias npmL0="npm list --depth=0"
  alias nrs="npm run start"
  alias npmt="npm run test"
  alias npmR="npm run"
  alias npmI="npm init"
  alias nrb="npm run build"
  alias update="sudo apt-get update && sudo apt-get upgrade"
  alias secondbrain="cd /mnt/Storage/SecondBrain"
  alias agrep="alias | grep"
  alias dotfiles="cd ~/.dotfiles"
  alias i3e="vim ~/.config/i3/config"
  alias recordmeeting="arecord -D sysdefault:CARD=C920 /mnt/Storage/Coded/Clients/newmeeting.wav"
  alias r="ranger"


# Wordpress Helpers
  alias swap-config="mv wp-config-sample.php wp-config.php"
  alias shuffle-salts="wp core shuffle-salts"
  alias update-plugins="wp plugin update --all"
  alias update-themes="wp themes update --all"
  alias scaffold-divi-child="wp scaffold child-theme Divi-Child --parent_theme=Divi"

  alias sshconfig="vim /home/chris/.ssh/config"
  alias hosts="sudo vim /etc/hosts"

  alias placeholderimage='convert -size 100x100 xc:"#AAAAAA" -gravity center -density 96 \
   -pointsize 14 -fill "#FFFFFF" -annotate +0+0 "no image" -colors 16 placeholder.jpg'
  SSH_ENV="$HOME/.ssh/agent-environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# PATH
export PATH=/home/chris/.config/composer/vendor/bin/:$PATH
export PATH=/home/chris/bin/:$PATH
export PATH=/home/chris/bin/lib/sh/:$PATH
export PATH=/home/chris/.emacs.d/bin/:$PATH
export PATH=/opt/firefox/firefox:$PATH

# bun completions
[ -s "/home/chris/.bun/_bun" ] && source "/home/chris/.bun/_bun"

# Bun
export BUN_INSTALL="/home/chris/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
