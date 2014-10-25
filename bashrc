
function parse_git_dirty {
  git diff --no-ext-diff --quiet --exit-code &> /dev/null || echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

. $HOME/.configs/ssh_agent.sh
export EDITOR=vim
PS1="\e[33m\u@\h[\w] [\t] \e[0m\$(parse_git_branch)\n$ "
