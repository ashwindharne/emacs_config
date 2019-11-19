export PATH=/Users/ashwindharne/bin:$PATH
source /Users/ashwindharne/.bazel/bin/bazel-complete.bash


export PATH="$HOME/.cargo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
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

