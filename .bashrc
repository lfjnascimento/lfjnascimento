# git aliases took from https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git#aliases
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign --message "--wip-- [skip ci]"'
alias gunwip='git rev-list --max-count=1 --format="%s" HEAD | grep -q "--wip--" && git reset HEAD~1'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gpf='git push --force-with-lease --force-if-includes'

# personal git aliases
alias gap='git add -p'


# Set complete path
export PATH="$HOME/.local/bin:$PATH"