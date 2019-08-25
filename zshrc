zmodload zsh/zprof

alias mnt-lnxsrv='sshfs dharne@lnxsrv09.seas.ucla.edu:/u/cs/ugrad/dharne/ ~/Desktop/seasnet/ -o auto_cache,reconnect,defer_permissions,noappledouble,volname=lnxsrv'
alias l2='tree -L 2'
alias l3='tree -L 3'
alias l4='tree -L 4'
alias la='ls -laG'


export PATH="/usr/local/bin:$HOME/.cargo/bin:$PATH"

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


##
# Your previous /Users/ashwindharne/.bash_profile file was backed up as /Users/ashwindharne/.bash_profile.macports-saved_2019-07-02_at_21:07:31
##

# MacPorts Installer addition on 2019-07-02_at_21:07:31: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

zprof
