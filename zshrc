# for MacOS
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Modify the terminal prompt to show current and parent directory and active git branch, if any
setopt PROMPT_SUBST
PROMPT='%F{yellow}%2c%{%F{green}%}$(parse_git_branch)%{%F{none}%}$ '

alias vi='vim'

export CLICOLOR=1

# Colours are suitable for a dark background
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# `ls` shortcuts
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lh='ls -ltrh'

# Handy git shortcuts
alias st='git status'
alias gdiff='git diff'
alias add='git add'
alias ci='git commit'
alias co='git checkout'
alias gpush='git push'
alias br='git branch'

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
