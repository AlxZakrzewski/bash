# Terminal setup
stty -ixon
export HISTSIZE=-1
export HISTFILESIZE=30000
export EDITOR=vim

# Prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[$(tput setaf 153)\]\W\[$(tput setaf 215)\]\$(parse_git_branch)\[$(tput sgr0)\] $ "
