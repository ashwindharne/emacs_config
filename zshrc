zmodload zsh/zprof

source ~/.zsh-config/aliases.sh

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

export PATH="/usr/local/bin:$HOME/.cargo/bin:/opt/local/bin:/opt/local/sbin:$PATH"

### Added by Zplugin's installer
source '/Users/ashwindharne/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

source ~/.zsh-config/zplugin-init.zsh
alias mnt-lnxsrv='sshfs dharne@lnxsrv09.seas.ucla.edu:/u/cs/ugrad/dharne/ ~/Desktop/seasnet/ -o auto_cache,reconnect,defer_permissions,noappledouble,volname=lnxsrv'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=/usr/local/texlive/2018basic/bin/x86_64-darwin:$PATH