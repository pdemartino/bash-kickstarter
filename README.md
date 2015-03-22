# BASH.RC Kickstarter
This does not aim to be a fully usable piece of code, this is just my own way to handle and share my bash configuration. Feel free to clone the full repository or to use only a single configuration you like.

## Features
The kickstarter has two main aims:
- Keep in sync the bash configuration among several machines, for this reason it differenciate between the common configuration, applied for all the nodes, and the host peculiar one.
- Configure the bash in a modular way, storing it into several file depending of their scope.

## How it works
The configuration is stored into two different directories:
- commons: contains the data shared by all the hosts; do not write your common configuration in here, this is my configuration I'm donating to you :D
- user_commons: also this data will be applied for all the hosts, but it is not versioned by git (put in it your common configuration)
- hosts: may contain hosts' specific configuration, one directory per host named with the host name.
The entry point is the kickstart script which simply first load all the common configuration and later the host specific one, by searching a folder named with the hostname inside the hosts directory. You can add as many configuration file as you need/like, since the kickstart searches for any file named with the .sh file extension. If you prefer you can also organize your configuration using subdirectories, you just need to name them using the ".sh" suffix.

## How to setup it
First of all you need to clone this repository somewhere on your hard disk, then delete (backup) your existing bash configuration (I will probably add a setup utility in the future). Then you need to create the following linking:
- $HOME/.bashrc.d -> %REPO_LOCATION%
- $HOME/.bashrc -> $HOME/.bashrc.d/kickstart
- $HOME/.bashrc_profile -> $HOME/.bashrc
(Obviously you need to reopen bash or to source the .bashrc)

## Start writing your configuration
Start creating and writing your own configuration inside the user_commons and the hosts directory. If you love VIM as I do, you can use the following commands:
- bk-edit-common: edit the common configuration
- bk-edit-host: creates and start vim to edit the configuration for the host you're logged in

Yes I know I should go deeper into this topic, but I'm simply too lazy.

## Propose new configurations
If you like the kickstarted and you would like to improve it changing its logic or simply adding new configuration files you believe should be usefull, feel free to perform a pull request.
PLEASE: only provide configuration you write by your own or specify the source where you got it.

## Configuration from other sources
I found the configuration about git and subversion (in commons/development.sh) somewhere over the Internet (maybe on github) a long time ago, so I do not remember the original source and I can't mentionate it into this README (for sure the code is under open source licence). Please mail me the authors' names and I'll be happy to mentionate them.
