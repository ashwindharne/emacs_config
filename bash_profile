alias l2='tree -L 2'
alias l3='tree -L 3'
alias l4='tree -L 4'
alias la='ls -laG'
export PATH="$HOME/.cargo/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ashwindharne/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ashwindharne/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ashwindharne/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ashwindharne/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

