# Detect the running operating system 
# and export it into the RUNNING_ENV variable
#
# Known OSs:
# - OSX
# - LINUX
# - WINDOWS
# or unknown

# OS DETECT
RUNNING_ENV="unknown"
if [[ "$(uname)" == "Darwin" ]]; then
   RUNNING_ENV="OSX"
elif [[ "$(expr substr $(uname -s) 1 5)"="Linux" ]]; then
   RUNNING_ENV="LINUX"
elif [[ "$(expr substr $(uname -s) 1 10)"="MINGW32_NT" ]]; then
   RUNNING_ENV="WINDOWS"
fi
export RUNNING_ENV


