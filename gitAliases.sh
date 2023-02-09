alias s='git status'
alias p='git fetch --all && git pull'
alias m='git checkout master'
alias b='git checkout '
alias bb='git checkout -b '
alias d='git branch -d '
alias dd='git branch -D '
alias ps='git push'
alias pn='git push --no-verify'
alias psn='ps && pn'
alias pssn='pss && pn'
alias mm='git merge master'
alias rb='git rebase master'
alias cmt='git commit -m '
alias amend='git commit -a --amend '
alias amt='git add . && git commit -m '
alias messedup='git reset --hard origin/master'
alias stash='git stash list'
alias save='git stash save -u '
alias pop='git stash pop'
alias apply='git stash apply'
alias drop='git stash drop'
alias update='m && p && b - && mm'
alias rebase='m && p && b - && rb'
alias clearCherry='git branch -D $(git branch | grep cherrypick-to-)'

pss() {
 git push --set-upstream origin ${vcs_info_msg_0_}
}

pnn() {
 git push --set-upstream origin ${vcs_info_msg_0_} --no-verify
}
