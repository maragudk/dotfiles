function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]]; then
        :
    else
        echo ' ('$branch')'
    fi
}

alias config='/usr/bin/git --git-dir=/Users/markus/.cfg/ --work-tree=/Users/markus'
export GOPATH=~/Developer/go
export PATH="$PATH:/Users/markus/Developer/go/bin"

setopt prompt_subst
PROMPT='%~$(git_branch) '
