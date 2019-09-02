# Path to your oh-my-zsh installation.
export ZSH="/Users/tobscore/.oh-my-zsh"

ZSH_THEME="oxide"

DISABLE_AUTO_TITLE="true"

# Show dirty files in VCS
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Date format in history
HIST_STAMPS="dd.mm.yyyy"

plugins=(
    docker
    zsh-z
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

source ~/.aliases
source ~/.aliases_private

source ~/.exports
