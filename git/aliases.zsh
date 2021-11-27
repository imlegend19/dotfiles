# Basic git aliases
alias gpull="git pull"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gpush='git push origin HEAD'

# Commit helpers
alias gadd="git add -A"
alias gc='git commit'
alias gca='git commit -a'

# Branching helpers
alias gco='git checkout'
alias gbranch='git branch'
alias gstatus='git status -sb'
