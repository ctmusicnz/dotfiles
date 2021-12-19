# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/chris/.oh-my-zsh"
  export EDITOR='nvim'
  export WPCLI='/usr/local/bin/wp'
  eval $(thefuck --alias) 
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# add your plugins to this list

function plugin-compile () {
  local plugindir="${ZPLUGINDIR:-$HOME/.zsh/plugins}"
  autoload -U zrecompile
  local f
  for f in $plugindir/**/*.zsh{,-theme}; do
    zrecompile -pq "$f"
  done
}



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
#plugins=(git colored-man-pages zsh-syntax-highlighting  tmux vundle autoenv zsh-autosuggestions)
plugins=(
  colored-man-pages tmux  zsh-autosuggestions 
  history-substring-search z up tailf ansiweather pure 
  zsh-syntax-highlighting autojump fancy-ctrl-z frontend-search
  gitfast magic-enter man nvm wp-cli gh tmuxinator
)


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
#
#ansiweather -a false
#ansiweather -Fa -s true

xset r rate 500 60
# Example aliases
 alias zshconfig="vim ~/.zshrc"
 alias ohmyzsh="vim ~/.oh-my-zsh"
 alias python="python3"
# alias pip="pip3"
 alias ze="zshconfig"
 alias zr="source ~/.zshrc"
 alias ve="vim ~/.config/nvim/init.vim"
 alias vim="nvim"
 alias agrep="alias | grep"

 # Django Aliases
 alias managepy="python manage.py"
 alias djrs="managepy runserver"
 alias migrations="managepy makemigrations"
 alias migrate="managepy migrate"
 alias creategroups="managepy createGroups"
 alias loaddata="managepy loaddata"
 alias venv=". venv/bin/activate"
 alias liver="managepy livereload"
 alias apacheon="sudo service nginx stop && sudo service apache2 start"
 alias learning="vim ~/Code/Bash/learning-reminders/learning.txt"

 alias dotfiles="cd ~/.dotfiles"
 alias i3e="vim ~/.config/i3/config"
 alias hackerR="cd ~/Code/Python/hackerRank/"
 alias hr="hackerRank"

 alias sshconfig="vim /home/chris/.ssh/config"
 alias hosts="sudo vim /etc/hosts"
 alias wifi="nmtui"
 alias open="xdg-open"
 alias localsites="/home/chris/Local\ Sites"

 # Current Projects 
alias buro="cd /home/chris/Local\ Sites/buro/app/public/" 
 # Path Aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=~/.npm-global/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
PATH=$PATH:/usr/bin/compose

