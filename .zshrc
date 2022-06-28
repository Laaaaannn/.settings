parse_git_branch() {
     git symbolic-ref --short HEAD 2> /dev/null
}

# export PS1='[%n %c %t %w]$ \[\033[00m\]h' $(parse_git_branch) 

setopt PROMPT_SUBST
PROMPT='%n@%{%F{10}%} %9c%{%F{11}%} ($(parse_git_branch))%{%F{none}%} $ '

alias ipconfig='curl ifconfig.me/ip '
alias ..='cd ..'
