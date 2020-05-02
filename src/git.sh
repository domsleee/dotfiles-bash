#!/bin/sh
if which hub >/dev/null 2>&1; then
	alias git='hub'
fi

alias gl='git pull --prune'
alias glg="git log --graph --decorate --oneline --all"
alias glga="glg --all"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'
alias gd='git diff'
alias gdc='gd --cached'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
complete -F _complete_alias gco
alias gb='git branch -v'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gm='git merge --no-ff'
alias gcam='git commit -a -m'
alias gs='git status -sb'
alias gpr='gp && git pr'
alias glnext='git log --oneline $(git describe --tags --abbrev=0 @^)..@'
alias gr='git reset'
alias gf='git fetch'


if which svu >/dev/null 2>&1; then
	alias gtpatch='echo `svu p`; git tag `svu p`'
	alias gtminor='echo `svu m`; git tag `svu m`'
fi

gi() {
	curl -s "https://www.gitignore.io/api/$*"
}

gcot() {
  if [[ $# != 1 ]]; then echo "usage: gcot branch"; return; fi
  git checkout --track "origin/$1"
}
