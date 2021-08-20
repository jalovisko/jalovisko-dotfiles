#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jalovisko/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jalovisko/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jalovisko/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jalovisko/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> default python >>>
# export PATH="/usr/bin:$PATH"
# <<< default python

# Google Depot Tools
export PATH="/home/jalovisko/dev/depot_tools:$PATH"

# ---
# Lucy's Dotfiles
# https://github.com/lucyy-mc/dotfiles-new
# .bashrc
# ---

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#ps1
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;14m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;12m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;13m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
