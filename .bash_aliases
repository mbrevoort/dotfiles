
# Is this a gitpod environment?
if [ -z "$GITPOD_WORKSPACE_URL"]; then
    alias gitpod='/usr/bin/gp'
fi

alias gaa='git add --all'
alias gcmsg='git commit -m'
alias gp='git push'
alias gco='git checkout'
alias gd='git diff'
alias glog='git log --oneline --decorate --graph'