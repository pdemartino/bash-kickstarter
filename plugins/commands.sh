# Open vim and edit host settings
alias bk-edit-host="mkdir -p $BK_HOST_SETTINGS && $EDITOR $BK_HOST_SETTINGS"

# Open vim and edit common settigs
alias bk-edit-common="mkdir -p $BK_USER_COMMON_SETTINGS && $EDITOR $BK_USER_COMMON_SETTINGS"

# Reload settings after modification
alias bk-profile="source $HOME/.bashrc"
