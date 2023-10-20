function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]]; then
        :
    else
        echo ' ('$branch')'
    fi
}

function aws_profile() {
    if [[ $AWS_PROFILE == "" ]]; then
        :
    else
        echo ' ☁️  '$AWS_PROFILE
    fi
}

alias config='/usr/bin/git --git-dir=/Users/markus/.cfg/ --work-tree=/Users/markus'
export GOPATH=~/Developer/go
export PATH="/Users/markus/Developer/go/bin:$PATH:/Users/markus/bin"
export AWS_PAGER=""

setopt prompt_subst
PROMPT='%~$(git_branch)$(aws_profile) $ '

autoload -U compinit
compinit

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

# Created by `pipx` on 2023-10-16 09:23:45
export PATH="$PATH:/Users/markus/.local/bin"
eval "$(register-python-argcomplete pipx)"

export MODULAR_HOME="/Users/markus/.modular"
export PATH="/Users/markus/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

export EDITOR="subl"
