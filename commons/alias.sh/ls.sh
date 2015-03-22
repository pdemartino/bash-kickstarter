#  Colored ls - depending on the OS
if [[ $RUNNING_ENV == "OSX" ]]; then
   color_flag="-G"
else
   color_flag="--color"
fi

# Setting ls alias
alias ls="ls -lh $color_flag"


